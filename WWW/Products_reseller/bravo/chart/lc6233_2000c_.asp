<!--#include file="../../../../OVATION.INC"-->

<HTML>

<HEAD>
	<META NAME="Author" Content="AST Computer, Inc.">
	<META HTTP-EQUIV="Content-Type" CONTENT="text/html;CHARSET=iso-8859-1">
	<TITLE>LC6233 2000C/NT</TITLE>
</HEAD>

<BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">
<P>
<TABLE BORDER="0" CELLPADDING="10" CELLSPACING="0" WIDTH="570">
	<TR>
		<TD VALIGN="TOP">
			<P><IMG SRC="../images/lc_6233.GIF" WIDTH="387" HEIGHT="128" ALIGN="BOTTOM" BORDER="0" NATURALSIZEFLAG="3"></P>
			<P>&nbsp;</P>

			<P>
			<TABLE BORDER="0" CELLPADDING="2" CELLSPACING="4" WIDTH="497">
				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" COLSPAN="2" BGCOLOR="#790F00"><FONT COLOR="#FFFFFF"><B>2000C &nbsp;&nbsp; NT / 95</B></FONT></TD>
				</TR>
				<TR ALIGN="LEFT">
					<TD WIDTH="308" ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FBF1F0"><FONT SIZE="2">Model</FONT></TD>
					<TD ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF7EF"><FONT SIZE="2" COLOR="#000000">#503361-101 (NT), -201 ('95)</FONT></TD>
				</TR>

				<% if session("source") = "ast" then %>

				<% PriceLevelCode = "1" %>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" BGCOLOR="#FBF1F0">
						<P ALIGN="LEFT"><FONT SIZE="2">Level 1</FONT>
					</TD>
					<TD ALIGN="LEFT" BGCOLOR="#FFF7EF"><FONT SIZE="2" COLOR="#000000"><B><%=PartPrice("503361-101")%>,&nbsp&nbsp<%=PartPrice("503361-201")%></B></FONT></TD>
				</TR>

				<% PriceLevelCode = "C" %>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" BGCOLOR="#FBF1F0">
						<P ALIGN="LEFT"><FONT SIZE="2">Level C</FONT>
					</TD>
					<TD ALIGN="LEFT" BGCOLOR="#FFF7EF"><FONT SIZE="2" COLOR="#000000"><B><%=PartPrice("503361-101")%>,&nbsp&nbsp<%=PartPrice("503361-201")%></B></FONT></TD>
				</TR>

				<% PriceLevelCode = "G" %>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" BGCOLOR="#FBF1F0">
						<P ALIGN="LEFT"><FONT SIZE="2">Est. Street Price</FONT>
					</TD>
					<TD ALIGN="LEFT" BGCOLOR="#FFF7EF"><FONT SIZE="2" COLOR="#000000"><B><%=PartPrice("503361-101")%>,&nbsp&nbsp<%=PartPrice("503361-201")%></B></FONT></TD>
				</TR>

				<% elseif session("source") = "ovation" then %>

				<% call GetPriceLevel %>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" BGCOLOR="#FBF1F0">
						<P ALIGN="LEFT"><FONT SIZE="2"><%=PriceLevelName%></FONT>
					</TD>
					<TD ALIGN="LEFT" BGCOLOR="#FFF7EF"><FONT SIZE="2" COLOR="#000000"><B><%=PartPrice("503361-101")%>,&nbsp&nbsp<%=PartPrice("503361-201")%></B></FONT></TD>
				</TR>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" BGCOLOR="#FBF1F0">
						<P ALIGN="LEFT"><FONT SIZE="2">Government/Educational Rebate</FONT>
					</TD>
					<TD ALIGN="LEFT" BGCOLOR="#FFF7EF"><FONT SIZE="2" COLOR="#000000"><B><%=PartRebate("503361-101")%>,&nbsp&nbsp<%=PartRebate("503361-201")%></B></FONT></TD>
				</TR>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" BGCOLOR="#FBF1F0">
						<P ALIGN="LEFT"><FONT SIZE="2">Demo Unit Purchase Price</FONT>
					</TD>
					<TD ALIGN="LEFT" BGCOLOR="#FFF7EF"><FONT SIZE="2" COLOR="#000000"><B><%=RealPartPrice("503361-101", "C", 0.85)%>,&nbsp&nbsp<%=RealPartPrice("503361-201", "C", 0.85)%></B></FONT></TD>
				</TR>

				<% end if %>


				<TR ALIGN="LEFT">
					<TD WIDTH="308" ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FBF1F0"><FONT SIZE="2" COLOR="#000000">Processor</FONT></TD>
					<TD VALIGN="TOP" BGCOLOR="#FFF7EF"><FONT SIZE="2">Pentium&reg; II-233 Mhz</FONT></TD>
				</TR>
				<TR ALIGN="LEFT">
					<TD WIDTH="308" ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FBF1F0"><FONT SIZE="2" COLOR="#000000">Cache</FONT></TD>
					<TD VALIGN="TOP" BGCOLOR="#FFF7EF"><FONT SIZE="2">512KB</FONT></TD>
				</TR>
				<TR ALIGN="LEFT">
					<TD WIDTH="308" ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FBF1F0"><FONT SIZE="2" COLOR="#000000">RAM</FONT></TD>
					<TD VALIGN="TOP" BGCOLOR="#FFF7EF"><FONT SIZE="2">32 MB</FONT></TD>
				</TR>
				<TR ALIGN="LEFT">
					<TD WIDTH="308" ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FBF1F0"><FONT SIZE="2" COLOR="#000000">Drive Capacity</FONT></TD>
					<TD VALIGN="TOP" BGCOLOR="#FFF7EF"><FONT SIZE="2">2GB</FONT></TD>
				</TR>
				<TR ALIGN="LEFT">
					<TD WIDTH="308" ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FBF1F0"><FONT SIZE="2" COLOR="#000000">Graphics Memory</FONT></TD>
					<TD VALIGN="TOP" BGCOLOR="#FFF7EF"><FONT SIZE="2">2 MB</FONT></TD>
				</TR>
				<TR ALIGN="LEFT">
					<TD WIDTH="308" ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FBF1F0"><FONT SIZE="2" COLOR="#000000">CD-ROM</FONT></TD>
					<TD VALIGN="TOP" BGCOLOR="#FFF7EF"><FONT SIZE="2">16x max</FONT></TD>
				</TR>
				<TR ALIGN="LEFT">
					<TD WIDTH="308" ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FBF1F0"><FONT SIZE="2" COLOR="#000000">Operating Systems</FONT></TD>
					<TD VALIGN="TOP" BGCOLOR="#FFF7EF"><FONT SIZE="2" COLOR="#000000">2000C/NT: Windows&reg; NT<BR>
						2000C/95: Windows&reg; '95</FONT></TD>
				</TR>
			</TABLE>

		</TD>
	</TR>
</TABLE>



</BODY>

</HTML>