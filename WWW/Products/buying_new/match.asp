<!--#include file="../lead.inc"-->
<%

set conn = NewConnection()
set rs = conn.Execute("SELECT * FROM location INNER JOIN state_region ON state_region.state_region_id=location.state_region_id WHERE location_id=" + Request("locid"))

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
    
    <P>Thank you for your interest in AST products!</P>
    
    <P>We've matched you to the following AST reseller:</P>
    
    <DL>
<% 'if instr(rs("web_page"),"http://") > 0 then %>
<!--      <DD><A HREF="<%=trim(rs("web_page"))%>"><%=rs("location_name")%></A> -->
<% 'else %>
      <DD><B><%=rs("location_name")%></B>
<% 'end if %>
      <DD><%=rs("addr1")%>
<% if len(trim(nstr(rs("addr2")))) > 0 then %>
      <DD><%=rs("addr2")%>
<% end if %>
      <DD><%=rs("city") + ", " + rs("state_region_abbrv") + " " + rs("postal_code")%>
      <DD>
      <DD>Phone <%=rs("main_phone")%>
      <DD>Fax <%=rs("main_fax")%>
    </DL>
    
    <P>This reseller will be contacting you shortly with information about the AST
    products you requested.</P>
    
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
rs.Close
conn.Close

%>