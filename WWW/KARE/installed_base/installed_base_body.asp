<%
if session("source") = "kare" then
  Response.Redirect("../../accounts/" + session("distinct_name") + "/installed_base/body.asp")
end if
%>
