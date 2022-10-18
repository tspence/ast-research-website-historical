<!--#include file="../../../../OVATION.INC"-->

<HTML>

<HEAD>
	<META NAME="Author" Content="AST Computer, Inc.">
	<META HTTP-EQUIV="Content-Type" CONTENT="text/html;CHARSET=iso-8859-1">
	<TITLE>untitled</TITLE>
</HEAD>

<BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">
<P>
<TABLE BORDER="0" CELLPADDING="10" CELLSPACING="0" WIDTH="570">
	<TR>
		<TD VALIGN="TOP"><IMG SRC="../images/ms_6000_c.GIF" WIDTH="468" HEIGHT="128" ALIGN="BOTTOM" BORDER="0" NATURALSIZEFLAG="3"><BR>
<BR>
<B><I>Windows NT Systems &amp; Windows 95 Systems</I></B><BR>
			
			<TABLE BORDER="0" CELLPADDING="2" CELLSPACING="4" WIDTH="495">
				<TR ALIGN="LEFT">
					<TD HEIGHT="24" ALIGN="LEFT" VALIGN="BOTTOM" COLSPAN="4" BGCOLOR="#790F00">
						<P ALIGN="LEFT"><FONT COLOR="#FFFFFF"><b>4300C  NT/95</b></FONT>
					</TD>
				</TR>
				<TR ALIGN="LEFT">
					<TD WIDTH="290" ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2">Model</FONT>
					</TD>
					<TD ALIGN="LEFT" VALIGN="TOP" COLSPAN="3" BGCOLOR="#FFF7EF"><FONT SIZE="2" COLOR="#000000">#503</FONT><FONT SIZE="2">502-201 (NT), -101 (95)</FONT></TD>
				</TR>

				<% if session("source") = "ast" then %>

				<% PriceLevelCode = "1" %>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2">Level 1</FONT>
					</TD>
					<TD ALIGN="LEFT" BGCOLOR="#FFF7EF"><FONT SIZE="2" COLOR="#000000"><B><%=PartPrice("503502-201")%>,&nbsp&nbsp<%=PartPrice("503502-101")%></B></FONT></TD>
				</TR>

				<% PriceLevelCode = "C" %>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2">Level C</FONT>
					</TD>
					<TD ALIGN="LEFT" BGCOLOR="#FFF7EF"><FONT SIZE="2" COLOR="#000000"><B><%=PartPrice("503502-201")%>,&nbsp&nbsp<%=PartPrice("503502-101")%></B></FONT></TD>
				</TR>

				<% PriceLevelCode = "G" %>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2">Est. Street Price</FONT>
					</TD>
					<TD ALIGN="LEFT" BGCOLOR="#FFF7EF"><FONT SIZE="2" COLOR="#000000"><B><%=PartPrice("503502-201")%>,&nbsp&nbsp<%=PartPrice("503502-101")%></B></FONT></TD>
				</TR>

				<% elseif session("source") = "ovation" then %>

				<% call GetPriceLevel %>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2"><%=PriceLevelName%></FONT>
					</TD>
					<TD ALIGN="LEFT" BGCOLOR="#FFF7EF"><FONT SIZE="2" COLOR="#000000"><B><%=PartPrice("503502-201")%>,&nbsp&nbsp<%=PartPrice("503502-101")%></B></FONT></TD>
				</TR>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2">Government/Educational Rebate</FONT>
					</TD>
					<TD ALIGN="LEFT" BGCOLOR="#FFF7EF"><FONT SIZE="2" COLOR="#000000"><B><%=PartRebate("503502-201")%>,&nbsp&nbsp<%=PartRebate("503502-101")%></B></FONT></TD>
				</TR>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2">Demo Unit Purchase Price</FONT>
					</TD>
					<TD ALIGN="LEFT" BGCOLOR="#FFF7EF"><FONT SIZE="2" COLOR="#000000"><B><%=RealPartPrice("503502-201", "C", 0.85)%>,&nbsp&nbsp<%=RealPartPrice("503502-101", "C", 0.85)%></B></FONT></TD>
				</TR>

				<% end if %>

				<TR ALIGN="LEFT">
					<TD WIDTH="290" ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2" COLOR="#000000">Form Factor</FONT>
					</TD>
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#FFF7EF"><FONT SIZE="2">Mini-Tower Case</FONT></TD>
				</TR>
				<TR ALIGN="LEFT">
					<TD WIDTH="290" ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2" COLOR="#000000">Intel &reg; Pentium II &reg; Processor</FONT>
					</TD>
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#FFF7EF"><FONT SIZE="2">300Mhz</FONT></TD>
				</TR>
				<TR ALIGN="LEFT">
					<TD WIDTH="290" ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2" COLOR="#000000">Cache</FONT>
					</TD>
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#FFF7EF"><FONT SIZE="2">512KB</FONT></TD>
				</TR>
				<TR ALIGN="LEFT">
					<TD WIDTH="290" ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2" COLOR="#000000">RAM</FONT>
					</TD>
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#FFF7EF"><FONT SIZE="2">32 MB</FONT></TD>
				</TR>
				<TR ALIGN="LEFT">
					<TD WIDTH="290" ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2" COLOR="#000000">Drive Capacity</FONT>
					</TD>
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#FFF7EF"><FONT SIZE="2">4.3GB</FONT></TD>
				</TR>
				<TR ALIGN="LEFT">
					<TD WIDTH="290" ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2" COLOR="#000000">Graphics Memory</FONT>
					</TD>
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#FFF7EF"><FONT SIZE="2">2 MB/6MB max</FONT></TD>
				</TR>
				<TR ALIGN="LEFT">
					<TD WIDTH="290" ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2" COLOR="#000000">CD-ROM</FONT>
					</TD>
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#FFF7EF"><FONT SIZE="2">24x max</FONT></TD>
				</TR>
				<TR ALIGN="LEFT">
					<TD WIDTH="290" ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2" COLOR="#000000">Operating Systems</FONT>
					</TD>
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#FFF7EF"><FONT SIZE="2">Windows&reg; NT - Windows&reg; '95</FONT></TD>
				</TR>
			</TABLE>
		</TD>
	</TR>
</TABLE>

<PRE></PRE>


</BODY>

</HTML>