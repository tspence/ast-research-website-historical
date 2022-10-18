<!--#include file="../../../ovation.inc"--> 
<%

'******************************************************************************
'*
'* This sends an notice to an Ovation! reseller of a new account.
'*
'******************************************************************************
function SendAccount(byval email, byval username, byval password)
  dim text

  '*********** Write the text of the message
  text = text + "Congratulations! You have been authorized for AST's Ovation! " + newline
  text = text + "Program.  As an AST Ovation! Reseller you have access to a wide " + newline
  text = text + "range of business development and training tools designed to " + newline
  text = text + "increase your sales." + newline + newline

  text = text + "Communication is the most important aspect of a strong " + newline
  text = text + "relationship.  AST has developed a web site exclusively for " + newline
  text = text + "Ovation! resellers that will keep you up to date on " + newline
  text = text + "everything from AST.  " + newline + newline

  text = text + "The site is available at http://www.ast.com/resellers/log_in/" + newline + newline

  text = text + "Your web site account is:" + newline + newline

  text = text + "  USERNAME:  " + username + newline
  text = text + "  PASSWORD:  " + password + newline + newline

  text = text + "We are excited about working with you through the Ovation! Program. " + newline
  text = text + "We know that the only way AST can be successful is if you are " + newline
  text = text + "successful.  We look forward to a long and mutually beneficial " + newline
  text = text + "relationship." + newline + newline

  text = text + "--AST Ovation! Team" + newline
  text = text + "ovation@ast.com" + newline
  text = text + "http://www.ast.com/resellers/"

  '*********** Send the message
  call SendMail(email, "ovation@ast.com", "AST Ovation! Account", text, 4, "")
end function


function PrintEmail(byval desc, byval email, byval contid)
  set rs = conn.Execute("sp_Create_WWW_User " + nstr(contid))
%>
    <H3><I><%=desc%></I></H3>
    <DD><TABLE>
      <TR>
        <TD ALIGN=right><B>Username:</B></TD>
        <TD>&nbsp;&nbsp;</TD>
        <TD><FONT FACE="Courier"><%=rs("username")%></FONT></TD>
      </TR>
      <TR>
        <TD ALIGN=right><B>Password:</B></TD>
        <TD>&nbsp;&nbsp;</TD>
        <TD><FONT FACE="Courier"><%=rs("password")%></FONT></TD>
      </TR>
    </TABLE>
<%
  call SendAccount(email, rs("username"), rs("password"))
  rs.Close
end function

%>

<HTML>
  <HEAD>
    <TITLE>Reseller Registration Acknowledgement Page</TITLE>
  </HEAD>

  <BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">
  
    <TABLE WIDTH=570><TR><TD>
    <BR>
    <BR>
    <BR>
    <BR>
    <CENTER>
      <H1>Reseller Registration Acknowledgement</H1>
      <H4>United States only</H4>
    </CENTER>

    Thank you for completing the AST Reseller Registration form.  Your 
    information has been added to our database to allow us to keep you informed 
    on AST information.<P>
     
<%

'*************** Automatically bronzify this dude if he doesn't meet the criteria
if cstr(Request("country")) <> "174" then
  ovation = "41"
elseif Request("REG-12") = "1" or Request("REG-10") = "1" or Request("REG-13") = "1" or Request("REG-15") = "1" then
  ovation = "39"
else
  ovation = "11"
end if

set conn = NewConnection()

if ovation <> "41" then
	line = "sp_Add_Reseller " + sql(Request("coname")) + ","
	line = line + sql(Request("dba")) + ","
	line = line + sql(Request("taxidno")) + ","
	line = line + sql(Request("addr1")) + ","
	line = line + sql(Request("city")) + ","
	line = line + Request("state_region_id") + ","
	line = line + sql(Request("postal_code")) + ","
	line = line + Request("country") + ","
	line = line + sql(Request("phone")) + ","
	line = line + sql(Request("fax")) + ","
	line = line + sql(Request("web_page")) + ","
	line = line + ovation
else
	line = "sp_Add_Reseller_Int " + sql(Request("coname")) + ","
	line = line + sql(Request("dba")) + ","
	line = line + sql(Request("taxidno")) + ","
	line = line + sql(Request("addr1")) + ","
	line = line + sql(Request("city")) + ","
	line = line + sql(Request("state")) + ","
	line = line + sql(Request("postal_code")) + ","
	line = line + Request("country") + ","
	line = line + sql(Request("phone")) + ","
	line = line + sql(Request("fax")) + ","
	line = line + sql(Request("web_page")) + ","
	line = line + ovation
end if
set rs = conn.Execute(line)
coid = cstr(rs("company_id"))
locid = cstr(rs("location_id"))
rs.Close

call SendPage("REG")

%>


    We'd like to invite you to use <A HREF="../log_in/main.html" TARGET="body">the Ovation reseller site</A>,
    available by clicking Log In under the resellers menu.  Use your personalized username and password 
    at the main login screen.<P>
     
<%

'*************** Add the main contact no matter what
line = "sp_Add_Contact " + locid + ",NULL," + sql(Request("main_first")) 
line = line + ",NULL," + sql(Request("main_last")) + "," + sql(Request("main_title"))
line = line + ",NULL,NULL," + sql(Request("main_email")) + ",'Y','Y',1"
set rs = conn.Execute(line)

if ovation <> "41" then
	call PrintEmail("Main Contact",Request("main_email"),rs("contact_id"))
end if

'*************** If the executive contact exists, add him
if len(Request("exec_first")) > 0 then
  line = "sp_Add_Contact " + locid + ",NULL," + sql(Request("exec_first")) 
  line = line + ",NULL," + sql(Request("exec_last")) + "," + sql(Request("exec_title"))
  line = line + ",NULL,NULL," + sql(Request("exec_email")) + ",'Y','Y',5"
  set rs = conn.Execute(line)
  if ovation <> "41" then
	call PrintEmail("Executive Contact",Request("exec_email"),rs("contact_id"))
  end if
end if

'*************** If the sales contact exists, add him
if len(Request("sales_first")) > 0 then
  line = "sp_Add_Contact " + locid + ",NULL," + sql(Request("sales_first")) 
  line = line + ",NULL," + sql(Request("sales_last")) + "," + sql(Request("sales_title"))
  line = line + ",NULL,NULL," + sql(Request("sales_email")) + ",'Y','Y',15"
  set rs = conn.Execute(line)
  if ovation <> "41" then
	call PrintEmail("Sales Contact",Request("sales_email"),rs("contact_id"))
  end if
end if

'*************** If the technical contact exists, add him
if len(Request("tech_first")) > 0 then
  line = "sp_Add_Contact " + locid + ",NULL," + sql(Request("tech_first")) 
  line = line + ",NULL," + sql(Request("tech_last")) + "," + sql(Request("tech_title"))
  line = line + ",NULL,NULL," + sql(Request("tech_email")) + ",'Y','Y',15"
  set rs = conn.Execute(line)
  if ovation <> "41" then
	call PrintEmail("Technical Contact",Request("tech_email"),rs("contact_id"))
  end if
end if

%>
    
    <BR><BR>
    
    Your contacts' usernames and accounts have been forwarded directly to their email address.<P>

    The Ovation! Web Site is updated daily with the latest products, promotions 
    and news from AST.  Check out our site often to get the latest from AST.  
    To make sure you don't miss a thing, we will send you an e-mail 
    notification when we have exciting new updates.<P>

    <P>
    <HR SIZE=5 WIDTH=20% ALIGN=CENTER>
    <P>

    <CENTER>
      <I>For further information, call AST Research, Inc. at 1-800-876-4278;<BR>
      international inquiries call (+1) (714) 727-9292.</I>
    </CENTER>
    
    </TD></TR></TABLE>
  </BODY>
</HTML>

