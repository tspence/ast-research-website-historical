<%
select case Ucase(Request.Form("Action"))
	Case "ONE"
		Response.Redirect("../one.htm")
	Case "TWO"
		Response.Redirect("../two.htm")
End Select
%>