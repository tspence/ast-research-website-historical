<!--#include file="newsroom.inc"-->
<%

set conn = NewConnection()
set rs = conn.Execute("sp_List_Press_Releases")

%>

<HTML>
<BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">

<A HREF="press_list.asp" TARGET="press_release"><IMG SRC="images/news_list.gif" BORDER=0></A><A HREF="<%=PR(rs("SourceFileLoc"))%>" TARGET="press_release"><IMG SRC="images/latest_news.gif" BORDER=0></A><A HREF="" ONCLICK="Next(); return false;" TARGET="press_release"><IMG SRC="images/next_report.gif" BORDER=0></A><A HREF="" ONCLICK="Previous(); return false;" TARGET="press_release"><IMG SRC="images/previous_report.gif" BORDER=0></A>

</BODY>
</HTML>

<SCRIPT>

position = 0;

files = new Array(
<%
 
do while not rs.EOF
  if i = 1 then Response.Write(",")
  Response.Write("""" + PR(rs("SourceFileLoc")) + """")
  i = 1
  rs.MoveNext
loop

%>
)

function Previous()
{
  position = position + 1
  if (position >= files.length) position = files.length - 1;
  window.open(files[position],"press_release");
}

function Next()
{
  position = position - 1
  if (position < 0) position = 0;
  window.open(files[position],"press_release");
}

</SCRIPT>

<%
rs.Close
conn.Close
%>