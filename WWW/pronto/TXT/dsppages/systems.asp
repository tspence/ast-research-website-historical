<%
Dim PN, SQL, strCategory, strAction
PN=Request("pn")
If Len(PN) < 4 then
	Response.Redirect("toshort.asp?pn="+PN)
End If
Set Conn = Server.CreateObject("ADODB.Connection")
Conn.Open "dsn=services;uid=app_blender"
SQL="SELECT pn, Data FROM data WHERE pn like '"+PN+"%' AND Title='System Name' AND Category='Introduction'"
set RS= Conn.Execute(SQL)
If RS.EOF Then Response.Redirect("noexist.asp?pn="+PN)
%>

<html><head>
<title>Pronto Pro! Home Page</title>
<body bgcolor='ffffff' text='000000' LINK="#0000FF" ALINK="#0000FF" VLINK="#0000FF">

<b>Pronto! Pro <i>OnLine</I> Text Version</b>
<CENTER>
<!-- #INCLUDE FILE="TITLE.INC" -->
</CENTER>


<table width=550>
<TR>
	<TD><B>Part Number</TD>
	<TD><B>Unit Description</TD>
</TR>
<%
'				**************** SETTING UP SYSTEM JUMPS ********************
	While Not RS.EOF
		Response.Write "<TR><TD><A HREF='summary.asp?pn="+RS("PN")+"'> "+RS("PN")+"</A></TD> "
		Response.Write "<TD><A HREF='summary.asp?pn="+RS("PN")+"'>"+RS("Data")+"</A></TD></TR> "
		RS.Movenext
	Wend
%>


</tr>
</table>

<hr>
</body>
</html>
































































