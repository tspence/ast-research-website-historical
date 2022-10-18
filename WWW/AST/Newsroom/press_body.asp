<!--#include file="newsroom.inc"-->
<%

set conn = NewConnection()
set rs = conn.Execute("sp_List_Press_Releases")

%>

<HTML>
<FRAMESET ROWS="80,100*" frameborder="NO" framespacing="0" BORDER="0">
<FRAME SRC="news_control.asp" NAME="news_control" MARGINWIDTH=0 MARGINHEIGHT=0 SCROLLING=NO NORESIZE>
<FRAME SRC="<%=PR(rs("sourcefileloc"))%>" NAME="press_release" MARGINWIDTH=0 MARGINHEIGHT=0 SCROLLING=AUTO NORESIZE>
<NOFRAMES>
<BODY>
Viewing this page requires a browser capable of displaying frames.
</BODY>
</NOFRAMES>
</FRAMESET>
</HTML>

<%

rs.Close
conn.Close

%>