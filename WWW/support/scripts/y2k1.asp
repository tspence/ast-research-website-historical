<%
select case (Request.form("y2k"))
	case "y2kadv.htm" 
		response.redirect("../y2kadv.htm")
	case "y2kdesk.htm" 
		response.redirect("../y2kdesk.htm")
	case "y2kport.htm"
		response.redirect("../y2kport.htm")
	case "y2kserv.htm"
		response.redirect("../y2kserv.htm")
End Select
%>