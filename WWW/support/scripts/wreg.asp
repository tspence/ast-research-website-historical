<%
select case (Request.form("region"))
	case "amreg.asp" 
		response.redirect("../where.htm")
	case "eurreg.asp"
		response.redirect("eurreg.asp")
	case "asreg.asp"
		response.redirect("asreg.asp")
end select
%>
