<!--#include file="../../../basic.inc"-->

<HTML>
<BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">

<CENTER><TABLE WIDTH="90%" BORDER="0" CELLSPACING="0" CELLPADDING="0">
<TR>
<TD><P><CENTER>&nbsp; <TABLE WIDTH="435" BORDER="1" CELLSPACING="0" CELLPADDING=
"0" HEIGHT="139">
<TR>
<TD WIDTH="443%" BGCOLOR="#c0c0c0" ALIGN="CENTER" HEIGHT="136"><B><I><FONT SIZE=+2>Thank you for your interest in <BR>
AST Computer</FONT>&REG;</I></B></TD></TR>
</TABLE>
</CENTER></P>

<P><CENTER>&nbsp;</CENTER></P>

<P><CENTER>&nbsp;</CENTER></P>

<P>You will be contacted via e-mail with your Ovation! web site account information.</P>

<P><CENTER>&nbsp;</CENTER></P>

<P><CENTER>&nbsp;</CENTER></P>

<P>&nbsp;</P>

<P><I><FONT SIZE=-1>AST is a registered trademark and
AST Computer, the AST logo and Ascentia, are trademarks of AST Research,
Inc. AST Research, Inc. shall not be liable for technical or editorial errors
or omissions contained herein; nor for incidental or consequential damages
resulting from the furnishing, performance or use of this material. <BR>
Copyright&COPY; 1997, AST Research, Inc. All rights reserved.</FONT></I></P>

<P>&nbsp;</P>

<P ALIGN=RIGHT><IMG SRC="images/logo-white.gif" ALIGN="BOTTOM"></TD></TR>
</TABLE>
</CENTER>

<%
'''DECLARE VARIABLES

Dim stmnt1, stmnt2
Dim rstrans, rsdata 
Dim transaction_ID

'''SET CONNECTION

dim submitconn
set submitconn = server.createobject("ADODB.Connection")
submitconn.Open "interchange","wwwuser","***REDACTED***"


'''VERIFY TYPE OF SUBMIT FORM INPUT FORM

If trim(request("Cancel")) = "CANCEL" then

response.write "Your operation has been cancelled!!!"

else

'''LOG FORM SUBMISSION AND CREATE TRANSACTION ID

	stmnt1="frm_submit_form_data @frmmas_ID=" & request("formID") & ",@frmsub_Submitter='" & request("formSubmitter") & "'"	
	set rstrans = submitconn.Execute(stmnt1)
	transaction_ID = rstrans("frmsub_Transaction_ID")

'''SUBMIT DATA USING TRANSACTION ID

	for each item in request.form
	  if (trim(item) <> "SUBMIT") and (trim(item) <> "CANCEL") and (trim(item) <> "FORMID") and (trim(item) <> "FORMSUBMITTER") then	    	     
'''IS ITEM A TEXTAREA OBJECT
	     if instr(trim(item),"DETAIL") > 0 then	
		stmnt2="frm_insert_field_data @fldmas_Name='" & item & "',@frmdat_Value=NULL" & ",@frmdat_Value_Detail=" & sql(request(item)) & ",@frmmas_ID=" & request("formID") & ",@frmsub_Transaction_ID=" & transaction_ID	
	     else
		stmnt2="frm_insert_field_data @fldmas_Name='" & item & "',@frmdat_Value=" & sql(request(item)) & ",@frmdat_Value_Detail=NULL" & ",@frmmas_ID=" & request("formID") & ",@frmsub_Transaction_ID=" & transaction_ID		
	     end if		
	  set rsdata = submitconn.Execute(stmnt2)	  
	  end if
	next
submitconn.close
end if

%>

<%

for each item in Request.Form
  text = text + pad(item,40) + Request(item) + newline
next

header =          "This person filled out a request for a copy of their Ovation! account." + newline
header = header + "They claim to have filled out a registration form within the past six " + newline
header = header + "months.  Please locate their record in the database, and send them a " + newline
header = header + "copy of their Ovation! username and password.  If they are not found " + newline
header = header + "in the reseller database, please contact them and ask them to fill out" + newline
header = header + "a complete registration form." + newline + newline

header = header + "= = = = = = = = = =" + newline + newline

'*************** Send an email to their inside sales rep if possible
set conn = NewConnection()
set rs = conn.Execute("SELECT inside_sales_rep FROM sales_isr WHERE zipcode=" + sql(Request("ZipCode")) + " AND GETDATE() BETWEEN start_date AND end_date")
if not rs.EOF then
  set web = NewWebster()
  set rs2 = web.Execute("SELECT acl_email FROM acl WHERE acl_badge_num=" + sql(rs("inside_sales_rep")))
  if not rs2.EOF then
    done = 1
    call SendMail(rs2("acl_email"), "ovation@ast.com", "Ovation Account Request", header + text, 1, "")
  end if
end if

if done = 1 then
  call SendMail("ovation@ast.com", "ovation@ast.com", "(SAVE) Ovation Account Request", header + text, 1, "")
else
  call SendMail("ovation@ast.com", "ovation@ast.com", "(UNPROCESSED) Ovation Account Request", header + text, 1, "")
end if



%>

</BODY>
</HTML>
