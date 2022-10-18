<!--#include file="../../../basic.inc"-->
<%

set conn = NewConnection()

  set rs = conn.Execute("sp_Lookup_Region " + sql(Request("zipcode")))
  if not rs.EOF then
    isr = nstr(rs("isr"))
    fsr = nstr(rs("fsr"))
    ok = 1
  end if
  rs.Close

%>
<HTML>
  <BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">
    
    <P><CENTER><TABLE WIDTH="90%" BORDER="0" CELLSPACING="0" CELLPADDING="0">
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
    
<% if ok = 1 then %>

    <P>Thank you for your interest in AST products!</P>
    
    <P>One of AST's sales force will be contacting you shortly with information about the AST products you have requested.
    Thanks again for the opportunity to serve you!</P>
    
<% else %>

    <P>We could not find your zip code in our database.</P>
    
    <P>AST uses the standard United States Post Office mailing system (postal codes or zip codes) to divide sales
    territories among sales support staff.  Please press the "back" button on your browser, and verify that the 
    zip code you typed in the previous page is correct before resubmitting this request.</P>
    
<% end if %>    
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
    
    <P ALIGN=RIGHT><IMG SRC="images/logo-white.gif" ALIGN="BOTTOM" ALT="Picture"></TD></TR>
    </TABLE>
    </CENTER>
  </BODY>
</HTML>



<%

if ok = 1 then

  '************** Prepare some text for the sales reps
  body =        "The automated end user lead match system received the following lead from" + newline
  body = body + "a VAR.  Please contact this VAR to find out how we can assist them in" + newline
  body = body + "selling AST products." + newline + newline
 
  body = body + "-- AST Lead Match Project" + newline
  body = body + "sales.match@ast.com" + newline + newline
 
  body = body + "= = = = = = = = = = " + newline + newline
  
  '************** Assemble the lead information for the email
  text =        "   NAME: " + Request("Name") + newline
  text = text + "COMPANY: " + Request("Company") + newline
  text = text + "  EMAIL: " + Request("Email") + newline
  text = text + "  PHONE: " + Request("Phone") + newline + newline
  
  text = text + "SYSTEM REQUESTED:" + newline + Inquiry + newline
  
  '************** Next contact the ISR
  set conn2 = NewWebster()
  set rs2 = conn2.Execute("SELECT * FROM acl WHERE acl_badge_num=" + sql(isr))
  if not rs2.EOF then
  
    text =        "Dear " + nstr(rs2("acl_first_name")) + " " + nstr(rs2("acl_last_name")) + "," + newline + newline
    
    text = text + body
    
    call SendMail(rs2("acl_email"),"sales.match@ast.com","VAR Lead",body + text,5,"")
      
  end if
  
  '************** Next contact the FSR
  set rs2 = conn2.Execute("SELECT * FROM acl WHERE acl_badge_num=" + sql(fsr))
  if not rs2.EOF then

    text =        "Dear " + nstr(rs2("acl_first_name")) + " " + nstr(rs2("acl_last_name")) + "," + newline + newline
    
    text = text + body
    
    call SendMail(rs2("acl_email"),"sales.match@ast.com","VAR Lead",body + text,5,"")

  end if

end if

%>

