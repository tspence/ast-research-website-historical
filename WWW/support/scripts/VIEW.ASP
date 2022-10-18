<html>
<title>Authorized Service Center Search</title>
<BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">
<em><h3>Authorized Service Center Search</h3></em>
<table border="0" width="600"><tr><td valign="top" width="90%">
<%
Set Conn = Server.CreateObject("ADODB.Connection")
Conn.Open "dsn=Oxygen;uid=app_asc;pwd=***REDACTED***;database=ServiceCenter"
SQL="SELECT * FROM UserAcct WHERE Username IN (SELECT Username FROM Main WHERE id="+Request("ASCID")+")"
set RS= Conn.Execute(SQL)
If not RS.EOF Then
%>
<%
End If
SQL="SELECT Name, Address, City, State, Postal_Code as 'Postal Code', Country, Contact, Phone, Fax, CountryCode as 'Country Code',Products,  EMail FROM Main WHERE id="+Request("ASCID")  
set RS= Conn.Execute(SQL)
View2(RS)
%>
<%
Sub View2(RS)
If NOT RS.EOF Then
	Response.Write "<table border=0>"
	For Each tmpField in RS.Fields
		If not isnull(tmpField.Value) Then
			Response.Write "<tr>"
			Response.Write "<td align=right><b>" &tmpField.Name& ":<b></td>"
			Response.Write "<td>" &tmpField.Value& "</td>"
			Response.Write "</tr>"
		End If
	Next
	Response.Write "</table>"
End If
End Sub
%>
</td>
<td valign="top" width="10%"><IMG BORDER="0" SRC="../graphics/ATHSC.JPG"></td></tr>
<tr><td><hr>
<center><b><a href="default.asp">Search again?</a></b></center></td></tr>
</table>
</body>
</html>