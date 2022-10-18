<%@ LANGUAGE="VBSCRIPT" 
    Option Explicit
%>

<HTML>
<HEAD>
<TITLE>Year 2000 </TITLE>
</HEAD>
<BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">
<%
' BEGIN LIST OF GLOBAL VARIABLES -----------------------------------

	Dim strVar1
	'Dim strVar2
	Dim rData
	'Dim iCount

' END LIST OF GLOBAL VARIABLES -----------------------------------

' BEGIN LIST OF CONSTANTS -----------------------------------



' END LIST OF CONSTANTS -----------------------------------


'BEGIN MAIN SUB -----------------------------------


	'use the following if form method is POST
	strVar1 = Trim(Request.Form("Var1"))

	'use the following if form method is GET
	'strVar2 = Request.QueryString("Var2")


	set rData = Server.CreateObject("ADODB.Recordset")
	rData.Open "Select * from Y2K where Pn = '" + strVar1 + "'", "DSN=Services;UID=sa;PWD=***REDACTED***;DATABASE=Y2K", 3, 4

	If rData.RecordCount > 0 Then
%>


<h3><i>Year 2000 Search Results</i></h3>
      
	<TABLE BORDER="1" ALIGN="DEFAULT" WIDTH="570" BGCOLOR="WHITE">
		<TR><TD bgcolor="silver" ALIGN="LEFT" VALIGN="TOP" WIDTH="15%"><b>Part Number</b></TD>
		<TD bgcolor="silver" ALIGN="LEFT" VALIGN="TOP" WIDTH="25%"><B>Model Number</B></TD>
		<TD  bgcolor="silver" ALIGN="LEFT" VALIGN="TOP" WIDTH="50%"><B>Action</B></TD>
	     </TR>
<%
		Response.Write "<TR><TD ALIGN=""LEFT"" VALIGN=""TOP"" WIDTH=""10%"">" & rData("Pn") & "</TD>"
		Response.Write "<TD ALIGN=""LEFT"" VALIGN=""TOP"" WIDTH=""25%"">" & rData("Model") & "</TD>"
	if rdata("Action")= "TSR: Download the Terminate and Stay Resident Fix." then
		response.write "<TD ALIGN=""LEFT"" VALIGN=""TOP"" WIDTH=""50%""><A HREF=""support/SBS/0445SB.HTM""><b> TSR: </b></a>Download the Terminate and Stay Resident Fix.</TD></TR></TABLE>"
	else		
		Response.Write "<TD ALIGN=""LEFT"" VALIGN=""TOP"" WIDTH=""50%"">" &  rData("Action") & "</TD></TR></TABLE></p>"
	end if
%>

        <form method="POST" action="../scripts/y2k.asp">
          <p><font face="default">Search for another AST system:</font><input type="text"
          name="var1" size="6"><input type="submit" value="Submit" name="b1"> </p>
        </form>

	<center><b><a href="../y2k1.htm">Return to the main Year 2000 page</a></b></center>  
<%
	Else
		Response.Write "<P><b>You entered an invalid part number! Please try again. Note: If your system was manufactured in 1997 or later, it may not appear in this database. These systems are year 2000 compliant.</b></P>"
%>
<table border="0" width="570">
  <tr>
    <td><table border="0" width="570">
      <tr>
        <td valign="top" width="93%"><form method="POST" action="../scripts/y2k.asp">
          <p><font face="default">The 50???? part number of my system is:</font><input type="text"
          name="var1" size="6"><input type="submit" value="Submit" name="b1"> </p>
        </form>
        <p><font face="default">If you want to check year 2000 information for multiple AST systems, then select a product line from the list box</font>
        <form method="POST" action="../scripts/y2k1.asp">
          <p><select name="y2k" size="1">
            <option value="y2kadv.htm">Advantage! &amp; Adventure!</option>
            <option value="y2kdesk.htm">Desktops</option>
            <option value="y2kport.htm">Portables</option>
            <option value="y2kserv.htm">Servers</option>
          </select><input type="submit" name="select" value="NEXT&gt;">
        </form><p>
       <a href="../y2k1.htm"><center><b>Return to the main year 2000 page.</b></center></a>
       </td>
      </tr>
    </table>
    </td>
  </tr>
</table>
<%

	End If

	rData.Close

%>
	</BODY>
	</HTML>
<%

'END MAIN SUB -----------------------------------
%>
