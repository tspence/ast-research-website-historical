<!--#include file="basic.inc"-->
<%
If Request.ServerVariables("REQUEST_METHOD")="POST" Then
	Dim line
        Dim Vdate
	Dim date
	Date=Request("Purchase_Date")
	Message = Message & "Region: " & Request("Region") & newline
	Message = Message & "Serial_Number: " & Request("Serial_Number") & newline
	Message = Message & "Model_Number: " & Request("Model_Number") & newline
	Message = Message & "Cust_Name: " & Request("Cust_Name") & newline
	Message = Message & "Cust_address1: " & Request("Cust_address1") & newline
	Message = Message & "Cust_address2: " & Request("Cust_address2") & newline
	Message = Message & "Cust_state:" & Request("Cust_state") & newline
	Message = Message & "Cust_City: " & Request("Cust_City") & newline
	Message = Message & "Cust_County: " & Request("Cust_County") & newline
	Message = Message & "Cust_Zip: " & Request("Cust_Zip") & newline
	Message = Message & "Cust_Telephone: " & Request("Cust_Telephone") & newline
	Vdate =  Request("Vmonth") + " " + Request("Vday") + ", " + Request("Vyear")
	If IsDate(Vdate) = true then 
	Purchase_Date = Cdate(Vdate) 
	else 
	Purchase_date = now
	end if
	Message = Message & "Purchase_Date: " & Request("Purchase_Date") & newline
	Message = Message & "Country_of_Purchase: " & Request("Country_of_Purchase") & newline
	Message = Message & "Cust_Email: " & Request("Cust_Email") & newline
	Message = Message & "E_Updates: " & Request("E_Updates") & newline
	line = "usp_add_reg @serial_number=" & sql(request("serial_number")) & ", @model_number=" & sql(request("Model_number")) & ", @Cust_name=" & sql(request("cust_name")) & ", @Cust_Address1=" & sql(request("Cust_Address1")) & ", @Cust_Address2=" & sql(request("Cust_Address2")) & ", @Cust_State=" & sql(request("Cust_State")) & ", @Cust_City=" & sql(request("Cust_City"))& ", @Cust_County=" & sql(request("Cust_County")) & ", @Cust_Telephone=" & sql(request("Cust_Telephone")) & ", @Purchase_Date=" & sql(Purchase_Date) & ", @Country_of_Purchase=" & sql(request("Country_of_Purchase"))& ", @Region=" & sql(request("Region"))& ", @Cust_Email=" & sql(request("Cust_Email"))& ", @E_Updates=" & sql(request("E_Updates"))
	Set DB = Server.CreateObject("ADODB.Connection")
	DB.Open "dsn=Ebony_Tower;uid=webreg;pwd=***REDACTED***;DATABASE=Registrationdata"
	Set RS = DB.Execute(line)
End If
%>
<html>

<head>
<title>Thank You!</title>
</head>

<BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">
<table border="0" width="75%"><tr><td>
<h1>Thank You!</h1></td><td><b><a href="../scripts/amreg.asp?model_number=<%=Request("model_number")%>">

<FORM METHOD=post ACTION="amreg.asp">
<%

for each item in Request.Form
  Response.Write("<INPUT TYPE=hidden NAME=""" + item + """ VALUE=""" + Request("Cust_Name") + """>")
next
for each item in Request.Form
  Response.Write("<INPUT TYPE=hidden NAME=""" + item + """ VALUE=""" + Request("Cust_Email") + """>")
next
%>

<INPUT TYPE=submit value="Register another?">
</td></table></form>

<h4>Within 48-hours, you should receive a confirmation E-mail.</h4>

<h4>Listed below is the information you submitted to the Warranty Registration Department:</h4>

<table border="0" width="570" cellspacing="2" cellpadding="2">
  <tr>
    <td width="171"><b>Name/Company Name:</b></td>
    <td valign="top" width="347"><%= request.form("Cust_name")%></td>
  </tr>
  <tr>
    <td width="171"><b>Email Address:</b></td>
    <td valign="top" width="347"><%= request.form("Cust_Email")%></td>
  </tr>
  <tr>
    <td width="171"><b>Serial Number:</b></td>
    <td valign="top" width="347"><%= request.form("Serial_Number")%></td>
  </tr>
  <tr>
    <td width="171"><b>Part Number:</b></td>
    <td valign="top" width="347"><%= request.form("Model_Number")%></td>
  </tr>
  <tr>
    <td valign="top" width="171"><b>Address:</b></td>
    <td valign="top" width="347"><%= request.form("Cust_Address1") + ",  " + request.form("Cust_address2")%><br>
    <%= request.form("Cust_City") + ",  " +request.form("Cust_State")%>    <br>
    <%= request.form("Cust_Zip")%></td>
  </tr>
  <tr>
    <td valign="top" width="171"><b>Telephone Number:</b></td>
    <td valign="top" width="347"><%= request.form("Cust_Telephone")%></td>
  </tr>
  <tr>
    <td valign="top" width="171"><b>Purchase Date:</b></td>
    <td valign="top" width="347"><%= request.form("Vmonth") +"/"+ request.form("Vday") + "/" + request.form("Vyear")%></td>
  </tr>
  <tr>
    <td valign="top" width="171"><b>Country of Purchase:</b></td>
    <td valign="top" width="347"><%= request.form("Country_of_Purchase")%></td>
  </tr>
</table>
<hr>
<p>For further information, call AST Research, Inc. at 1-800-876-4278; international inquiries call (+1) (714) 727-9292.</p>
<a href="http://www.ast.com"><p>� Copyright 1997 AST Research, Inc.</p></a>
</body>
</html>
