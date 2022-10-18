<%
if session("source") = "kare" then
  Response.Redirect("../../accounts/" + session("distinct_name") + "/reports/body.asp")
end if
%>
