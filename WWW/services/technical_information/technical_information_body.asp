<%
if session("source") = "kare" then
  Response.Redirect("../../accounts/" + session("distinct_name") + "/technical_information/body.asp")
end if
%>