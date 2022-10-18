<%
select case (Request.form("faqd"))
	case "Configuration and Upgrade" 
		response.redirect("../faq/portable/pfaq1.htm")
	case "Troubleshooting" 
		response.redirect("../faq/portable/pfaq2.htm")
	case "Mouse/Pointer"
		response.redirect("../faq/portable/pfaq3.htm")
	case "Modem/Network"
		response.redirect("../faq/portable/pfaq4.htm")
	case "Video"
		response.redirect("../faq/portable/pfaq5.htm")
	case "Software"
		response.redirect("../faq/portable/pfaq6.htm")
	case "Power"
		response.redirect("../faq/portable/pfaq7.htm")
	case "Docking Stations"
		response.redirect("../faq/portable/pfaq8.htm")
	case "Multimedia"
		response.redirect("../faq/portable/pfaq9.htm")
	case "All"
		response.redirect("../faq/portable/pfaqa.htm")
	case "sfaq1.htm"
		response.redirect("../faq/server/sfaq1.htm")
	case "sfaq2.htm"
		response.redirect("../faq/server/sfaq2.htm")
	case "sfaq3.htm"
		response.redirect("../faq/server/sfaq3.htm")
	case "sfaq4.htm"
		response.redirect("../faq/server/sfaq4.htm")
	case "sfaqa.htm"
		response.redirect("../faq/server/sfaqa.htm")	


	case "wfaq.htm"
		response.redirect("../faq/misc/wfaq.htm")
	case "modem.htm"
		response.redirect("../faq/modem/modem.htm")
	case "virfaq.htm"
		response.redirect("../faq/misc/virfaq.htm")
	case "esdfaq.htm"
		response.redirect("../faq/misc/esdfaq.htm")
	case "dirfaq.htm"
		response.redirect("../faq/misc/dirfaq.htm")
	case "Lifeline.htm"
		response.redirect("../faq/misc/Lifeline.htm")
	case "UPG.htm"
		response.redirect("../faq/misc/upg.htm")
End Select
%>
