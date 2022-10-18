<%
if session("source") = "kare" then
  Response.Redirect("../../accounts/" + session("distinct_name") + "/when_to_call/body.asp")
end if
%>