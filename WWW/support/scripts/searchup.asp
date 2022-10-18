<%@ LANGUAGE="VBSCRIPT" 
    Option Explicit
%>

<HTML>
<HEAD>
<TITLE>Search Maintenance by Eldon L. Hoffman Jr.</TITLE>
</HEAD>
<BODY>
<%

' BEGIN LIST OF GLOBAL VARIABLES -----------------------------------

	Dim strBinDesc
	Dim strBinBulletin
	Dim iBinSize
	Dim strBinSize
	Dim strName
	Dim strBinPath
	Dim strBinType
	Dim strButton
	Dim strSection
	Dim strAction
	Dim gcMainEXE
	Dim iRecordcount
	Dim strNameSeek
	Dim strPage
	Dim aBinAbrevProd
	Dim aBinFullProd
	Dim aBinRadio
	Dim aBinChecks
	Dim strForm
	Dim aBulAbrTopic
	Dim aBulFullTopic
	Dim aBulType
	Dim aBulProducts
	Dim aBulChecks
	Dim strBulDesc
	Dim strBulProduct
	Dim strBulType
	Dim Conn
	Dim iNumofBinProducts
	Dim iNumofRadioButtons
	Dim iNumofBulTopics
	Dim DBTopicNames
	Dim DBProdNames
	Dim iNumofBulProducts
	Dim iNumofBulTypes
	Dim Errormessage

' END LIST OF GLOBAL VARIABLES -----------------------------------

' BEGIN LIST OF CONSTANTS -----------------------------------

	aBinAbrevProd = Array ("AdvAdven", "AdvD", "AdvN", "Adven", "Asc", "BravoD", "BravoN", "Man", "PExec", "PPrem", "PremD", "PremExec", "PremS", "Premmia", "Tandy", "Vintage", "Misc")
	aBinFullProd = Array ("Advantage! Adventure!", "Advantage! Desktop", "Advantage! Notebook", "Adventure!", "Ascentia", "Bravo Desktop", "Bravo Notebook", "Manhattan", "PowerExec", "Power Premium", "Premium", "Premium Exec", "Premium Server", "Premmia", "Tandy and Grid", "Vintage Products", "Miscellaneous")
	DBProdNames = Array("", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "")
	aBinChecks = Array("", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "")
	iNumofBinProducts = 16

'	-----------------------------------------------------------------------------------------
'	ALL MEMBERS OF THE ARRAY GROUP FOR BINARY FILES MUST BE CHANGED IF AN ITEM IS ADDED OR
'	REMOVED aBinAbrevProd, aBinFullProd, DBProdNames, and aBinChecks must all have the exact
'	same number of elements iNumofBinProducts must be set to equal the number of elements in
'	aBinFullProd beginning the count from zero, not one.  Therefore, if aBinFullProd contains
'	17 elements, set iNumofBulTopics to 16 
'	THESE BINARY FILE ARRAYS MUST MATCH THE ARRAYS IN WEBFILES.ASP
'	-----------------------------------------------------------------------------------------

	aBinRadio = Array ("CD", "Modem", "BIOS", "Sound", "Video", "Misc")
	iNumofRadioButtons = 5

'	-----------------------------------------------------------------------------------------
	aBulAbrTopic = Array("APM", "Applications", "Batteries", "BIOS", "Drives", "IOPorts", "Memory", "Modems", "Network", "OS", "Hardware", "PCMCIA", "Peripherals", "Sound", "MLBs", "ThirdParty", "Upgrades", "Video")
	aBulFullTopic = Array("Advanced Power Management (APM)", "Applications", "Batteries", "BIOS", "Drives", "I/O Ports", "Memory (Cache, Video, and RAM)", "Modems", "Network Issues", "Operating Systems", "Other Hardware", "PCMCIA", "Peripherals", "Sound", "System Boards", "Third-Party Applications", "Upgrades", "Video")
	DBTopicNames = Array("", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "")
	aBulChecks = Array("", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "")
	iNumofBulTopics = 17

'	-----------------------------------------------------------------------------------------
'	ALL MEMBERS OF THE ARRAY GROUP FOR BULLETIN FILES MUST BE CHANGED IF AN ITEM IS ADDED OR
'	REMOVED aBulAbrTopic, aBulFullTopic, DBTopicNames, and aBulChecks must all have the exact
'	same number of elements iNumofBulTopics must be set to equal the number of elements in
'	aBulFullTopic beginning the count from zero, not one.  Therefore, if aBulFullTopic 
'	contains 18 elements, set iNumofBulTopics to 17
'	THESE BULLETIN FILE ARRAYS MUST MATCH THE ARRAYS IN BULLETIN.ASP
'	-----------------------------------------------------------------------------------------

	aBulProducts = Array("Desktop or Minitower", "Portable", "Server", "Vintage", "Miscellaneous")
	iNumofBulProducts = 4
	aBulType = Array ("Informational", "Software", "Technical")
	iNumofBulTypes = 2

'	-----------------------------------------------------------------------------------------

	gcMainEXE = "../scripts/searchup.asp"

' END LIST OF CONSTANTS -----------------------------------


'BEGIN MAIN SUB -----------------------------------

	SQL = ""
	strButton = trim(request.form("Button"))
	strSection = trim(request.form("Section"))
	strAction = trim(request.form("Action"))
	strPage = trim(request.form("Page"))

	Select Case strPage

	Case "Go! Page"
		If strAction = "Add" Then
			If strSection = "Binary File" Then
				BinAddVarSet
				Createbinaryform
				Additbutton
				Binaryformend
			Else  'strSection = "Bulletin"
				BulAddVarSet
				Createbulform
				Additbutton
				Bulformend
			End If
		Else  'strAction = DELETE or MODIFY
			DisplayNameEntryBox
		End If

	Case "Enter! Page"

		If strSection = "Binary File" Then
			BinDelModVarSet
			If iRecordcount <> 0 Then
				Createbinaryform
				If strAction = "Delete" Then
					Deleteitbutton
				Else
					Modifyitbutton
				End If
				Binaryformend
			Else
				DisplayNameEntryBox
			End If
		Else  'strSection = "Bulletin"
			BulDelModVarSet
			If iRecordcount <> 0 Then
				Createbulform
				If strAction = "Delete" Then
					Deleteitbutton
				Else
					Modifyitbutton
				End If
				Bulformend
			Else
				DisplayNameEntryBox
			End If
		End If

	Case "Add it! Page"

		If strSection = "Binary File" Then
			GetBinaryHTMLInputs
			If strForm = "OK" Then
				AddBinaryInputs
			Else
				Response.Write "<P ALIGN=""CENTER"">" & Errormessage & "</P>"				
				Createbinaryform
				Additbutton
				Binaryformend
			End If
		Else ' strSection = Bulletin
			GetBulHTMLInputs
			If strForm = "OK" Then
				AddBulInputs
			Else
				Response.Write "<P ALIGN=""CENTER"">" & Errormessage & "</P>"				
				Createbulform
				Additbutton
				Bulformend
			End If
		End If
		If strForm = "OK" Then
			Response.Write "<FORM ACTION=""" & gcMainEXE & """ METHOD=""POST"">"
			Response.Write "<INPUT TYPE=""Hidden"" NAME=""Section"" VALUE=""" & strSection & """>"
			Response.Write "<INPUT TYPE=""Hidden"" NAME=""Action"" VALUE=""" & strAction & """>"
			Response.Write "</FORM>"
			Response.Write "<P ALIGN=""LEFT"">All records for " & strName & " have been added to Search.</P>"
			Response.Write "<P ALIGN=""LEFT"">To add another record, click on Go!</P>"
			Response.Write "<P ALIGN=""LEFT"">Otherwise, make a new selection and click on Go!</P>"
		End If

	Case "Delete it! Page"
		OpenSearch
		strName = trim(request.form("Name"))
		If strSection = "Binary File" Then
			Conn.Execute "DELETE FROM FileList WHERE Name = '" + strName + "'"
			Conn.Execute "DELETE FROM FileSystem WHERE Name = '" + strName + "'"
		Else 'strSection = Bulletin
			Conn.Execute "DELETE FROM BulletinDetails WHERE Name = '" + strName + "'"
			Conn.Execute "DELETE FROM BulletinTopicList WHERE Name = '" + strName + "'"
		End If
		Conn.Close
		Response.Write "<FORM ACTION=""" & gcMainEXE & """ METHOD=""POST"">"
		Response.Write "<P ALIGN=""LEFT"">All records for " & strName & " have been deleted from Search.</P>"
		Response.Write "<P ALIGN=""LEFT"">To delete another record, click on Go!</P>"
		Response.Write "<P ALIGN=""LEFT"">Otherwise, make a new selection and click on Go!</P>"
		Response.Write "</FORM>"

	Case "Modify it! Page"

		If strSection = "Binary File" Then
			GetBinaryHTMLInputs
			UpdateBinaryTextInputs
			UpdateBinaryBoxInputs
		Else 'strSection = Bulletin
			GetBulHTMLInputs
			UpdateBulTextInputs
			UpdateBulBoxInputs
		End If
		Response.Write "<FORM ACTION=""" & gcMainEXE & """ METHOD=""POST"">"
		Response.Write "<P ALIGN=""LEFT"">All records for " & strName & " have been updated in Search.</P>"
		Response.Write "<P ALIGN=""LEFT"">To update another record, click on Go!</P>"
		Response.Write "<P ALIGN=""LEFT"">Otherwise, make a new selection and click on Go!</P>"
		Response.Write "</FORM>"

	Case Else
		Response.Write "<p></p><FONT FACE=""Times New Roman,Times,New York"">"
		Response.Write "<P>Welcome to the Search database maintenance utility.</P>"
		Response.Write "<P>With this utility, you can add new bulletin and binary file listings, you can delete outdated or erroneous bulletin and binary file listings, and you can modify existing bulletin and binary file listings.  Make your selections and click on ""Go!"" to begin.</P>"
		Response.Write "</FONT>"

	End Select

%>
	</BODY>
	</HTML>
<%

'END MAIN SUB -----------------------------------

Public Sub BinAddVarSet()

	strBinPath = ""
	strName = ""
	iBinSize = 0
	strBinBulletin = "NA"
	strBinDesc = ""
	strBinType = "nul"
	
End Sub

' ----------------------------------------------------

Public Sub BulAddVarSet()

	strName = ""
	strBulDesc = ""
	strBulProduct = ""
	strBulType = ""

End Sub

' ----------------------------------------------------

Public Sub BinDelModVarSet()

	Dim oFile
	Dim oProduct
	Dim PPP
	Dim ZZZ
	Dim iProductcount
    
	strNameSeek = trim(request.form("NameSeek"))
	If strNameSeek = "" Then
		Response.Write "<p align=""center"">You must enter a file name before clicking on Enter!</p>"
	Else
		set oFile = Server.CreateObject("ADODB.Recordset")
		oFile.Open "SELECT * FROM FileList WHERE Name = '" + strNameSeek + "'", "dsn=support;UID=ehoffman;PWD=***REDACTED***;DATABASE=Search", 3, 4

		If oFile.RecordCount > 0 Then
			oFile.MoveLast
			iRecordcount = oFile.RecordCount
			oFile.MoveFirst
			strName = oFile("Name")
			strBinPath = oFile("Path")
			iBinSize = oFile("Size")
			strBinBulletin = oFile("Bulletin")
			strBinDesc = oFile("Description")
			strBinType = oFile("Type")
			oFile.Close

			set oProduct = Server.CreateObject("ADODB.Recordset")
			oProduct.Open "SELECT ProductName FROM FileSystem WHERE Name = '" + strNameSeek + "'", "dsn=support;UID=ehoffman;PWD=***REDACTED***;DATABASE=Search", 3, 4
			If oProduct.RecordCount > 0 Then
				oProduct.MoveLast
				iProductcount = oProduct.RecordCount
				oProduct.MoveFirst
				For ZZZ = 1 To iProductcount
					For PPP = 0 to iNumofBinProducts
						If aBinFullProd(PPP) = oProduct("ProductName") Then
							aBinChecks(PPP) = "Checked"
							PPP = iNumofBinProducts
						End If
					Next
				If ZZZ <> iProductcount Then
					oProduct.MoveNext
				End If
				Next
				oProduct.Close
			End If
		Else
			iRecordcount = 0
     		      Response.Write "<p align=""center"">" & strNameSeek & " is not currently listed in the Search database.</p>"
           		Response.Write "<p align=""center"">Enter another file name or choose another selection.</p>"
			oFile.Close
		End If
	End If

End Sub

' ----------------------------------------------------

Public Sub BulDelModVarSet()

	Dim oFile
	Dim oProduct
	Dim PPP
	Dim ZZZ
	Dim iProductcount
    
	strNameSeek = trim(request.form("NameSeek"))
	If strNameSeek = "" Then
		Response.Write "<p align=""center"">You must enter a file name before clicking on Enter!</p>"
	Else
		set oFile = Server.CreateObject("ADODB.Recordset")
		oFile.Open "SELECT * FROM BulletinDetails WHERE Name = '" + strNameSeek + "'", "dsn=support;UID=ehoffman;PWD=***REDACTED***;DATABASE=Search", 3, 4

		If oFile.RecordCount > 0 Then
			oFile.MoveLast
			iRecordcount = oFile.RecordCount
			oFile.MoveFirst
			strName = oFile("Name")
			strBulProduct = oFile("Product")
			strBulDesc = oFile("Description")
			strBulType = oFile("Bulletin")
			oFile.Close

			set oProduct = Server.CreateObject("ADODB.Recordset")
			oProduct.Open "SELECT Topic FROM BulletinTopicList WHERE Name = '" + strNameSeek + "'", "dsn=support;UID=ehoffman;PWD=***REDACTED***;DATABASE=Search", 3, 4
			If oProduct.RecordCount > 0 Then
				oProduct.MoveLast
				iProductcount = oProduct.RecordCount
				oProduct.MoveFirst
				For ZZZ = 1 To iProductcount
					For PPP = 0 to iNumofBulTopics
						If aBulFullTopic(PPP) = oProduct("Topic") Then
							aBulChecks(PPP) = "Checked"
							PPP = iNumofBulTopics
						End If
					Next
				If ZZZ <> iProductcount Then
					oProduct.MoveNext
				End If
				Next
				oProduct.Close
			End If

		Else
			iRecordcount = 0
			Response.Write "<p align=""center"">" & strNameSeek & " is not currently listed in the Search database.</p>"
			Response.Write "<p align=""center"">Enter another file name or choose another selection.</p>"
			oFile.Close
		End If
	End If

End Sub

' ----------------------------------------------------

Public Sub Createbinaryform()

	response.write "<FORM ACTION=""" & gcMainEXE & """ METHOD=""POST"">"
	response.write "<INPUT TYPE=""Hidden"" NAME=""Section"" VALUE=""" & strSection & """>"
	response.write "<INPUT TYPE=""Hidden"" NAME=""Action"" VALUE=""" & strAction & """>"
%>
	<TABLE BORDER="0" ALIGN="DEFAULT" WIDTH="100%" BGCOLOR="WHITE">
	<!-- ROW 1 -->
	<TR>
	<TD ALIGN="LEFT" WIDTH="100%">
<%
	If strPage = "Enter! Page" Then
		response.write "<B>Name: </B>" & strName
		response.write "<INPUT TYPE=""Hidden"" NAME=""Name"" VALUE=""" & strName & """>"
	Else '= Go! Delete! Add! Modify!
		response.write "<B>Name: </B><INPUT TYPE=""TEXT"" NAME=""Name"" SIZE=""25"" VALUE=""" & strName & """>"
	End If
%>
	<B>Path: </B>
<%
	response.write "<INPUT TYPE=""TEXT"" NAME=""Path"" SIZE=""15"" VALUE=""" & strBinPath & """>"
%>
	<B>Size: </B>
<%
	response.write "<INPUT TYPE=""TEXT"" NAME=""Size"" SIZE=""15"" VALUE=""" & iBinSize & """>"
%>
	<B>Mentioned in Bulletin: </B>
<%
	response.write "<INPUT TYPE=""TEXT"" NAME=""Bulletin"" SIZE=""10"" MAXLENGTH=""6"" VALUE=""" & strBinBulletin & """>"
%>
	<BR>
	<B>Description: </B>
<%
	response.write "<INPUT TYPE=""TEXT"" NAME=""Description"" SIZE=""75"" VALUE=""" & strBinDesc & """>"
%>
	<BR>
	</TD>
	</TR>
	<!-- ROW 2 -->
	<TR>
	<TD>
	<TABLE BORDER="1" ALIGN="DEFAULT" WIDTH="100%" BGCOLOR="WHITE">
	<TR>
	<TD ALIGN="CENTER" WIDTH="20%">
	<B><U>File Category</U></B></TD>
	<TD ALIGN="CENTER" WIDTH="80%">
	<B><U>Product Selection</U></B></TD>
	</TR>
	<TR>
	<TD WIDTH="20%">
<%

	Radiobutton

%>
	</TD>
	<TD WIDTH="80%">
<%

	Productcheckbox

%>
	</TD>
	</TR>
	</TABLE>
	</TD>
	</TR>
	<!-- ROW 3 -->
	<TR>
	<TD ALIGN="CENTER">
<%
    
End Sub

' ----------------------------------------------------

Public Sub Createbulform()

	response.write "<FORM ACTION=""" & gcMainEXE & """ METHOD=""POST"">"
	response.write "<INPUT TYPE=""Hidden"" NAME=""Section"" VALUE=""" & strSection & """>"
	response.write "<INPUT TYPE=""Hidden"" NAME=""Action"" VALUE=""" & strAction & """>"
%>
	<TABLE BORDER="0" ALIGN="DEFAULT" WIDTH="100%" BGCOLOR="WHITE">
	<!-- ROW 1 -->
	<TR>
	<TD ALIGN="LEFT" WIDTH="100%">
	<TABLE BORDER="0" ALIGN="DEFAULT" WIDTH="100%" BGCOLOR="WHITE">
	<TR>
	<TD ALIGN="LEFT" WIDTH="70%">
<%
	If strPage = "Enter! Page" Then
		response.write "<B>Name: </B>" & strName
		response.write "<INPUT TYPE=""Hidden"" NAME=""Name"" VALUE=""" & strName & """>"
	Else   ' = Go! Delete! Add! Modify!
		response.write "<B>Name: </B><INPUT TYPE=""TEXT"" NAME=""Name"" SIZE=""25"" VALUE=""" & strName & """>"
	End If
%>
	</TD>
	<TD ALIGN="LEFT" WIDTH="30%">
<%
	Typelistbox
%>
	</TD>
	</TR>
	<TR>
	<TD ALIGN="LEFT" WIDTH="70%">
	<B>Description: </B>
<%
	response.write "<INPUT TYPE=""TEXT"" NAME=""Description"" SIZE=""75"" VALUE=""" & strBulDesc & """>"
%>
	</TD>
	<TD ALIGN="LEFT" WIDTH="30%">
<%
	Productlistbox
%>
	</TD>
	</TR>
	</TABLE>
	</TD>
	</TR>
	<!-- ROW 2 -->
	<TR>
	<TD>
	<TABLE BORDER="1" ALIGN="DEFAULT" WIDTH="100%" BGCOLOR="WHITE">
	<TR>
	<TD ALIGN="LEFT" WIDTH="50%">
<%
	TopicCheckBox
%>
	</TD>
	</TR>
	</TABLE>
	<!-- ROW 3 -->
	<TR>
	<TD ALIGN="CENTER">
<%
	' a button will go in row three
    
End Sub

' ----------------------------------------------------

Public Sub Binaryformend()

%>
	</TD>
	</TR>
	</TABLE>
	</FORM>
<%

End Sub

' ----------------------------------------------------

Public Sub Radiobutton()

	Dim RRR

%>
	<!-- ********************************************** -->
	<!-- Begin Radio Button for FileType variable input -->
	<!-- ********************************************** -->
<%

	For RRR = 0 to iNumofRadioButtons
		If UCase(aBinRadio(RRR)) = UCase(strBinType) Then
			Response.Write "<INPUT TYPE=""radio"" NAME=""FileType"" VALUE=""" & aBinRadio(RRR) & """ CHECKED=""CHECKED""><B>" & aBinRadio(RRR) & "</B>"
		Else
			Response.Write "<INPUT TYPE=""radio"" NAME=""FileType"" VALUE=""" & aBinRadio(RRR) & """><B>" + aBinRadio(RRR) + "</B>"
		End If
	If RRR <> iNumofRadioButtons Then
		Response.Write "<BR>"
	End If
	Next
%>  
	<!-- ******************************************** -->
	<!-- End Radio Button for FileType variable input -->
	<!-- ******************************************** -->
<%

End Sub

' ----------------------------------------------------

Public Sub Productcheckbox()

	Dim PPP
	Dim strChecked
%>
	<TABLE BORDER="0" ALIGN="DEFAULT" WIDTH="100%" BGCOLOR="WHITE">
	<TR>
	<TD>
<%

	For PPP = 0 to iNumofBinProducts
		strChecked = aBinChecks(PPP)
		If UCase(strChecked) = UCase("Checked") Then
			Response.Write "<INPUT TYPE=""checkbox"" NAME=""" & aBinAbrevProd(PPP) & """ VALUE=""" & aBinFullProd(PPP) & """ CHECKED=""" & strChecked & """>"
		Else
			Response.Write "<INPUT TYPE=""checkbox"" NAME=""" & aBinAbrevProd(PPP) & """ VALUE=""" & aBinFullProd(PPP) & """>"
            End If
		Response.Write "<B>" & aBinFullProd(PPP) & "</B>"

            If (PPP <> Int(iNumofBinProducts/2)) and (PPP <> iNumofBinProducts) Then
                Response.Write "<BR>"
            ElseIf PPP = Int(iNumofBinProducts/2) Then
                Response.Write "</TD>"
                Response.Write "<TD>"
            End If
	Next
%>
	</TD>
	</TR>
	</TABLE>
<%

End Sub

' ----------------------------------------------------

Public Sub TopicCheckBox()

	Dim PPP
	Dim strChecked

	For PPP = 0 to iNumofBulTopics
		strChecked = aBulChecks(PPP)
		If UCase(strChecked) = UCase("Checked") Then
			Response.Write "<INPUT TYPE=""checkbox"" NAME=""" & aBulAbrTopic(PPP) & """ VALUE=""" & aBulFullTopic(PPP) & """ CHECKED=""" & strChecked & """>"
		Else
			Response.Write "<INPUT TYPE=""checkbox"" NAME=""" & aBulAbrTopic(PPP) & """ VALUE=""" & aBulFullTopic(PPP) & """>"
            End If
		Response.Write "<B>" & aBulFullTopic(PPP) & "</B>"
		If (PPP <> Int(iNumofBulTopics/2)) and (PPP <> iNumofBulTopics) Then
			Response.Write "<BR>"
		ElseIf PPP = Int(iNumofBulTopics/2) Then
			Response.Write "</TD>"
			Response.Write "<TD ALIGN=""LEFT"" WIDTH=""50%"">"
		End If
	Next

End Sub

' ----------------------------------------------------

Public Sub Typelistbox()

	Dim XXX

%>
	<SELECT NAME="BULTYPE">
<%
	For XXX = 0 to iNumofBulTypes
		If UCase(aBulType(XXX)) = UCase(strBulType) Then
			Response.Write "<OPTION SELECTED VALUE=""" & aBulType(XXX) & """>" & aBulType(XXX) & "</OPTION>"
		Else
			Response.Write "<OPTION VALUE=""" & aBulType(XXX) & """>" & aBulType(XXX) & "</OPTION>"
		End If
	Next
%>
	</SELECT>
<%

End Sub

' ----------------------------------------------------


Public Sub Productlistbox()

	Dim XXX

%>
	<SELECT NAME="BULPRODUCT">
<%
	For XXX = 0 to iNumofBulProducts
		If UCase(aBulProducts(XXX)) = UCase(strBulProduct) Then
			Response.Write "<OPTION SELECTED VALUE=""" & aBulProducts(XXX) & """>" & aBulProducts(XXX) & "</OPTION>"
		Else
			Response.Write "<OPTION VALUE=""" & aBulProducts(XXX) & """>" & aBulProducts(XXX) & "</OPTION>"
		End If
	Next
%>
	</SELECT>
<%

End Sub

' ----------------------------------------------------

Public Sub Bulformend()
%>
	</TD>
	</TR>
	</TABLE>
	</FORM>
<%
End Sub

' ----------------------------------------------------

Public Sub Additbutton()
%>
	<INPUT TYPE="SUBMIT" NAME="Button" VALUE="Add it!">
	<INPUT TYPE="HIDDEN" NAME="Page" VALUE="Add it! Page">
<%
End Sub

' ----------------------------------------------------

Public Sub Deleteitbutton()
%>
	<INPUT TYPE="SUBMIT" NAME="Button" VALUE="Delete it!">
	<INPUT TYPE="HIDDEN" NAME="Page" VALUE="Delete it! Page">
<%
End Sub

' ----------------------------------------------------

Public Sub Modifyitbutton()

%>
	<INPUT TYPE="SUBMIT" NAME="Button" VALUE="Modify it!">
	<INPUT TYPE="HIDDEN" NAME="Page" VALUE="Modify it! Page">
<%

End Sub

' ----------------------------------------------------

Public Sub DisplayNameEntryBox()

	Response.Write "<FORM ACTION=""" & gcMainEXE & """ METHOD=""POST"">"
	Response.Write "<P ALIGN=""CENTER"">Enter the name of the " & strSection & " that you wish to " & strAction & " below:</P>"

%>
	<P ALIGN="CENTER"><INPUT TYPE="TEXT" NAME="NameSeek" SIZE="25"></P>
	<P ALIGN="CENTER"><INPUT TYPE="SUBMIT" NAME="Button" VALUE="Enter!"></P>
<%
	Response.Write "<INPUT TYPE=""Hidden"" NAME=""Section"" VALUE=""" & strSection & """>"
	Response.Write "<INPUT TYPE=""Hidden"" NAME=""Action"" VALUE=""" & strAction & """>"
%>
	<INPUT TYPE="Hidden" NAME="Page" VALUE="Enter! Page">
	</FORM>
<%

End Sub

' ----------------------------------------------------

Public Sub GetBinaryHTMLInputs()

	Dim XXX
	Dim PPP
	Dim strBinAbrevProd
	Dim strBinFullProd
	Dim strChecker	

	strBinPath = trim(request.form("Path"))
	strName = trim(request.form("Name"))
	iBinSize = Int(trim(request.form("Size")))
	strBinBulletin = trim(request.form("Bulletin"))
	strBinDesc = trim(request.form("Description"))
	strBinType = trim(request.form("FileType"))

	strChecker = ""

	For PPP = 0 to iNumofBinProducts
		strBinAbrevProd = aBinAbrevProd(PPP)
		strBinFullProd = aBinFullProd(PPP)
		strChecker = trim(request.form(strBinAbrevProd))
		If strBinFullProd = strChecker Then
			aBinChecks(PPP) = "Checked"
		End If
	Next

	strForm = "incomplete"

	If (strBinPath <> "") and (strName <> "") and (iBinSize > 0) and (strBinDesc <> "") and (strBinType <> "") and (strBinBulletin <> "") Then
		For XXX = 0 to iNumofBinProducts
			If aBinChecks(XXX) = "Checked" Then
				strForm = "OK"
			End If
		Next
	End If
	If strForm = "OK" Then
		'check for na or a valid bulletin name in the mentioned in bulletin text box
		If TestBulletinName(strBinBulletin) = "invalid" Then
			Errormessage = "PLEASE CORRECT THE BULLETIN NAME (I.E. 1997TB) OR ENTER NA IF NO BULLETIN APPLIES."
			strForm = "incomplete"
		End If
	Else
		Errormessage = "PLEASE COMPLETE THE FORM."
	End If

End Sub

' ----------------------------------------------------

Public Function TestBulletinName(strText)

	If Len(strText) = 6 Then
		Select Case Right(strText, 2)
		Case "SB"
			TestBulletinName = "valid"
		Case "IB"
			TestBulletinName = "valid"
		Case "TB"
			TestBulletinName = "valid"
		Case Else
			TestBulletinName = "invalid"
		End Select
	Else
		TestBulletinName = "invalid"
	End If

End Function

' ----------------------------------------------------

Public Sub GetBulHTMLInputs()

	Dim XXX
	Dim PPP
	Dim strChecker
	Dim strBulAbrTopic
	Dim strBulFullTopic

	strName = trim(request.form("Name"))
	strBulDesc = trim(request.form("Description"))
	strBulProduct = trim(request.form("BulProduct"))
	strBulType = trim(request.form("BulType"))

	strChecker = ""

	For PPP = 0 to iNumofBulTopics
		strBulAbrTopic = aBulAbrTopic(PPP)
		strBulFullTopic = aBulFullTopic(PPP)
		strChecker = trim(request.form(strBulAbrTopic))
		If strBulFullTopic = strChecker Then
			aBulChecks(PPP) = "Checked"
		End If
	Next

	strForm = "incomplete"

	If (strName <> "") and (strBulDesc <> "") Then
		For XXX = 0 to iNumofBulTopics
			If UCase(aBulChecks(XXX)) = UCase("Checked") Then
				strForm = "OK"
			End If
		Next
	End If
	If strForm = "OK" Then
		'check for na or a valid bulletin name in the mentioned in bulletin text box
		If UCase(TestBulletinName(strName)) = UCase("invalid") Then
			Errormessage = "PLEASE CORRECT THE BULLETIN NAME (I.E. 1997TB)."
			strForm = "incomplete"
		End If
	Else
		Errormessage = "PLEASE COMPLETE THE FORM."
	End If

End Sub

' ----------------------------------------------------

Public Sub AddBinaryInputs()

	Dim XXX
	Dim strFullProd
	Dim strCheck

	OpenSearch
	Conn.Execute "INSERT INTO FileList (Path, Name, Size, Type, Description, Bulletin) VALUES ('" & strBinPath & "', '" & strName & "', " & iBinSize & ", '" & strBinType & "', '" & strBinDesc & "', '" & strBinBulletin & "')"

	For XXX = 0 To iNumofBinProducts
		strCheck = aBinChecks(XXX)
		If UCase(strCheck) = UCase("Checked") Then
			strFullProd = aBinFullProd(XXX)
			sql = "INSERT INTO FileSystem (Name, ProductName) VALUES ('" & strName & "', '" & strFullProd & "')"
			Conn.Execute sql
		End If
	Next
	sql=""
	Conn.Close
End Sub

' ----------------------------------------------------

Public Sub AddBulInputs()

	Dim XXX
	Dim strFullProd
	Dim strCheck

	sql = ""
	OpenSearch
	Conn.Execute "INSERT INTO BulletinDetails (Name, Product, Description, Bulletin) VALUES ('" & strName & "', '" & strBulProduct & "', '" & strBulDesc & "', '" & strBulType & "')"

	For XXX = 0 To iNumofBulTopics
		strCheck = aBulChecks(XXX)
		If UCase(strCheck) = UCase("Checked") Then
			strFullProd = aBulFullTopic(XXX)
			Conn.Execute "INSERT INTO BulletinTopicList (Name, Topic) VALUES ('" & strName & "', '" & strFullProd & "')"
		End If
	Next
	Conn.Close

End Sub

' ----------------------------------------------------

Public Sub UpdateBinaryTextInputs()

	Dim strBinSize

	SQL = ""
	OpenSearch
	strBinSize = CStr(iBinSize)
	SQL = "UPDATE FileList SET Path = '" + strBinPath + "', Type = '" + strBinType + "', Size = " + strBinSize + ", Bulletin = '" + strBinBulletin + "', Description = '" + strBinDesc + "' WHERE Name = '" + strName + "'"
	Conn.Execute SQL
	Conn.Close

End Sub

' ----------------------------------------------------

Public Sub UpdateBulTextInputs()

	SQL = ""
	OpenSearch
	SQL = "UPDATE BulletinDetails SET Product = '" + strBulProduct + "', Description = '" + strBulDesc + "', Bulletin = '" + strBulType + "' WHERE Name = '" + strName + "'"
	Conn.Execute SQL
	Conn.Close

End Sub

' ----------------------------------------------------

Public Sub UpdateBinaryBoxInputs()

	Dim XXX
	Dim strBinProduct
	Dim oFile
	Dim YYY

	set oFile = Server.CreateObject("ADODB.Recordset")
	oFile.Open "SELECT * FROM FileSystem WHERE Name='" + strName + "'", "dsn=support;UID=ehoffman;PWD=***REDACTED***;DATABASE=Search", 3, 4

	If oFile.RecordCount > 0 Then
		oFile.MoveFirst
		Do Until oFile.EOF
			For YYY = 0 to iNumofBinProducts
				If oFile("ProductName") = aBinFullProd(YYY) Then
					DBProdNames(YYY) = oFile("ProductName")
					YYY = iNumofBinProducts
				End If
			Next
			oFile.MoveNext
		Loop
	End If
	oFile.Close
	sql = ""
	OpenSearch
	For XXX = 0 To iNumofBinProducts
		strBinProduct = aBinFullProd(XXX)
		If DBProdNames(XXX) <> "" Then    'it is in the database
			If aBinChecks(XXX) = "" Then
				Conn.Execute "DELETE FROM FileSystem WHERE Name = '" + strName + "' AND ProductName = '" + strBinProduct + "'"
			End If
		Else                               'it is not in the database
			If UCase(aBinChecks(XXX)) = UCase("Checked") Then
				Conn.Execute "INSERT INTO FileSystem (Name, ProductName) VALUES ('" & strName & "', '" & strBinProduct & "')"
			End If
		End If
	Next
	Conn.Close

End Sub

' ----------------------------------------------------

Public Sub UpdateBulBoxInputs()
    
	Dim XXX
	Dim strFullTopic
	Dim oFile
	Dim YYY

	set oFile = Server.CreateObject("ADODB.Recordset")
	oFile.Open "SELECT * FROM BulletinTopicList WHERE Name = '" + strName + "'", "dsn=support;UID=ehoffman;PWD=***REDACTED***;DATABASE=Search", 3, 4

	If oFile.RecordCount > 0 Then
		oFile.MoveFirst
		Do Until oFile.EOF
			For YYY = 0 to iNumofBulTopics
				If oFile("Topic") = aBulFullTopic(YYY) Then
					DBTopicNames(YYY) = oFile("Topic")
					YYY = iNumofBulTopics
				End If
			Next
			oFile.MoveNext
		Loop
	End If
	oFile.Close

	sql = ""
	OpenSearch
	For XXX = 0 To iNumofBulTopics
		strFullTopic = aBulFullTopic(XXX)
		If DBTopicNames(XXX) <> "" Then    'it is in the database
			If aBulChecks(XXX) = "" Then
				sql = "DELETE FROM BulletinTopicList WHERE Name = '" + strName + "' AND Topic = '" + strFullTopic + "'"
				Conn.Execute sql
			End If
		Else                               'it is not in the database
			If UCase(aBulChecks(XXX)) = UCase("Checked") Then
				sql = "INSERT INTO BulletinTopicList (Name, Topic) VALUES ('" & strName & "', '" & strFullTopic & "')"
				Conn.Execute sql
			End If
		End If
	Next
	Conn.Close

End Sub

' ----------------------------------------------------

Public Sub OpenSearch()

	set Conn = Server.CreateObject("ADODB.Connection")
	If SQL = "" Then
		Conn.Open "dsn=support;uid=ehoffman;pwd=***REDACTED***;database=search"
	Else
		Conn.Open SQL, "dsn=support;UID=ehoffman;PWD=***REDACTED***;DATABASE=Search", 3, 4
	End If

End Sub

%>
