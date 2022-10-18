<%
if session("source") = "kare" then
  Response.Redirect("../../accounts/" + session("distinct_name") + "/kare/body.asp")
end if
%>
