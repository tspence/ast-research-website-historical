<%
if session("source") = "kare" then
  Response.Redirect("../../accounts/" + session("distinct_name") + "/custom_configurations/body.asp")
end if
%>
