<!--#include file="../../../ovation.inc"--> 

<%

if Request("submit") = "Cancel" then
  Response.Redirect("../ovation_body.asp")
end if

if Request("userid") = "" or Request("oldpassword") = "" or Request("newpassword") = "" or Request("confirm") = "" then
  Response.Redirect("password.asp?bad=1")
end if

if Request("newpassword") <> Request("confirm") then
  Response.Redirect("password.asp?bad=2")
end if

set conn = NewConnection()

set rs = conn.Execute("sp_Change_Pass '" + Request("userid") + "','" + Request("oldpassword") + "','" + Request("newpassword") + "'")
if rs("done") = 1 then
  Response.Redirect("password.asp?bad=0")
end if

Response.Redirect("password.asp?bad=3")

%>
