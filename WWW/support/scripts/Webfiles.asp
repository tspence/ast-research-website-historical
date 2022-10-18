<%@ LANGUAGE="VBSCRIPT" 
    Option Explicit
%>

<HTML>
<HEAD>
<TITLE>File Index Utility </TITLE>
</HEAD>
<BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">
<TABLE ALIGN="DEFAULT" BORDER="0" WIDTH="570">
<TR><TD>
<%

' BEGIN LIST OF GLOBAL VARIABLES -----------------------------------

	Dim rProd
	Dim ibegin
	Dim istop
	Dim strSysVar
	Dim strFileType
	Dim strButton
	Dim icount
	Dim SQL
	Dim iNumofHits
	Dim ifirst
	Dim ilast
	Dim lngMove
	Dim strNameofFile
	Dim strNumofHits
	Dim strOldName
	Dim strOldSys
	Dim strOldType
	Dim gcMainEXE
	Dim aBinFullProd
	Dim aBinRadio
	Dim strLastSearch
	Dim strName
	Dim strPath
	Dim strDescription
	Dim strSize
	Dim strAction

' END LIST OF GLOBAL VARIABLES -----------------------------------

' BEGIN LIST OF CONSTANTS -----------------------------------

	aBinFullProd = Array ("All Products", "Advantage! Adventure!", "Advantage! Desktop", "Advantage! Notebook", "Adventure!", "Ascentia", "Bravo Desktop", "Bravo Notebook", "Manhattan", "PowerExec", "Power Premium", "Premium", "Premium Exec", "Premium Server", "Premmia", "Tandy and Grid", "Vintage Products", "Miscellaneous")

	aBinRadio = Array ("CD", "Modem", "BIOS", "Sound", "Video", "Misc", "All")

	gcMainEXE = "../scripts/webfiles.asp"

' END LIST OF CONSTANTS -----------------------------------


'BEGIN MAIN SUB -----------------------------------

	strSysVar = Trim(Request.Form("SysVar"))
	strFileType = Trim(Request.Form("FileType"))
	strNameofFile = Trim(Request.Form("NameofFile"))
	strButton = Trim(Request.Form("Button"))
	
	strOldSys = Trim(Request.Form("OldSys"))
	strOldType = Trim(Request.Form("OldType"))
	strOldName = Trim(Request.Form("OldName"))
	strLastSearch = Trim(Request.Form("LastSearch"))

	strAction = Request.QueryString("Action")
	If strAction = "BIOSTable" Then
		strButton = "BIOSTable"
	End If

	SetHitsToList

	If strButton = "" Then
		If Len(strSysVar) = 0 Then
			' User refreshed frame with browser resulting in all nul variable values.
			' CASE ELSE will handle this situation.
		ElseIf Len(strNameofFile) = 0 Then
			strButton = "List Files"
		Else
			strButton = "Search For -->"
		End If
	End If

	Select Case strButton
	Case "List Files"
		Definequery
		SelectQuery
		ibegin = 1
		If iCount = 0 Then
			istop = 25
			Sendhidden
			Listbox
			Radiobutton
			TotalFiles
			Response.Write "<P ALIGN=CENTER>Please make another selection.</P>"
		Else
			If icount < iNumofHits Then
				istop = icount
			Else
				istop = iNumofHits
			End If
			Sendhidden
			Listbox
			Radiobutton
			TotalFiles
			ListFiles
			ViewButtons
		End If
		rProd.Close
	Case "View More Files"
		strButton = strLastSearch
		If strLastSearch = "List Files" Then
			strSysVar = strOldSys
			strFileType = strOldType
			Definequery
		Else		'strLastSearch = "Search For -->"
			strNameofFile = strOldName
			SQL = "SELECT * FROM FileList WHERE (Name Like '%" + strNameofFile + "%') or (Description Like '%" + strNameofFile + "%') ORDER BY Name ASC"
		End If
		SetMoreVars
		Sendhidden
		Listbox
		Radiobutton
		TotalFiles
		ListFiles
		ViewButtons
		rProd.Close
	Case "View Previous List"
		strButton = strLastSearch
		If strLastSearch = "List Files" Then
			strSysVar = strOldSys
			strFileType = strOldType
			Definequery
		Else		'strLastSearch = "Search For -->"
			strNameofFile = strOldName
			SQL = "SELECT * FROM FileList WHERE (Name Like '%" + strNameofFile + "%') or (Description Like '%" + strNameofFile + "%') ORDER BY Name ASC"
		End If
		SetPreviousVars
		Sendhidden
		Listbox
		Radiobutton
		TotalFiles
		ListFiles
		ViewButtons
		rProd.Close

	Case "Search For -->"
		ibegin = 1
		If Len(strNameofFile) = 0 Then
			istop = 25
			strSysVar = "All Products"
			strFileType = "All"
			Sendhidden
			Listbox
			Radiobutton
%>
			<TD ALIGN="CENTER" VALIGN="TOP">
			</TD>
<%
			Response.Write "<TD ALIGN=""RIGHT"" VALIGN=""TOP"">List  <INPUT TYPE=""TEXT"" NAME=""NumofHits"" SIZE=""3"" MAXLENGTH=""3"" VALUE=""" & strNumofHits & """> Hits at a Time."
%>
			</TD>
			</TR>
			</TABLE>
<%
			TextSearchDialogue
%>
			<P ALIGN=CENTER><FONT COLOR = "Red"><B>You must enter all or part of the name of the file that you wish to download before clicking on Search For --></B></FONT></P>
<%
		Else
			SQL = "SELECT * FROM FileList WHERE (Name Like '%" + strNameofFile + "%') or (Description Like '%" + strNameofFile + "%') ORDER BY Name ASC"
			SelectQuery
			If iCount = 0 Then
				istop = 25
				Sendhidden
				Listbox
				Radiobutton
%>
				<TD ALIGN="CENTER" VALIGN="TOP">
				</TD>
<%
				Response.Write "<TD ALIGN=""RIGHT"" VALIGN=""TOP"">List  <INPUT TYPE=""TEXT"" NAME=""NumofHits"" SIZE=""3"" MAXLENGTH=""3"" VALUE=""" & strNumofHits & """> Hits at a Time."
%>
				</TD>
				</TR>
				</TABLE>
<%
				TextSearchDialogue
				Response.Write "<P ALIGN=CENTER><FONT COLOR = ""Red""><B>" & strNameofFile & "</FONT> is not a valid file name.</B></P>"
				Response.Write "<P ALIGN=CENTER><B>Please make another selection.</B></P>"
			Else
				If icount < iNumofHits Then
					istop = icount
				Else
					istop = iNumofHits
				End If
				Sendhidden
				Listbox
				Radiobutton
				TotalFiles
				ListFiles
				ViewButtons
			End If
			rProd.Close
		End If

	Case "BIOSTable"
		strName = Trim(Request.QueryString("Name"))
		strPath = Trim(Request.QueryString("Path"))
		strDescription = Trim(Request.QueryString("Description"))
		strSize = Trim(Request.QueryString("Size"))

'write biosfile.htm with the following sub routine:

		Biosfilehtm

	Case Else		' REFRESHED THE FRAME WITH WEB BROWSER
		ibegin = 1
		istop = 25
		strSysVar = "All Products"
		strFileType = "All"
		Sendhidden
		Listbox
		Radiobutton
%>
		<TD ALIGN="CENTER" VALIGN="TOP">
		</TD>
<%
		Response.Write "<TD ALIGN=""RIGHT"" VALIGN=""TOP"">List  <INPUT TYPE=""TEXT"" NAME=""NumofHits"" SIZE=""3"" MAXLENGTH=""3"" VALUE=""" & strNumofHits & """> Hits at a Time."
%>
		</TD>
		</TR>
		</TABLE>
<%
		TextSearchDialogue
		Introduction
	End Select
%>
	</form>
	</TR></TD>
	</TABLE>
	</BODY>
	</HTML>
<%
 

'END MAIN SUB -----------------------------------

Public Sub SetPreviousVars()

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
	rProd.Move (lngMove)

End Sub

' ----------------------------------------------

Public Sub SetMoreVars()

	SelectQuery
	ilast = CInt(Trim(Request.Form("LastVar")))
	ibegin = ilast + 1
	If icount > (ilast + iNumofHits) Then
		istop = ilast + iNumofHits
	Else
		istop = icount
	End If
	lngMove = CLng(ilast)
	rProd.Move (lngMove)

End Sub

' ----------------------------------------------

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

' ----------------------------------------------

Public Sub Biosfilehtm()

%>
	<p>
	WARNING!  Flashing your system's BIOS with the wrong BIOS update file could damage your system.  If you have not already done so, verify that you have the correct BIOS update file in the BIOS Revision Table.  To open the BIOS Revision Table, click on this link:
</p>
<p>
	<a href="../Biostbls.htm">BIOS Revision Table</A>
</p>
<p>
	Otherwise, click on the following link in order to begin downloading the BIOS file:
</p>
<p>
	<TABLE BORDER="0" ALIGN="DEFAULT" WIDTH="100%" BGCOLOR="WHITE">
	<TR><TD ALIGN="LEFT" VALIGN="TOP" WIDTH="30"></TD>
	<TD ALIGN="LEFT" VALIGN="TOP" WIDTH="125"><B><U>Filename</U></B></TD>
	<TD ALIGN="LEFT" VALIGN="TOP" WIDTH="350"><B><U>Description</U></B></TD>
	<TD ALIGN="RIGHT" VALIGN="TOP" WIDTH="80"><B><U>Filesize</U></B></TD></TR>
	<TR><TD ALIGN="LEFT" VALIGN="TOP" WIDTH="30">1.</TD>

	<TD ALIGN="LEFT" VALIGN="TOP" WIDTH="125">
<%
	Response.Write "<A HREF=""ftp://ftp.ast.com/" & strPath & "/" & strName & """>" & strName & "</A></TD>"
	Response.Write "<TD ALIGN=""LEFT"" VALIGN=""TOP"" WIDTH=""350"">" & strDescription & "</TD>"
	Response.Write "<TD ALIGN=""RIGHT"" VALIGN=""TOP"" WIDTH=""80"">" & strSize & "</TD></TR></TABLE>"

%>
	</p>
<%

End Sub

' ----------------------------------------------

Public Sub Introduction()
%>
      <table border="0" width="100%">
        <tr>
          <td valign="top" width="16%"><strong><a href="fileg.htm"><img border="0"
          src="../graphics/disk.gif" width="63" height="55"></a></strong></td>
          <td valign="top" width="84%">You can also view <strong><a href="fileg.htm">all the files</a></strong> in the index,
          or you can view the <strong><a href="Biostbls.htm">BIOS tables</a></strong> by part
          number.</td>
        </tr>
      </table>
        <ul>
	<li>The Files Index contains downloadable files such as BIOS upgrades, video drivers, and miscellaneous utility programs for AST computer systems. To find a file, make a selection from the &quot;Select a Model&quot; drop down box, and then choose one of the &quot;Select a File Category&quot; option buttons to display a specific type of file.&nbsp;&nbsp; </li>
	<li>The Misc field contains general utilities that do not apply to any other category. </li>
	<li>Please contact <strong><a href="techasst.htm">AST On-Line Services</a></strong> with questions about this section.</li>
	<li>If you know the name or a keyword for the file that you need, enter the full or partial filename or the keyword in the &quot;Search For -->&quot; box, and then click on the &quot;Search For -->&quot; button.</li>
	<li>If you still cannot find the desired file, you may want to check the FTP site at <strong><a href="ftp://ftp.ast.com">ftp.ast.com</a></strong>.  When connecting to the FTP site, set the username to &quot;anonymous&quot; and use your E-mail address as the password.</li>
	</ul>
<%
End Sub

' ----------------------------------------------

Public Sub Definequery()
			
		If strSysVar <> "All Products" Then
			SQL = "SELECT * FROM FileList INNER JOIN Filesystem ON FileList.Name = Filesystem.Name WHERE FileSystem.ProductName = '" + strSysVar + "'"
			If strFileType <> "All" Then
				'SPECIFIC PRODUCT AND SPECIFIC TYPE
				SQL = SQL + " AND FileList.Type = '" + strFileType + "'"
			End If
			SQL = SQL + " ORDER BY Filesystem.Name ASC"
		Else
			SQL = "SELECT * FROM FileList"
			If strFileType <> "All" Then
				'ALL PRODUCTS AND SPECIFIC TYPE
				SQL = SQL + " WHERE Type = '" + strFileType + "'"
			End If
			SQL = SQL + " ORDER BY Name ASC"
		End If

End Sub

' ----------------------------------------------

Public Sub Listbox()

	Dim XXX
%>
	<TABLE BORDER="0" ALIGN="DEFAULT" WIDTH="100%" BGCOLOR="White">
	<TR>
	<TD ALIGN="CENTER" VALIGN="TOP" WIDTH="160"><B><U>Select a Model</U></B></TD>
	<TD ALIGN="CENTER" VALIGN="TOP"><B><U>Select a File Category</U></B></TD>
	</TR>
	<TR BGCOLOR="#fff4f2">
	<!-- ********************************************* -->
	<!-- Begin Form for SysVar variable list box input -->
	<!-- ********************************************* -->
	<TD ALIGN="CENTER" VALIGN="TOP" WIDTH="160">
	<SELECT NAME="SYSVAR">
<%
	For XXX = 0 to 17
		If aBinFullProd(XXX) = strSysVar Then
			Response.Write "<OPTION SELECTED VALUE=""" & aBinFullProd(XXX) & """>" & aBinFullProd(XXX) & "</OPTION>"
		Else
			Response.Write "<OPTION VALUE=""" & aBinFullProd(XXX) & """>" & aBinFullProd(XXX) & "</OPTION>"
		End If
	Next
%>
	</SELECT>
	</TD>
	<!-- ******************************************* -->
	<!-- End Form for SysVar variable list box input -->
	<!-- ******************************************* -->
<%
End Sub

' ----------------------------------------------

Public Sub Radiobutton()

	Dim XXX
%>
	<!-- ********************************************** -->
	<!-- Begin Radio Button for FileType variable input -->
	<!-- ********************************************** -->
	<TD ALIGN="CENTER" VALIGN="TOP">
	<TABLE BORDER="0" ALIGN="DEFAULT" WIDTH="100%">
	<TR>
<%
	For XXX = 0 to 6
		Response.Write "<TD ALIGN=""CENTER"" VALIGN=""TOP"">"
		If aBinRadio(XXX) = strFileType Then
			Response.Write "<INPUT TYPE=""radio"" NAME=""FileType"" VALUE=""" & aBinRadio(XXX) & """ CHECKED="" CHECKED""><BR><B>" & aBinRadio(XXX) & "</B>"
		Else
			Response.Write "<INPUT TYPE=""radio"" NAME=""FileType"" VALUE=""" & aBinRadio(XXX) & """><BR><B>" & aBinRadio(XXX) & "</B>"
		End If
		Response.Write "</TD>"
	Next
%>
	</TR>
	</TABLE>
	</TD>
	</TR>
	</TABLE>
	<TABLE BORDER="0" ALIGN="DEFAULT" WIDTH="100%">
	<TR BGCOLOR="WHITE">
	<TD ALIGN="LEFT" VALIGN="TOP">
	<INPUT TYPE="SUBMIT" NAME="Button" VALUE="List Files">
	</TD>
	<!-- ******************************************** -->
	<!-- End Radio Button for FileType variable input -->
	<!-- ******************************************** -->
<%	
End Sub

' ----------------------------------------------

Public Sub TotalFiles()

	Response.Write "<TD ALIGN=""CENTER"" VALIGN=""TOP"">"
	Response.Write "Total Number of Hits: " & iCount
	Response.Write "</TD>"
	Response.Write "<TD ALIGN=""RIGHT"" VALIGN=""TOP"">List  <INPUT TYPE=""TEXT"" NAME=""NumofHits"" SIZE=""3"" MAXLENGTH=""3"" VALUE=""" & strNumofHits & """> Hits at a Time."
	Response.Write "</TD>"
	Response.Write "</TR>"
	Response.Write "</TABLE>"
	TextSearchDialogue
	
End Sub

' ----------------------------------------------

Public Sub ListFiles()
	
	Dim ilist
	Dim strBullPath

%>
	<TABLE BORDER="0" ALIGN="DEFAULT" WIDTH="100%" BGCOLOR="WHITE">
	<TR><TD ALIGN="LEFT" VALIGN="TOP" WIDTH="30"></TD>
	<TD ALIGN="LEFT" VALIGN="TOP" WIDTH="125"><B><U>Filename</U></B></TD>
	<TD ALIGN="LEFT" VALIGN="TOP" WIDTH="350"><B><U>Description</U></B></TD>
	<TD ALIGN="RIGHT" VALIGN="TOP" WIDTH="80"><B><U>Filesize</U></B></TD></TR>
<%	
	For ilist = ibegin To istop
		Response.Write "<TR><TD ALIGN=""LEFT"" VALIGN=""TOP"" WIDTH=""30"">" & ilist & ".</TD>"
		strBullPath = GetBulletinPath(rProd("Bulletin"))
		If rProd("Bulletin") = "NA" Then
			If  rProd("Type") = "BIOS" Then
				Response.Write "<TD ALIGN=""LEFT"" VALIGN=""TOP"" WIDTH=""125""><A HREF=""/scripts/webfiles.asp?action=BIOSTable&path=" & rProd("Path") & "&name=" & rProd("Name") & "&description=" & rProd("Description") & "&size=" & rProd("Size") & """>" & rProd("Name") & "</A></TD>"
			Else
				Response.Write "<TD ALIGN=""LEFT"" VALIGN=""TOP"" WIDTH=""125""><A HREF=""ftp://ftp.ast.com/" & rProd("Path") & "/" & rProd("Name") & """>" & rProd("Name") & "</A></TD>"
			End If
		Else
			Response.Write "<TD ALIGN=""LEFT"" VALIGN=""TOP"" WIDTH=""125""><A HREF=""/" & strBullPath & "/" & rProd("Bulletin") & ".HTM"">" & rProd("Name") & "</A></TD>"
		End If
		Response.Write "<TD ALIGN=""LEFT"" VALIGN=""TOP"" WIDTH=""350"">" & rProd("Description") & "</TD>"
		Response.Write "<TD ALIGN=""RIGHT"" VALIGN=""TOP"" WIDTH=""80"">" & rProd("Size") & "</TD></TR>"
		rProd.MoveNext
	Next
%>
	</TABLE>
	<BR>
<%	
End Sub

' ----------------------------------------------

Public Sub ViewButtons()

	'VIEW MORE FILES BUTTON

	If (icount - istop) > 0 Then
%>
		<INPUT TYPE="SUBMIT" NAME="Button" VALUE="View More Files">
<%
	'VIEW PREVIOUS LIST BUTTON

	End If

	If istop > iNumofHits Then
%>
		<INPUT TYPE="SUBMIT" NAME="Button" VALUE="View Previous List">
<%
	End If

End Sub

' ----------------------------------------------

Public Sub Sendhidden()

	Response.Write "<FORM ACTION=""" & gcMainEXE & """ METHOD=""POST"">"
%>
	<!-- ******************************************** -->
	<!--  Begin hidden variable input for list count  -->
	<!-- ******************************************** -->
<%	
	Response.Write "<Input Name=""FirstVar"" Type=""Hidden"" Value=""" & ibegin & """>"
	Response.Write "<Input Name=""LastVar"" Type=""Hidden"" Value=""" & istop & """>"
	Response.Write "<Input Name=""OldSys"" Type=""Hidden"" Value=""" & strSysVar & """>"
	Response.Write "<Input Name=""OldType"" Type=""Hidden"" Value=""" & strFileType & """>"
	Response.Write "<Input Name=""OldName"" Type=""Hidden"" Value=""" & strNameofFile & """>"
	Response.Write "<Input Name=""LastSearch"" Type=""Hidden"" Value=""" & strButton & """>"
%>	
	<!-- ******************************************** -->
	<!--   End hidden variable input for list count   -->
	<!-- ******************************************** -->
<%	
End Sub

' ----------------------------------------------

Public Sub TextSearchDialogue()
%>
	<HR>
	<H4><EM><B>OR</B></EM>
	<INPUT TYPE="SUBMIT" NAME="Button" VALUE="Search For -->">
<%
	Response.Write "<INPUT TYPE=""text"" NAME=""NameofFile"" SIZE=""20"" VALUE=""" & strNameofFile & """>"
%>
	</H4>
	<HR>
<%
End Sub

' ----------------------------------------------

Public Sub SelectQuery()

	set rProd = Server.CreateObject("ADODB.Recordset")
	rProd.Open SQL, "DSN=Services;UID=ehoffman;PWD=***REDACTED***;DATABASE=Search", 3, 4
	If rProd.RecordCount > 0 Then
		rProd.MoveLast
		iCount = rProd.RecordCount
		rProd.MoveFirst
	Else
		iCount = 0
	End If

End Sub

' ----------------------------------------------

Public Function GetBulletinPath(strText)

	Select Case Right(strText, 2)
	Case "SB"
		GetBulletinPath = "SBS"
	Case "IB"
		GetBulletinPath = "IBS"
	Case "TB"
		GetBulletinPath = "TBS"
	End Select

End Function
%>