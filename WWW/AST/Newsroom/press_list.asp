<!--#include file="newsroom.inc"-->
<%

set conn = NewConnection()
set rs = conn.Execute("sp_List_Press_Releases")

%>

<HTML>
<BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">
<TABLE CELLPADDING=0 CELLSPACING=0 BORDER=0 WIDTH=570>
<%
do while not rs.EOF
%>
  <TR>
    <TD VALIGN=top><FONT SIZE=2><%=rs("ReleaseDate")%></TD>
    <TD WIDTH=40>&nbsp;</TD>
    <TD><FONT SIZE=2><A HREF="<%=PR(rs("SourceFileLoc"))%>"><%=rs("ShortDescription")%></A><BR>&nbsp;</TD>
  </TR>
<%
  rs.MoveNext
loop
rs.Close
%>

</TABLE>
</BODY>
</HTML>
