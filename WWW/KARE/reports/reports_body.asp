<%
if session("source") = "kare" then
  Response.Redirect("../../accounts/" + session("distinct_name") + "/procedures/body.asp")
end if
%>
