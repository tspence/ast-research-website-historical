<%

'******************************************************************************
'*
'* Define global variables
'*
'******************************************************************************
dim newline, tab
dim MailObject, WebsterObject


newline = chr(13) + chr(10)
tab = chr(9)
Server.ScriptTimeout=600


'******************************************************************************
'*
'* Turn a string into a proper (first uppercase, rest lowercase) string
'*
'******************************************************************************
function Proper(byval line)
  dim i, result, instring
  result = ""
  
  if IsNull(line) or IsEmpty(line) then
    Proper = ""
  else
    for i = 1 to len(line)

      '****************** Special cases: McName and deName
      if instring = 0 and ucase(mid(line,i,2)) = "MC" then
        result = result + "Mc"
        instring = 0
        i = i + 2
      end if
      
      '****************** Go back to normal string processing
      if instring = 1 then
        result = result + lcase(mid(line,i,1))
      else
        result = result + ucase(mid(line,i,1))
      end if
      
      if instr("ABCDEFGHIJKLMNOPQRSTUVWXYZ",ucase(mid(line,i,1))) > 0 then
        instring = 1
      else
        instring = 0
      end if
    next
    Proper = result
  end if
end function


'******************************************************************************
'*
'* Safely typecast any variable to a string, without dropping the line
'*
'******************************************************************************
function nstr(byval a)
  if IsNull(a) or IsEmpty(a) then
    nstr = ""
  else
    nstr = cstr(a)
  end if
end function


'******************************************************************************
'*
'* Extend a string to a specific length, right-aligning it
'*
'******************************************************************************
function PadLeft(byval str, byval size)
  dim temp

  if isnull(str) then
    padleft = string(size," ")
  else
    temp = Left(cstr(str),size)
    if len(temp) < size then
      temp = String(size - len(temp)," ") + temp
    end if
    padleft = temp
  end if
end function


'******************************************************************************
'*
'* Extend a string to a specific length preceding it with zeroes
'*
'******************************************************************************
function PadZero(byval str, byval size)
  dim temp

  if isnull(str) then
    pad = string(size,"0")
  else
    temp = Left(cstr(str),size)
    if len(temp) < size then
      temp = String(size - len(temp),"0") + temp
    end if
    padzero = temp
  end if
end function


'******************************************************************************
'*
'* Extend a string to a specific length, chopping it if necessary
'*
'******************************************************************************
function Pad(byval str, byval size)
  dim temp

  if isnull(str) then
    pad = string(size," ")
  else
    temp = Left(cstr(str),size)
    if len(temp) < size then
      temp = temp + String(size - len(temp)," ")
    end if
    pad = temp
  end if
end function


'******************************************************************************
'*
'* Print a line of text
'*
'******************************************************************************
function Print(byval line)
  Response.Write(nstr(line) + newline)
end function


'******************************************************************************
'*
'* Build a new DB connection object.
'*
'******************************************************************************
function NewConnection
  dim conn
  
  set conn = Server.CreateObject("ADODB.Connection")
  conn.Open "Interchange","wwwuser","***REDACTED***"
  set NewConnection = conn
end function


'******************************************************************************
'*
'* Build a new Blender DB Connection Object
'*
'******************************************************************************
function NewBlender
  dim conn
  
  set conn = Server.CreateObject("ADODB.Connection")
  conn.Open "Oxygen","sa","***REDACTED***"
  set NewBlender = conn
end function


'******************************************************************************
'*
'* Build a new Corporate Accounts connection object.
'*
'******************************************************************************
function NewCAM
  dim conn
  
  set conn = Server.CreateObject("ADODB.Connection")
  conn.Open "CAM","wwwuser","***REDACTED***"
  set NewCAM = conn
end function


'******************************************************************************
'*
'* Build a new Data Warehouse connection object.
'*
'******************************************************************************
function NewPriceConn
  dim conn
  
  set conn = Server.CreateObject("ADODB.Connection")
  conn.Open "dw1","wwwuser","***REDACTED***"
  set NewPriceConn = conn
end function


'******************************************************************************
'*
'* Build a new DB connection object to Webster.
'*
'******************************************************************************
function NewWebster
  dim conn
  
  set conn = Server.CreateObject("ADODB.Connection")
  conn.Open "Webster","sa","***REDACTED***"
  set NewWebster = conn
end function


'******************************************************************************
'*
'* Make a string sequel-safe
'*
'******************************************************************************
function SQL(byval string)
  SQL = "'" + Replace(nstr(string),"'","''") + "'"
end function


'******************************************************************************
'*
'* Make a string sequel-safe
'*
'******************************************************************************
function SQLHTML(byval string)
  SQLHTML = "'" + Replace(Replace(nstr(string),"'","''"),newline,"<BR>") + "'"
end function


'******************************************************************************
'*
'* Make a string sequel-safe
'*
'******************************************************************************
function unhtml(byval string)
  unhtml = Replace(nstr(string),"<BR>",newline)
end function


'******************************************************************************
'*
'* Turn a normal piece of text into HTML lines/paragraphs
'*
'******************************************************************************
function SpacesToBR(byval string)
  SpacesToBR = Replace(nstr(string),newline,"<BR>")
end function


'******************************************************************************
'*
'* Verify that the user has AST administrative privileges
'*
'******************************************************************************
function VerifyAdmin(byval acl)
  dim conn, rs
  
  '*********** If they've already timed out
  if session("key") = "AST Login Verified" then

    '*********** Cache their administrative privileges if necessary
    if session("verifyadmin") <> 1 then
      set conn = NewWebster()
      
      set rs = conn.Execute("sp_Ted_List_Workgroups " + sql(session("acl_badge_num")))
      do while not rs.EOF
        session(rs("workgroup_desc")) = 1
        rs.MoveNext
      loop
      rs.Close
      conn.Close
      
      session("verifyadmin") = 1
    end if
    
    '*********** Read their cached privileges
    VerifyAdmin = session(acl)

  else
    VerifyAdmin = -1
    exit function
  end if
  
end function


'******************************************************************************
'*
'* This performs the work of sending an email
'*
'******************************************************************************
function SendMail(byval email, byval from, byval subject, byval text, byval requester, byval badge)
  dim bad

  '************* Create a connection to the mail tracking database
  if IsEmpty(MailObject) then
    set MailObject = Server.CreateObject("MS.clsWebMail")
  end if

  '************* Check to see if this is a valid message
  bad = 0
  if len(trim(nstr(from))) = 0 or instr(from," ") > 0 then
    bad = 1
  end if
  if len(trim(nstr(email))) = 0 or instr(email," ") > 0 then
    bad = 2
  end if
  if len(trim(nstr(subject))) = 0 then
    bad = 3
  end if
  if len(trim(nstr(text))) < 1 then
    bad = 4
  end if
  if IsNull(text) then
    bad = 5
  end if
  
  '************* Only send this message if it's good
  if bad = 0 then
    MailObject.SMTP "165.164.128.2", nstr(email), "", nstr(from), nstr(subject), "WebMail", nstr(text)  
  else
''    select case bad
''      case 1
''        Response.Write("<B>Bad source email address!</B><BR> (" + nstr(email) + "," + nstr(from) + "," + nstr(subject) + ")<BR><BR>")
''      case 2
''        Response.Write("<B>Bad destination email address!</B><BR> (" + nstr(email) + "," + nstr(from) + "," + nstr(subject) + ")<BR><BR>")
''      case 3
''        Response.Write("<B>Bad subject (blank subject)!</B><BR> (" + nstr(email) + "," + nstr(from) + "," + nstr(subject) + ")<BR><BR>")
''      case 4
''        Response.Write("<B>Bad text (blank text)!</B><BR> (" + nstr(email) + "," + nstr(from) + "," + nstr(subject) + ")" + nstr(text) + "<BR><BR>")
''      case 5
''        Response.Write("<B>Bad text (null text)!</B><BR> (" + nstr(email) + "," + nstr(from) + "," + nstr(subject) + ")<BR><BR>")
''    end select
  end if
  
end function


'******************************************************************************
'*
'* This is the generic select box function
'*
'******************************************************************************
function SelectBox(byval title, byval sqlcmd, byval choice)
  dim conn
  dim rs
  
  Print("<SELECT NAME=" + title + ">")
  
  set conn = NewConnection()
  set rs = conn.Execute(sqlcmd)
  do while not rs.EOF
  
    Response.Write("  <OPTION VALUE=" + cstr(rs("id")))
    if rs("id") = choice then
      Response.Write(" SELECTED")
    end if
    Response.Write("> " + rs("name") + newline)
    
    rs.MoveNext
  loop
  rs.Close
  conn.Close
  
  Print("</SELECT>")
end function


'******************************************************************************
'*
'* This is the generic select box function
'*
'******************************************************************************
function GetName(byval badge)
  dim rs
  
  if IsEmpty(WebsterObject) then
    set WebsterObject = NewWebster()
  end if
  set rs = WebsterObject.Execute("SELECT * FROM acl WHERE acl_badge_num=" + sql(badge))
  if rs.EOF then
    GetName = ""
  else
    GetName = Proper(rs("acl_first_name")) + " " + Proper(rs("acl_last_name"))
  end if
  rs.Close
end function

%>