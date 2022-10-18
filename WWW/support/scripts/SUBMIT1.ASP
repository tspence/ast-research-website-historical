<!--#include file="basic.inc"-->
<%
If Request.ServerVariables("REQUEST_METHOD")="POST" Then
	Dim Message

	Message = Message & "Email: " & Request("email") & newline
	Message = Message & "System: " & Request("system") & newline
	Message = Message & "pn: " & Request("pn") & newline
	Message = Message & "question: " & Request("question") & newline
	Message = Message & "os: " & Request("os") & newline
	Message = Message & "display: " & Request("display") & newline
	Message = Message & "name:" & Request("name") & newline
	Message = Message & "company: " & Request("company") & newline
	Message = Message & "msg: " & Request("msg") & newline
	Message = Message & "addr: " & Request("addr") & newline

	Dim line
	line = "usp_add_message @email_address=" & sql(request("email")) & ", @message=" & sql(message)
	Set DB = Server.CreateObject("ADODB.Connection")
	DB.Open "dsn=services;uid=sa;pwd=***REDACTED***;database=support"
	Set RS = DB.Execute(line)

  call SendMail("ingram_vip_at_astbmound4@ast.com", "www.ast.com", "Inet Gateway", Message,1,1)

End If
%>
<html>

<head>
<title>Thank You!</title>
</head>

<BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">

<hr>

<h1><b><i>Thank You!</i></b></h1>

<h4>You should receive a response via E-mail within the next working week!</h4>
<i>

<p>For further information, call AST Research, Inc. at 1-800-876-4278;<br>
international inquiries call (+1) (714) 727-9292.</i></p>

<hr>

<p>� Copyright 1997 AST Research, Inc.</p>
<a href="http://www.ast.com">

<p></a>&nbsp;</p>
</body>
</html>
