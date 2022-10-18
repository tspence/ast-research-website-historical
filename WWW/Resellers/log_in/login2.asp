<!--#include file="../../../basic.inc"-->
<%

session("bad_login_attempt") = "0"
session.timeout = 30

'********** Try a normal reseller login
set conn = NewConnection()
set rs = conn.execute("sp_Login " + sql(Request("username")) + "," + sql(Request("password")))

if (not rs.EOF) then
  if (ucase(rs("username")) = ucase(Request("username"))) then
    if (ucase(rs("password")) = ucase(Request("password"))) then
    
      '********** Initialize the session variables
      session("verified") = true
      contid = cstr(rs("contact_id"))
      session("contact_id") = contid
      session("location_id") = cstr(rs("location_id"))
      session("company_id") = cstr(rs("company_id"))
      if ucase(Request("username")) = "OVATION" then
        session("name") = "Comdex Visitor"
      else
        session("name") = rs("first_name") + " " + rs("last_name")
      end if

      '********** Set up the session privilege level      
      session("source") = "ovation"
      session("ovation_level") = rs("ovation_level")
      session.timeout=60

      rs.Close()
      response.Redirect("../../default.asp")
    end if
  end if
end if

rs.Close()
conn.Close()


'********** Try a Webster internal AST login
set conn = NewWebster()
set rs = conn.execute("SELECT * FROM acl WHERE acl_username=" + sql(Request("username")) + " AND acl_password=" + sql(Request("password")))

if (not rs.EOF) then
  if (ucase(rs("acl_username")) = ucase(Request("username"))) then
    if (ucase(rs("acl_password")) = ucase(Request("password"))) then
    
      '********** Initialize the session variables
      session("verified") = true
      session("acl_badge_num") = rs("acl_badge_num")

      '********** Set up the session privilege level 

      session.timeout=60     
      session("source") = "ast"
      session("contact_id") = "21915"
      session("location_id") = "14354"
      session("company_id") = "14679"
      session("name") = Proper(rs("acl_first_name")) + " " + Proper(rs("acl_last_name"))

	  rs.close
	  conn.close
	  response.redirect("reseller_level.asp")

    end if
  end if
end if

session("bad_login_attempt") = "1"
rs.close
conn.close
Response.Redirect("default.asp")

%>
