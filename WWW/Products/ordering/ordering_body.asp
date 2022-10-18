<%
if session("source") = "kare" then
  Response.Redirect("../../accounts/" + session("distinct_name") + "/ordering/body.asp")
end if
%>
