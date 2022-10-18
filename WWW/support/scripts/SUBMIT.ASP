<!--#include file="basic.inc"-->
<%
If Request.ServerVariables("REQUEST_METHOD")="POST" Then
	Dim Message

	Message = "Name: " & Request("txtName") & NL & NL
	Message = Message & "Company: " & Request("txtCompany") & NL & NL
	Message = Message & "Daytime Phone Number: " & Request("txtPhoneNumber") & NL & NL
	Message = Message & "Fax Number: " & Request("txtFaxNumber") & NL & NL
	Message = Message & "Mailing Address: " & NL
   Message = Message & Request("txtMailingAddress") & NL & NL
	Message = Message & "Purchase Date: " & Request("txtPurchaseDate") & NL & NL
	Message = Message & "EMail Address:" & Request("txtEMailAddress") & NL & NL
	Message = Message & "Computer Part Number: " & NL
   Message = Message & Request("txtComputerPartNumber") & NL & NL
	Message = Message & "Computer Serial Number: " & NL
   Message = Message & Request("txtComputerSerialNumber") & NL & NL
	Message = Message & "Upgrade Part Number(s): " & NL
   Message = Message & Request("txtUpgradePartNumber") & NL & NL
   
End If
%>
<html>

<head>
<title> AST Warranty Information </title>
</head>

<BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">
<%
'''DISPLAY APPROPRIATE MESSAGE DEPENDING ON SUCCESS'''
   If mail = 1 then
%>

<h3>Thank You! <br>
</h3>

<p>A member of the warranty registration department should contact you within three days
to help you process your order and answer any warranty upgrade questions. <%else%> </p>

<h3>There was a problem submitting your order. <br>
</h3>

<p>Please try to submit your order one more time. If you still have problems you can
E-mail the information to <a href="mailto:warranty.upgrade@ast.com">warranty.upgrade@ast.com</a>.
<br>
</p>

<p>Thank You. <%end if%> <i>For further information, call AST Research, Inc. at 1-800-876-4278; <br>
international inquiries call (+1) (714) 727-9292. </i></p>

<hr>

<p>&nbsp;</p>
</body>
</html>
