<html>
<title>Authorized Service Center Search</title>
<BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">
<em><h3>Authorized Service Center Search</h3></em>
<table border="0" width="600"><tr><td valign="top" width="90%">
<%
Dim strProducts, strPC
Set Conn = Server.CreateObject("ADODB.Connection")
Conn.Open "dsn=Oxygen;uid=app_asc;pwd=***REDACTED***;database=ServiceCenter"
%>
Listed below are the results of your search in <b><%=Request.Form("Country")%></b> by <b><%=Request.Form("Key")%></b> for <b><%=Request.Form("Value")%></b>*. 
To display more details, click on the link for any of the following Authorized Service Centers.
<p>
<table width="100%" cellspacing=10 border=0>
<%
If Request.Form("Key")="ASCNumber" Then
	SQL="SELECT * FROM Main WHERE country='"+Request.Form("Country")+"' AND ASCNumber='"+Request.Form("Value")+"' ORDER BY Name"
Else
	SQL="SELECT * FROM Main WHERE country='"+Request.Form("Country")+"' AND ("+Request.Form("Key")+" LIKE '"+Request.Form("Value")+"%' OR "+Request.Form("Key")+"=NULL) AND Referrals=1 AND Active=1 ORDER BY Name" 
End if
set RS= Conn.Execute(SQL)
While not RS.EOF
	Response.Write "<tr><td valign=top><a href=""view.asp?ASCID=" &cStr(RS("ID")) &""">"+RS("Name")&"</a><br>"
	Response.Write RS("address")& " <br>" 
	Response.Write RS("city")& " " &RS("state")&" "
	if not isnull(rs("Products")) Then Response.Write "<br>Products Serviced: "&RS("Products")
	Response.Write "</td><td valign=top>Phone:" &RS("Phone")
	Response.Write "</td><td valign=top>" &RS("country")
	Response.Write "</td></tr>"&Chr(10)
	RS.Movenext
Wend
%>
</table>
</td>
<td valign="top"><IMG BORDER="0" SRC="../graphics/ATHSC.JPG"></td></tr>
<tr><td><hr>
<center><b><a href="default.asp">Search again?</a></b></center></td></tr>
</table>
</body>
</html>