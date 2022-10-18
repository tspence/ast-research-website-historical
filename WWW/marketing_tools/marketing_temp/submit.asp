<!--#include file="../../../partner.inc"-->

<HTML>
<BODY BGCOLOR="#ffffff">

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

<P>Your information has been forwarded to our marketing templates program manager.</P>

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

header =          "This is an automatically generated submission from the Markteing" + newline
header = header + "Templates Program web page." + newline + newline

header = header + "This company requested Ovation! Marketing Templates.  They have been" + newline
header = header + "forwarded a request for a copy of their company logo in a Macintosh" + newline
header = header + "readable vector graphics format.  Until this logo is received, this" + newline
header = header + "company will not receive their marketing templates." + newline

header = header + "coid " + session("company_id") + " locid " + session("location_id") + newline + newline

header = header + "= = = = = = = = = =" + newline + newline

call SendMail("jp.internet@ast.com", "ovation@ast.com", "Marketing Templates Request", header + text, 1, "")
call SendMail("tracy.cittell@ast.com", "ovation@ast.com", "Marketing Templates Request", header + text, 1, "")
call SendMail("ovation@ast.com", "ovation@ast.com", "(SAVE) Marketing Templates Request", header + text, 1, "")

if session("source") = "ovation" then
  set conn = NewConnection()
  set rs = conn.Execute("sp_Lookup_Reseller " + session("location_id"))
  isr = nstr(rs("inside_sales_rep"))
  rs.Close
  conn.Close
  
  set web = NewWebster()
  set rs = web.Execute("SELECT * FROM acl WHERE acl_badge_num=" + sql(isr))
  if not rs.EOF then
    call SendMail(nstr(rs("acl_email")), "ovation@ast.com", "Marketing Templates Request", header + text, 1, "")
  end if
  rs.Close
  web.Close
end if

'******************************************************************************
'*
'* Now send them a request for a logo graphic
'*
'******************************************************************************

text =        "Thank your for your order of the Ovation! Marketing Templates Free Trial " + newline
text = text + "Offer.  This message will serve as a confirmation of your order." + newline + newline

text = text + "In order to complete your order we require an electronic version of your " + newline
text = text + "company logo.  Please reply back to this message and attach a copy of your " + newline
text = text + "logo in one of the following formats:" + newline + newline

text = text + "  Freehand, Adobe Illustrator or QuarkXpress." + newline + newline

text = text + "Your logo may also be mailed to:" + newline + newline

text = text + "  AST Fullfillment Center" + newline
text = text + "  AST Ovation! Program" + newline
text = text + "  P.O. Box 3028" + newline
text = text + "  Santa Fe Springs, CA  90670" + newline + newline

text = text + "We look forward to completing your request.  If you have any further " + newline
text = text + "questions, please contact your AST Inside Sales Representative." + newline + newline

text = text + "--AST Ovation! Project Team." + newline
text = text + "ovation@ast.com" + newline

call SendMail(Request("e-mail:"), "ovation@ast.com", "Ovation! Marketing Templates", text, 1, "")

%>

</BODY>
</HTML>
