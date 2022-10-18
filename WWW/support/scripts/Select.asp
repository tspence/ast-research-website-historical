<%
select case (Request.form("sysselect"))
	case "help.htm" 
		response.redirect("../help.htm")
	case "discover/AdvaDisc.htm" 
		response.redirect("../discover/AdvaDisc.htm")
	case "discover/ADVENtdi.HTM"
		response.redirect("../discover/ADVENtdi.HTM")
	case "discover/bravdisc.HTM"
		response.redirect("../discover/bravdisc.HTM")
	case "discover/servdisc.HTM"
		response.redirect("../discover/servdisc.HTM")
	case "discover/portdisc.htm"
		response.redirect("../discover/portdisc.htm")
	case "discover/prmiadis.HTM"
		response.redirect("../discover/prmiadis.HTM")
	case "discover/Prmumdis.HTM"
		response.redirect("../discover/Prmumdis.HTM")
End Select
%>