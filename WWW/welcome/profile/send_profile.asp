<!--#include file="../../../ovation.inc"--> 
<%

set conn = NewConnection()

line = "UPDATE contact SET salutation=" + sql(Request("salutation")) + ", "
line = line + "first_name=" + sql(Request("first_name")) + ", "
line = line + "middle_initial=" + sql(Request("middle_initial")) + ", "
line = line + "last_name=" + sql(Request("last_name")) + ", "
line = line + "title=" + sql(Request("title")) + ", "
line = line + "direct_phone=" + sql(Request("direct_phone")) + ", "
line = line + "direct_fax=" + sql(Request("direct_fax")) + ", "
line = line + "email_addr=" + sql(Request("email_addr"))
line = line + " WHERE contact_id=" + session("contact_id")
set rs = conn.Execute(line)

line = "UPDATE location SET location_name=" + sql(Request("location_name")) + ", "
line = line + "dba=" + sql(Request("dba")) + ", "
line = line + "addr1=" + sql(Request("addr1")) + ", "
line = line + "addr2=" + sql(Request("addr2")) + ", "
line = line + "city=" + sql(Request("city")) + ", "
line = line + "state_region_id=" + Request("state_region_id") + ", "
line = line + "postal_code=" + sql(Request("postal_code")) + ", "
line = line + "main_phone=" + sql(Request("main_phone")) + ", "
line = line + "main_fax=" + sql(Request("main_fax")) + ", "
line = line + "web_page=" + sql(Request("web_page"))
line = line + " WHERE location_id=" + session("location_id")
set rs = conn.Execute(line)

Response.Redirect("profile.asp?good=1")

%>

