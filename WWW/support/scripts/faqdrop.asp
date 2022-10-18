<%
select case (Request.form("faqdrop"))
	case "AST Works" 
		response.redirect("../faq/advantage/worksfaq.htm")
	case "General Information" 
		response.redirect("../faq/advantage/genfaq.htm")
	case "System Setup (CMOS and BIOS)"
		response.redirect("../faq/desktop/bfaq1.htm")
	case "Upgrade and Configuration"
		response.redirect("../faq/desktop/bfaq2.htm")
	case "Video"
		response.redirect("../faq/desktop/bfaq3.htm")
	case "Troubleshooting"
		response.redirect("../faq/desktop/bfaq4.htm")
	case "Networking"
		response.redirect("../faq/desktop/bfaq5.htm")
	case "All"
		response.redirect("../faq/desktop/bfaqa.htm")
	case "amreg.asp" 
		response.redirect("amreg.asp")
	case "eurreg.asp"
		response.redirect("eurreg.asp")
	case "asreg.asp"
		response.redirect("asreg.asp")
	case "admatrix.htm"
		response.redirect("../admatrix.htm")
	case "ascmatrix.htm" 
		response.redirect("../ascmatrix.htm")
	case "dmatrix.htm"
		response.redirect("../dmatrix.htm")
	case "smatrix.htm"
		response.redirect("../smatrix.htm")
	case "advgr.htm"
		response.redirect("../faq/misc/advgr.htm")
	case "advegr.htm"
		response.redirect("../faq/misc/advegr.htm")
	case "Advadgr.htm"
		response.redirect("../faq/misc/Advadgr.htm")
	case "busgr.htm"
		response.redirect("../faq/misc/busgr.htm")
	case "porgr.htm"
		response.redirect("../faq/misc/porgr.htm")
	case "allgr.htm"
		response.redirect("../faq/misc/allgr.htm")
End Select
%>
