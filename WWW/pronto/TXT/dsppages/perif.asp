<%
Dim PN, SQL, strCategory
PN=Request("pn")
Set Conn = Server.CreateObject("ADODB.Connection")
Conn.Open "dsn=services;uid=app_blender"
SQL="SELECT Description FROM parts WHERE pn='"+PN+"'"
Set RS = Conn.Execute(sQL)
If RS.EOF Then Response.Redirect("noexist.asp?pn="+PN)
%>

<html><head>
<title>Bravo LC (LC2) Systems Menu</title>
</head>
<body bgcolor='ffffff' text='000000' LINK="#0000FF" ALINK="#0000FF" VLINK="#0000FF"><b>
Pronto! Pro <i>OnLine</I> Text Version
<CENTER>
<!-- #INCLUDE FILE="TITLE.INC" -->
</CENTER>

<%
SQL="EXEC sp_AllMyData '"+PN+"'"
Set RS=Conn.Execute(SQL)
RS.MoveFirst
'				**************** SYSTEM NAME HEADER ********************
				
		While Not RS.EOF
			If RS("Category")="Introduction" And RS("Title")="Peripheral Name" Then
				Response.Write "<h2>"+RS("Data")+"<BR>"+RS("PN")+"</h2>"
			End If
			RS.Movenext
		Wend
%>

<table border=0 width=100%>
	<tr>
		<td>
		<%
		SQL="EXEC sp_AllMyData '"+PN+"'"
		Set RS=Conn.Execute(SQL)
		RS.MoveFirst
		While Not RS.EOF
			If Not strCategory=RS("Category") Then
				Response.Write "<a href='#" +RS("Category")+ "'>[" +RS("Category")+ "]</a> "
				strCategory=RS("Category")	
			End If
			RS.Movenext
		Wend
		%>
		</td><td>
		<%
		RS.MoveFirst
		While Not RS.EOF
			If RS("Category")="Graphics" And RS("Title")="System Photo" Then
				Response.Write "<img src='" +RS("Path")+ "' alt='" +RS("Data")+ "' align=right wrap=nowrap width=200>"
			End If
			RS.Movenext
		Wend
		%>
		</td>
	</tr>
</table>

<hr>
<%
RS.Movefirst
While Not RS.EOF
	If Not strCategory=RS("Category") Then
		Response.Write "<p><a name='" + RS("Category") + "'><b><i>" + RS("Category") + "</i></b></a><br>"
		strCategory=RS("Category")
	End If
	If IsNull(RS("Path")) Then
		Response.Write "<i>"+RS("Title")+":</i> "+RS("Data")+"<br>"
	Else
		Response.Write "<i>"+RS("Title")+":</i> <a href='/blender/data/" +RS("Path")+ "'>" +RS("Data")+ "</a><br>"
	End If
	RS.MoveNext
Wend
%>
</body>
</html>