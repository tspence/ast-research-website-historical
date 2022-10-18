<%@ LANGUAGE="VBSCRIPT" 
    Option Explicit
%>
<HTML>
<HEAD>
<TITLE>Bulletin Query Utility </TITLE>
</HEAD>
<BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">
<table align="default" width="570" border="0">
<tr><td>
<%

' BEGIN LIST OF GLOBAL VARIABLES -----------------------------------

	Dim rBulletin
	Dim ibegin
	Dim istop
	Dim strBulletin
	Dim strTopic
	Dim strProduct
	Dim strButton
	Dim strNameofFile
	Dim strOldBulletin
	Dim strOldTopic
	Dim strOldProduct
	Dim strOldName
	Dim strLastSearch
	Dim iNumofHits
	Dim strNumofHits
	Dim iCount
	Dim SQL
	Dim lngMove
	Dim strfirst
	Dim ifirst
	Dim strlast
	Dim ilast
	Dim gcMainEXE
	Dim aBulFullTopic
	Dim aBulType
	Dim aBulProducts
	Dim Showtotalhits
	Dim ShowBulletinlist
	Dim ShowAllZips
	Dim DBQuery
	Dim Errormessage


' END LIST OF GLOBAL VARIABLES -----------------------------------

' BEGIN LIST OF CONSTANTS -----------------------------------

	aBulFullTopic = Array("All Topics", "Advanced Power Management (APM)", "Applications", "Batteries", "BIOS", "Drives", "I/O Ports", "Memory (Cache, Video, and RAM)", "Modems", "Network Issues", "Operating Systems", "Other Hardware", "PCMCIA", "Peripherals", "Sound", "System Boards", "Third-Party Applications", "Upgrades", "Video")

	aBulType = Array ("All", "Informational", "Software", "Technical")

	aBulProducts = Array("All", "Desktop or Minitower", "Portable", "Server", "Vintage", "Miscellaneous")

	gcMainEXE = "../scripts/bulletin.asp"

' END LIST OF CONSTANTS -----------------------------------

'BEGIN MAIN SUB -----------------------------------

	strBulletin = Trim(Request.form("Bulletin"))
	strTopic = Trim(Request.form("Topic"))
	strProduct = Trim(Request.form("Product"))
	strButton = Trim(Request.form("Button"))

	strNameofFile = Trim(Request.Form("NameofFile"))
	strOldBulletin = Trim(Request.Form("OldBul"))
	strOldTopic = Trim(Request.Form("OldTopic"))
	strOldProduct = Trim(Request.Form("OldProd"))
	strOldName = Trim(Request.Form("OldName"))
	strLastSearch = Trim(Request.Form("LastSearch"))

	SetHitsToList

	If strButton = "" Then
		If Len(strBulletin) = 0 Then
			' User refreshed frame with browser resulting in all nul variable values.
			' CASE ELSE will handle this situation.
			strButton = "Nul"
		ElseIf Len(strNameofFile) = 0 Then
			strButton = "Submit"
		Else
			strButton = "<-- Search"
		End If
	End If

	Select Case strButton
	Case "Submit"
		DefineSubmitSQL
		SelectQuery
		ibegin = 1
		If iCount = 0 Then
			istop = 25
			Showtotalhits = "yes"     'total will equal zero
			ShowBulletinlist = "no"
			Errormessage = "<P ALIGN=CENTER>Please make another selection.</P>"
		Else
			If icount < iNumofHits Then
				istop = icount
			Else
				istop = iNumofHits
			End If
			Showtotalhits = "yes"
			ShowBulletinlist = "yes"
		End If
	Case "View More Bulletins"
		strButton = strLastSearch
		If strLastSearch = "Submit" Then
			strBulletin = strOldBulletin
			strTopic = strOldTopic
			strProduct = strOldProduct
			DefineSubmitSQL
		Else		'strLastSearch = "<-- Search"
			strNameofFile = strOldName
			DefineSearchSQL
		End If
		SelectQuery
		ilast = CInt(Trim(Request.Form("LastVar")))
		ibegin = ilast + 1
		If icount > (ilast + iNumofHits) Then
			istop = ilast + iNumofHits
		Else
			istop = icount
		End If
		lngMove = CLng(ilast)
		rBulletin.Move (lngMove)
		Showtotalhits = "yes"
		ShowBulletinlist = "yes"
	Case "View Previous List"
		strButton = strLastSearch
		If strLastSearch = "Submit" Then
			strBulletin = strOldBulletin
			strTopic = strOldTopic
			strProduct = strOldProduct
			DefineSubmitSQL
		Else		'strLastSearch = "<-- Search"
			strNameofFile = strOldName
			DefineSearchSQL
		End If
		SelectQuery
		ifirst = CInt(Trim(Request.Form("FirstVar")))
		ilast = CInt(Trim(Request.Form("LastVar")))
		If ifirst - iNumofHits < 1 Then
			ibegin = 1
		Else
			ibegin = ifirst - iNumofHits
		End If
		istop = ifirst - 1
		lngMove = CLng(ibegin - 1)
		rBulletin.Move (lngMove)
		Showtotalhits = "yes"
		ShowBulletinlist = "yes"
	Case "<-- Search"
		ibegin = 1
		If Len(strNameofFile) = 0 Then
			istop = 25
			strBulletin = "All"
			strTopic = "All Topics"
			strProduct = "All"
			DBQuery = "no"
			Showtotalhits = "no"
			ShowBulletinlist = "no"
			Errormessage = "<P ALIGN=CENTER><FONT COLOR = ""Red""><B>You must enter all or part of the name of the file that you wish to download before clicking on <-- Search</B></FONT></P>"
		Else
			DefineSearchSQL
			SelectQuery
			If iCount = 0 Then
				istop = 25
				Showtotalhits = "no"
				ShowBulletinlist = "no"
				Errormessage = "<P ALIGN=CENTER><FONT COLOR = ""Red""><B>" & strNameofFile & "</FONT> is not a valid file name.</B></P><P ALIGN=CENTER><B>Please make another selection.</B></P>"
			Else
				If icount < iNumofHits Then
					istop = icount
				Else
					istop = iNumofHits
				End If
				Showtotalhits = "yes"
				ShowBulletinlist = "yes"
			End If
		End If

	Case Else
		ibegin = 1
		istop = 1
		strBulletin = "All"
		strTopic = "All Topics"
		strProduct = "All"
		OpeningParagraphs
		ShowAllZips = "yes"
		DBQuery = "no"
		Showtotalhits = "no"
		ShowAllZips = "yes"
	End Select

	Sendhidden
%>
	<table>
	<tr>
	<td>
<%
	Sentence
%>
	</td>
	</tr>
	<tr>
	<td>
		<TABLE BORDER="0" ALIGN="DEFAULT" WIDTH="100%">
		<TR BGCOLOR="WHITE">
		<TD ALIGN="LEFT" VALIGN="TOP" WIDTH="33%">
		</TD>
<%
			If UCase(Showtotalhits) = "YES" Then
				Response.Write"<TD ALIGN=""CENTER"" VALIGN=""TOP"" WIDTH=""33%"">Total Number of Hits: " & iCount & "</TD>"
			Else
				response.write "<TD></TD>"
			End If

			Response.Write "<TD ALIGN=""RIGHT"" VALIGN=""TOP"" WIDTH=""33%"">List  <INPUT TYPE=""TEXT"" NAME=""NumofHits"" SIZE=""3"" MAXLENGTH=""3"" VALUE=""" & strNumofHits & """> Hits at a Time.</TD>"
%>
		</TR>
		</TABLE>
	<HR>
	</TD>
	</TR>
	<TR>
	<TD>
	<H4><B>or Enter a File Name or Keyword: </B>
<%
	Response.Write "<INPUT TYPE=""text"" NAME=""NameofFile"" SIZE=""20"" VALUE=""" & strNameofFile & """>"
%>
	<INPUT TYPE="SUBMIT" NAME="Button" VALUE="<-- Search">
	</H4>
	<HR>
	</TD>
	</TR>
	</TABLE>
<%
	If UCase(ShowBulletinlist) = "YES" Then
		ListBulletins
	Else
		Response.Write Errormessage
		If UCase(ShowAllZips) = "YES" Then
			AllZips
		End If
	End If

	If UCase(DBQuery) = "YES" Then
		rBulletin.Close
	End If
%>
	</FORM>
	</TR></TD>
	</TABLE>
	</BODY>
	</HTML>
<%

	
'END MAIN SUB -----------------------------------

Public Sub SetHitsToList()

	Dim iLength
	Dim XXX
	Dim lngXXX
	Dim strTester
	Dim holdNumofHits
	   
	strNumofHits = Trim(Request.Form("NumofHits"))
	
	If Len(strNumofHits) = 0 Then
		strNumofHits = "25"
	Else
		iLength = CInt(Len(strNumofHits))
		holdNumofHits = ""
		For XXX = 1 To iLength
			lngXXX = CLng(XXX)
			strTester = Mid(strNumofHits, lngXXX, 1)
			If Asc(strTester) >= 48 And Asc(strTester) <= 57 Then
				holdNumofHits = holdNumofHits + strTester
			End If
		Next
		If Len(holdNumofHits) = 0 Then
			strNumofHits = "25"
		Else
			strNumofHits = holdNumofHits
		End If
	End If
	
	iNumofHits = CInt(strNumofHits)
			
	If iNumofHits < 1 Then
		iNumofHits = 25
		strNumofHits = "25"
	ElseIf iNumofHits > 100 Then
		iNumofHits = 100
		strNumofHits = "100"
	End If
	
End Sub

' ------------------------------------------------------------------

Public Sub OpeningParagraphs()

%>
	<h3><em>Bulletins</em></h3>
	<p>From this page, you can search through technical, software, and informational bulletins about various AST products. The type of information found in these documents is described below:&nbsp; </p>
	<p><strong>AST Technical Bulletins</strong> <strong>(TBs)</strong> These documents inform the AST community of solutions to current technical issues. Each Technical Bulletin describes the issue, the cause of the issue, and the solution. </p>
	<p><strong>AST Software Bulletins</strong> <strong>(SBs)</strong> These documents inform the AST community of software releases. Each Software Bulletin describes the issue (if any), the solution (if applicable), and any enhancements to existing software.</p>
	<p><strong>AST Informational Bulletins</strong> <strong>(IBs)</strong> These documents inform the AST community of technical issues usually not related to AST hardware or software. IBs are &quot;informational&quot; in nature.</p>
	<p>If you know the name or a keyword for the bulletin that you need, enter the full or partial filename or the keyword in the &quot<-- Search&quot box, and then click on the &quot<-- Search&quot button.</p>

<%

End Sub

'-----------------------------------------------

Public Sub AllZips()

%>
<p>You can also download all the technical, software, and informational bulletins to view 
off-line. To do so, download the following files:</p>

<table border="0" width="100%">
  <tr>
    <td width="17%"><a href="ftp://ftp.ast.com/MISC/ALLTBS.ZIP">ALLTBS.ZIP</a></td>
    <td width="83%">All technical bulletins in one file</td>
  </tr>
  <tr>
    <td width="17%"><a href="ftp://ftp.ast.com/MISC/ALLSBS.ZIP">ALLSBS.ZIP</a></td>
    <td width="83%">All software bulletins in one file</td>
  </tr>
  <tr>
    <td width="17%"><a href="ftp://ftp.ast.com/MISC/ALLIBS.ZIP">ALLIBS.ZIP</a></td>
    <td width="83%">All informational bulletins in one file</td>
  </tr>
</table>
<%

End Sub

'-----------------------------------------------

Public Sub DefineSubmitSQL()

	If strTopic <> "All Topics" Then
		SQL = "SELECT DISTINCT BulletinTopicList.Name, BulletinDetails.Description, BulletinDetails.Bulletin FROM BulletinDetails INNER JOIN BulletinTopicList ON BulletinDetails.Name = BulletinTopicList.Name WHERE BulletinTopicList.Topic = '" + strTopic + "'"
		If strProduct <> "All" Then
			SQL = SQL + " AND BulletinDetails.Product = '" + strProduct + "'"
			If strBulletin <> "All" Then
				SQL = SQL + " AND BulletinDetails.Bulletin = '" + strBulletin + "'"
			End If
		Else
			If strBulletin <> "All" Then
				SQL = SQL + " AND BulletinDetails.Bulletin = '" + strBulletin + "'"
			End If
		End If
		SQL = SQL + " ORDER BY BulletinDetails.Bulletin DESC, BulletinTopicList.Name DESC"
	Else
		SQL = "SELECT DISTINCT BulletinDetails.Name, BulletinDetails.Description, BulletinDetails.Bulletin FROM BulletinDetails"
		If strProduct <> "All" Then
			SQL = SQL + " WHERE BulletinDetails.Product = '" + strProduct + "'"
			If strBulletin <> "All" Then
				SQL = SQL + " AND BulletinDetails.Bulletin = '" + strBulletin + "'"
			End If
		Else
			If strBulletin <> "All" Then
				SQL = SQL + " WHERE BulletinDetails.Bulletin = '" + strBulletin + "'"
			End If
		End If
		SQL = SQL + " ORDER BY BulletinDetails.Bulletin DESC, BulletinDetails.Name DESC"
	End If
	
End Sub

'-----------------------------------------------

 Public Sub DefineSearchSQL()

	SQL = "SELECT DISTINCT Name, Description, Bulletin FROM BulletinDetails WHERE (Name Like '%" + strNameofFile + "%') or (Description Like '%" + strNameofFile + "%') ORDER BY Name ASC"

End Sub

'-----------------------------------------------

Public Sub Sentence()
%>
	<P>I want to look through 
<%
	BulletinBox
%>
	 bulletins about 
<%
	TopicBox
%>
	 for 
<%
	ProductBox
%>
	 products.
	<INPUT TYPE="SUBMIT" NAME="Button" VALUE="Submit">
	</P>
<%

End Sub

'-----------------------------------------------

Public Sub TotalBulletins()

	Response.Write"<P ALIGN=""CENTER"">Total Files Meeting the Selected Criteria: " & iCount & "</P>"
	Response.Write"<HR>"

End Sub

'-----------------------------------------------

Public Sub BulletinBox()

	Dim XXX

%>
	<!-- ********************************************* -->
	<!-- Begin Form for Bulletin variable list box input -->
	<!-- ********************************************* -->
	<SELECT NAME="BULLETIN">
<%
	For XXX = 0 to 3
		If aBulType(XXX) = strBulletin Then
			Response.Write"<OPTION SELECTED VALUE=""" & aBulType(XXX) & """>" & aBulType(XXX) & "</OPTION>"
		Else
			Response.Write"<OPTION VALUE=""" & aBulType(XXX) & """>" & aBulType(XXX) & "</OPTION>"
		End If
	Next
%>
	</SELECT>
	<!-- ******************************************* -->
	<!-- End Form for Bulletin variable list box input -->
	<!-- ******************************************* -->
<%
End Sub

'-----------------------------------------------

Public Sub TopicBox()

	Dim XXX
%>
	<!-- ********************************************* -->
	<!-- Begin Form for Topic variable list box input -->
	<!-- ********************************************* -->
	<SELECT NAME="TOPIC">
<%
	For XXX = 0 to 18
		If aBulFullTopic(XXX) = strTopic Then
			Response.Write"<OPTION SELECTED VALUE=""" & aBulFullTopic(XXX) & """>" & aBulFullTopic(XXX) & "</OPTION>"
		Else
			Response.Write"<OPTION VALUE=""" & aBulFullTopic(XXX) & """>" & aBulFullTopic(XXX) & "</OPTION>"
		End If
	Next
%>
	</SELECT>
	<!-- ******************************************* -->
	<!-- End Form for Topic variable list box input -->
	<!-- ******************************************* -->
<%
End Sub

'-----------------------------------------------

Public Sub ProductBox()

	Dim XXX
%>
	<!-- ********************************************* -->
	<!-- Begin Form for Product variable list box input -->
	<!-- ********************************************* -->
	<SELECT NAME="PRODUCT">
<%
	For XXX = 0 to 4
		If aBulProducts(XXX) = strProduct Then
			Response.Write"<OPTION SELECTED VALUE=""" & aBulProducts(XXX) & """>" & aBulProducts(XXX) & "</OPTION>"
		Else
			Response.Write"<OPTION VALUE=""" & aBulProducts(XXX) & """>" & aBulProducts(XXX) & "</OPTION>"
		End If
	Next
%>
	</SELECT>
	<!-- ******************************************* -->
	<!-- End Form for Product variable list box input -->
	<!-- ******************************************* -->
<%
End Sub

'-----------------------------------------------

Public Sub ListBulletins()

	Dim ilist
	Dim strPath

%>
	<TABLE BORDER="0" ALIGN="DEFAULT" WIDTH="100%">
	<TR><TD ALIGN="LEFT" VALIGN="TOP" WIDTH="30"></TD>
	<TD ALIGN="LEFT" VALIGN="TOP" WIDTH="125"><B><U>Filename</U></B></TD>
	<TD ALIGN="LEFT" VALIGN="TOP" WIDTH="350"><B><U>Description</U></B></TD>
	</TR>
<%
	For ilist = ibegin To istop
		Response.Write"<TR><TD ALIGN=""LEFT"" VALIGN=""TOP"" WIDTH=""30"">" & ilist & ".</TD>"
		Select Case rBulletin("Bulletin")
			Case "Informational"
				strPath = "/www/support/bulletins/IBS"
			Case "Software"
				strPath = "/www/support/bulletins/SBS"
			Case "Technical"
				strPath = "/www/support/bulletins/TBS"
		End Select

		Response.Write"<TD ALIGN=""LEFT"" VALIGN=""TOP"" WIDTH=""125""><A HREF=""" & strPath & "/" & rBulletin("Name") & ".HTM"">" & rBulletin("Name") & "</A></TD>"
		Response.Write"<TD ALIGN=""LEFT"" VALIGN=""TOP"" WIDTH=""350"">" & rBulletin("Description") & "</TD>"
		Response.Write"</TR>"
		rBulletin.MoveNext
	Next
%>
	</TABLE>
	<BR>
<%
	'VIEW MORE BULLETINS BUTTON
	If (icount - istop) > 0 Then
%>
		<INPUT TYPE="SUBMIT" NAME="Button" VALUE="View More Bulletins">
<%
	End If

	'VIEW PREVIOUS LIST BUTTON
	If istop > iNumofHits Then
%>
		<INPUT TYPE="SUBMIT" NAME="Button" VALUE="View Previous List">
<%
	End If
	
End Sub

'-----------------------------------------------

Public Sub Sendhidden()

	Response.Write"<FORM ACTION=""" & gcMainEXE & """ METHOD=""POST"">"
%>
	<!-- ******************************************** -->
	<!--  Begin hidden variable input for list count  -->
	<!-- ******************************************** -->
<%
	Response.Write"<Input Name=""FirstVar"" Type=""Hidden"" Value=""" & ibegin & """>"
	Response.Write"<Input Name=""LastVar"" Type=""Hidden"" Value=""" & istop & """>"
	Response.Write "<Input Name=""OldBul"" Type=""Hidden"" Value=""" & strBulletin & """>"
	Response.Write "<Input Name=""OldTopic"" Type=""Hidden"" Value=""" & strTopic & """>"
	Response.Write "<Input Name=""OldProd"" Type=""Hidden"" Value=""" & strProduct & """>"
	Response.Write "<Input Name=""OldName"" Type=""Hidden"" Value=""" & strNameofFile & """>"
	Response.Write "<Input Name=""LastSearch"" Type=""Hidden"" Value=""" & strButton & """>"
%>
	<!-- ******************************************** -->
	<!--   End hidden variable input for list count   -->
	<!-- ******************************************** -->
<%
End Sub

' ----------------------------------------------

Public Sub SelectQuery()

	set rBulletin = Server.CreateObject("ADODB.Recordset")
	rBulletin.Open SQL, "DSN=Services;UID=ehoffman;PWD=***REDACTED***;DATABASE=Search", 3, 4
	If rBulletin.RecordCount > 0 Then
		rBulletin.MoveLast
		iCount = rBulletin.RecordCount
		rBulletin.MoveFirst
	Else
		iCount = 0
	End If
	DBQuery = "yes"

End Sub

' ----------------------------------------------

%>