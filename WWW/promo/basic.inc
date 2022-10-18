<%

'******************************************************************************
'*
'* Define global variables
'*
'******************************************************************************
dim newline, tab
newline = chr(13) + chr(10)
tab = chr(9)
Server.ScriptTimeout=600


'******************************************************************************
'*
'* Turn a string into a proper (first uppercase, rest lowercase) string
'*
'******************************************************************************
function Proper(byval line)
  if IsNull(line) or IsEmpty(line) then
    Proper = ""
  else
    Proper = ucase(left(line,1)) + lcase(mid(line,2,len(line)))
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
'* Extend a string to a specific length, chopping it if necessary
'*
'******************************************************************************
function Pad(byval str, byval size)
  dim temp

  if str = null then
    pad = string(size," ")
    exit function
  end if
    
  temp = Left(str,size)
  if len(temp) < size then
    temp = temp + String(size - len(temp)," ")
  end if
  pad = temp
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
'* Build a new Pricing Spreadsheet connection object.
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
  SQLHTML = "'" + Replace(Replace(string,"'","''"),newline,"<BR>") + "'"
end function


'******************************************************************************
'*
'* Make a string sequel-safe
'*
'******************************************************************************
function unhtml(byval string)
  unhtml = Replace(string,"<BR>",newline)
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


%>