<!--#include file="../../../basic.inc"--> 
<%

set conn = NewConnection()
set rs = conn.Execute("SELECT * FROM contact WHERE contact_id=" + session("contact_id"))

line = "INSERT INTO comment (lead_id, short, long) VALUES (" + Request("lead_id") + "," + sql(rs("first_name") + " " + rs("last_name")) + "," + sql(Request("comment")) + ")"

conn.Execute(line)
Response.Redirect("lead_detail.asp?thanks=1&lead_id=" + Request("lead_id"))

%>