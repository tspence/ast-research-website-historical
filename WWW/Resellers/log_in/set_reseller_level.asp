<!--#include file="../../../basic.inc"-->
<%

	session("ovation_level") = request("rlevel")
	response.Redirect("../../default.asp")

%>

