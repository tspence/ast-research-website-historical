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
	Message = Message & "REG_45_1: " & Request("REG_45_1") & newline
	Message = Message & "REG_45_2: " & Request("REG_45_2") & newline
	Message = Message & "REG_45_3: " & Request("REG_45_3") & newline
	Message = Message & "REG_45_4: " & Request("REG_45_4") & newline
	Message = Message & "REG_45_5: " & Request("REG_45_5") & newline
	Message = Message & "REG_45_6: " & Request("REG_45_6") & newline
	Message = Message & "REG_45_7: " & Request("REG_45_7") & newline
	Message = Message & "REG_45_8: " & Request("REG_45_8") & newline
	Message = Message & "REG_45_9: " & Request("REG_45_9") & newline
	Message = Message & "REG_45_10: " & Request("REG_45_10") & newline
	Message = Message & "REG_45_11: " & Request("REG_45_11") & newline
	Message = Message & "REG_45_12: " & Request("REG_45_12") & newline
	Message = Message & "REG_45_13: " & Request("REG_45_13") & newline
	Message = Message & "REG_45_14: " & Request("REG_45_14") & newline
	Message = Message & "REG_45_15: " & Request("REG_45_15") & newline
	Message = Message & "REG_45_16: " & Request("REG_45_16") & newline
	Message = Message & "REG_45_17: " & Request("REG_45_17") & newline
	Message = Message & "REG_45_18: " & Request("REG_45_18") & newline
	Message = Message & "REG_45_19: " & Request("REG_45_19") & newline
	Message = Message & "REG_45_20: " & Request("REG_45_20") & newline
	Message = Message & "REG_45_21: " & Request("REG_45_21") & newline
	Message = Message & "REG_45_22: " & Request("REG_45_22") & newline
	Message = Message & "REG_45_23: " & Request("REG_45_23") & newline
	Message = Message & "REG_45_24: " & Request("REG_45_24") & newline
	Message = Message & "L1_1: " & Request("L1_1") & newline
	Message = Message & "L1_29_1: " & Request("L1_29_1") & newline
	Message = Message & "L1_29_2: " & Request("L1_29_2") & newline
	Message = Message & "L1_29_3: " & Request("L1_29_3") & newline
	Message = Message & "L1_29_4: " & Request("L1_29_4") & newline
	Message = Message & "L1_29_5: " & Request("L1_29_5") & newline
	Message = Message & "L1_29_6: " & Request("L1_29_6") & newline
	Message = Message & "L1_29_7: " & Request("L1_29_7") & newline
	Message = Message & "L1_29_8: " & Request("L1_29_8") & newline
	Message = Message & "L1_29_9: " & Request("L1_29_9") & newline
	Message = Message & "L1_29_10: " & Request("L1_29_10") & newline
	Message = Message & "L1_29_11: " & Request("L1_29_11") & newline
	Message = Message & "L1_29_12: " & Request("L1_29_12") & newline
	Message = Message & "L1_29_13: " & Request("L1_29_13") & newline
	Message = Message & "L1_29_14: " & Request("L1_29_14") & newline
	Message = Message & "L1_29_15: " & Request("L1_29_15") & newline
	Message = Message & "L1_29_16: " & Request("L1_29_16") & newline
	Message = Message & "L1_29_17: " & Request("L1_29_17") & newline
	Message = Message & "L1_29_18: " & Request("L1_29_18") & newline
	Message = Message & "L1_29_19: " & Request("L1_29_19") & newline
	Message = Message & "L1_29_20: " & Request("L1_29_20") & newline
	Message = Message & "L1_29_21: " & Request("L1_29_21") & newline
	Message = Message & "L1_29_22: " & Request("L1_29_22") & newline
	Message = Message & "L1_5: " & Request("L1_5") & newline
	Message = Message & "L1_6: " & Request("L1_6") & newline
	Message = Message & "L1_7: " & Request("L1_7") & newline
	Message = Message & "L1_42: " & Request("L1_42") & newline
	line = "usp_add_reg @serial_number=" & sql(request("serial_number")) & ", @model_number=" & sql(request("Model_number")) & ", @Cust_name=" & sql(request("cust_name")) & ", @Cust_Address1=" & sql(request("Cust_Address1")) & ", @Cust_Address2=" & sql(request("Cust_Address2")) & ", @Cust_State=" & sql(request("Cust_State"))& ", @Cust_Zip=" & sql(request("Cust_zip")) & ", @Cust_City=" & sql(request("Cust_City")) & ", @Cust_Telephone=" & sql(request("Cust_Telephone")) & ", @Purchase_Date=" & sql(Purchase_Date) & ", @Country_of_Purchase=" & sql(request("Country_of_Purchase"))& ", @Region=" & sql(request("Region"))& ", @Cust_Email=" & sql(request("Cust_Email"))& ", @E_Updates=" & sql(request("E_Updates"))& ", @REG_45_1=" & sql(request("REG_45_1"))& ", @REG_45_2=" & sql(request("REG_45_2"))& ", @REG_45_3=" & sql(request("REG_45_3"))& ", @REG_45_4=" & sql(request("REG_45_4"))& ", @REG_45_5=" & sql(request("REG_45_5"))& ", @REG_45_6=" & sql(request("REG_45_6"))& ", @REG_45_7=" & sql(request("REG_45_7"))& ", @REG_45_8=" & sql(request("REG_45_8"))& ", @REG_45_9=" & sql(request("REG_45_9"))& ", @REG_45_10=" & sql(request("REG_45_10"))& ", @REG_45_11=" & sql(request("REG_45_11"))& ", @REG_45_12=" & sql(request("REG_45_12"))& ", @REG_45_13=" & sql(request("REG_45_13"))& ", @REG_45_14=" & sql(request("REG_45_14"))& ", @REG_45_15=" & sql(request("REG_45_15"))& ", @REG_45_16=" & sql(request("REG_45_16"))& ", @REG_45_17=" & sql(request("REG_45_17"))& ", @REG_45_18=" & sql(request("REG_45_18"))& ", @REG_45_19=" & sql(request("REG_45_20"))& ", @REG_45_21=" & sql(request("REG_45_22"))& ", @REG_45_23=" & sql(request("REG_45_23"))& ", @REG_45_24=" & sql(request("REG_45_24"))& ", @L1_1=" & sql(request("L1_1"))& ", @L1_29_1=" & sql(request("L1_29_1"))& ", @L1_29_2=" & sql(request("L1_29_2"))& ", @L1_29_3=" & sql(request("L1_29_3"))& ", @L1_29_4=" & sql(request("L1_29_4"))& ", @L1_29_5=" & sql(request("L1_29_5"))& ", @L1_29_6=" & sql(request("L1_29_6"))& ", @L1_29_7=" & sql(request("L1_29_7"))& ", @L1_29_8=" & sql(request("L1_29_8"))& ", @L1_29_9=" & sql(request("L1_29_9"))& ", @L1_29_10=" & sql(request("L1_29_10"))& ", @L1_29_11=" & sql(request("L1_29_11"))& ", @L1_29_12=" & sql(request("L1_29_12"))& ", @L1_29_13=" & sql(request("L1_29_13"))& ", @L1_29_14=" & sql(request("L1_29_14"))& ", @L1_29_15=" & sql(request("L1_29_15"))& ", @L1_29_16=" & sql(request("L1_29_16"))& ", @L1_29_17=" & sql(request("L1_29_17"))& ", @L1_29_18=" & sql(request("L1_29_18"))& ", @L1_29_19=" & sql(request("L1_29_19"))& ", @L1_29_20=" & sql(request("L1_29_20"))& ", @L1_29_21=" & sql(request("L1_29_21"))& ", @L1_29_22=" & sql(request("L1_29_22"))& ", @L1_5=" & sql(request("L1_5"))& ", @L1_6=" & sql(request("L1_6"))& ", @L1_7=" & sql(request("L1_7"))& ", @L1_42=" & sql(request("L1_42"))
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
<h1>Thank You!</h1></td><td><b><a href="../scripts/business.asp?model_number=<%=Request("model_number")%>">

<FORM METHOD=post ACTION="business.asp">
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