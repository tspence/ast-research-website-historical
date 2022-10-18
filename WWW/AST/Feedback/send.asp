<!--#include file="../../../basic.inc"--> 
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

<P>Thanks for your input!</P>

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

<P ALIGN=RIGHT><IMG SRC="/images/logo-white.gif" ALIGN="BOTTOM"></TD></TR>
</TABLE>
</CENTER>

<%

text = text + "NAME          " + Request("name") + newline
text = text + "EMAIL         " + Request("email") + newline
text = text + "COMPANY       " + Request("company") + newline
if len(Request("Request Reply")) > 0 then
  text = "              ** Request Reply **" + newline + text
end if
text = text + Request("comment")

header =          "This is an automatically generated submission from the AST Web" + newline
header = header + "feedback page." + newline + newline

if session("source") = "ovation" then 
  header = header + "coid " + session("company_id") + " locid " + session("location_id") + " contid " + session("contact_id") + newline + newline
end if

header = header + "= = = = = = = = = =" + newline + newline

if len(trim(Request("email"))) > 0 then
  sender = trim(Request("email"))
else
  sender = "ovation@ast.com"
end if

if session("source") = "ovation" then 
  if len(Request("isr")) > 0 then
    set web = NewWebster()
    set rs = web.Execute("SELECT acl_email FROM acl WHERE acl_badge_num=" + sql(Request("isr")))
    if not rs.EOF then
      call SendMail(rs("acl_email"), sender, "Ovation Feedback", header + text, 1, "")
      call SendMail("tracy.cittell@ast.com", sender, "(SAVE) Ovation Feedback", header + text, 1, "")
    else
      call SendMail("tracy.cittell@ast.com", sender, "URGENT - Reseller feedback on Ovation", header + text, 1, "")
    end if
    rs.Close
  else
    call SendMail("tracy.cittell@ast.com", sender, "URGENT - AST employee feedback on Ovation", header + text, 1, "")
  end if
  
  call SendMail("ovation@ast.com", sender, "(SAVE) Ovation Feedback", header + text, 1, "")
end if

call SendMail("webmaster@ast.com", sender, "Corporate Web Site Feedback", header + text,1,1)

%>

</BODY>
</HTML>
