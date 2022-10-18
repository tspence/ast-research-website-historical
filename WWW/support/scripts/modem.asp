<%
select case (Request.form("modem"))
	case "ati300.htm" 
		response.redirect("../faq/modem/ati300.htm")
	case "ati600.htm" 
		response.redirect("../faq/modem/ati600.htm")
	case "batt.htm"
		response.redirect("../faq/modem/batt.htm")
	case "bluc.htm"
		response.redirect("../faq/modem/bluc.htm")
	case "silicom.htm"
		response.redirect("../faq/modem/silicom.htm")
	case "bcirrus.htm"
		response.redirect("../faq/modem/bcirrus.htm")
	case "brock.htm"
		response.redirect("../faq/modem/brock.htm")
End Select
%>

