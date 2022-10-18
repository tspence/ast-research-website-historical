<%
select case (Request.Form("manual"))
	Case "Select a Line"
		Response.Redirect("../HELP.htm")
	Case "Advantage!"
		Response.Redirect("../manuals/Advanman.htm")
	Case "Advantage! Adventure!"
		Response.Redirect("../manuals/advadvmn.HTM")
	Case "Adventure!"
		Response.Redirect("../manuals/adventmn.HTM")
	Case "Ascentia"
		Response.Redirect("../manuals/Ascntman.HTM")
	Case "Bravo"
		Response.Redirect("../manuals/Bravoman.HTM")
	Case "Manhattan"
		Response.Redirect("../manuals/Mnhatman.HTM")
	Case "Premium Server"
		Response.Redirect("../manuals/Premman.htm")
	Case "Miscellaneous"
		Response.Redirect("../manuals/miscman.htm")
End Select
%>

