<%
Dim PN, SQL, strCategory
PN=Request("pn")
Set Conn = Server.CreateObject("ADODB.Connection")
Conn.Open "dsn=services;uid=app_blender"
SQL="EXEC sp_AllMyData '"+PN+"'"
Set RS = Conn.Execute(sQL)
If RS.EOF Then Response.Redirect("noexist.asp?pn="+PN)
%>
<html><head>
<title>Pronto Pro! Home Page</title>
<body bgcolor='ffffff' text='000000' LINK="#0000FF" ALINK="#0000FF" VLINK="#0000FF">

<b>Pronto! Pro <i>OnLine</I> Text Version</b>
<CENTER>
<!-- #INCLUDE FILE="TITLE.INC" -->

<%
Set RS=Conn.Execute(SQL)
RS.MoveFirst
'				**************** SYSTEM NAME HEADER ********************
				
		While Not RS.EOF
			If RS("Category")="Introduction" And RS("Title")="System Name" Then
				Response.Write "<h2> "+RS("Data")+"<br>"+PN+"</h2>"
			End If
			RS.Movenext
		Wend
%>
<BR>
<HR>
<table border=0 width=510>
	<tr>
		<%
'			*********************** MENU SECTION ************************
		RS.MoveFirst
		I = 0
		While Not RS.EOF
			If Not strCategory=RS("Category") Then
				If I = 3 Then
'					Response.Write "<TD width=20>"
					Response.Write "</TR><TR>"
					I = 1
				Else 
					I = I + 1
				End If
'				Response.Write "<TD width=20></td>"
				Response.Write "<TD width=170><a href='#" +RS("Category")+ "'>[" +RS("Category")+ "]</a></TD> "
				strCategory=RS("Category")
			End If
			RS.Movenext
		Wend
		%>
	</tr>
</table>
<hr>
</center>
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