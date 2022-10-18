<HTML>
<title>Authorized Service Center Search</title>
<BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">
<h3><em>Authorized Service Center Search</em><h3>
<table border="0" width="600"><tr><td width="90%" valign="top">
To search for an AST Authorized Service Center, follow this procedure:
<OL>
<li>Select a country and a search criteria (e.g., Telephone, City, etc.) from the drop-down lists.</li>
<li>Enter your search text which may be complete or partial.</li>
<li>Click on the <b>"Search"</b> button to begin the search.</li></ol>
<em>Example: To search for ASCs in Berlin, Germany, enter:</em> 
<p>
"I want to search for Authorized Service Centers in <b>Germany</b> by the <b>City</b> for the following value: <b>Berlin</b>."
<p>
It is not essential to input information in the search criteria boxes to complete a search.
<br>
<form method=POST action="browse.asp?">
<%
Set Conn = Server.CreateObject("ADODB.Connection")
Conn.Open "dsn=Oxygen;uid=app_asc;pwd=***REDACTED***;database=ServiceCenter"
SQL="SELECT DISTINCT country FROM main where not country='' ORDER BY country" 
set RS= Conn.Execute(SQL)
%>
I want to search for Authorized Service Centers in
<SELECT NAME="Country" SIZE="1">
<OPTION SELECTED>United States
<%
While Not RS.EOF
	Response.Write "<option>"+RS("Country")+"</option>"
	RS.Movenext
Wend
%>
</SELECT>
by the 
<SELECT NAME="Key" SIZE="1">
<OPTION>Name</OPTION>
<OPTION>Postal_Code</OPTION>
<OPTION>ASCNumber</OPTION>
<OPTION>State</OPTION>
<OPTION>City</OPTION>
<OPTION SELECTED>Phone</SELECT> 
using the following criteria:
<input type="text" size=10 name="Value"> 
<input type="submit" value="Search"><br><br>
</td>
<td width="10%" valign="top"><IMG BORDER="0" SRC="../graphics/ATHSC.JPG"></td>
</tr></table>
</body>
</html>