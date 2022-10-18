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
		<TD VALIGN="TOP">
			<P><IMG SRC="../images/ms_mmx.GIF" WIDTH="387" HEIGHT="128" ALIGN="BOTTOM" BORDER="0" NATURALSIZEFLAG="3"></P>
			<P>&nbsp;</P>
			<P>
			<TABLE BORDER="0" CELLPADDING="2" CELLSPACING="4" WIDTH="497">
				<TR ALIGN="LEFT">
					<TH ALIGN="LEFT" VALIGN="TOP" COLSPAN="5" BGCOLOR="#790F00">
						<P ALIGN="LEFT">&nbsp;<FONT COLOR="#FFFFFF">5200M&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3000C&nbsp;&nbsp;&nbsp;&nbsp;NT/95</FONT>
					</TH>
				</TR>
				<TR ALIGN="LEFT">
					<TH ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2">Model</FONT>
					</TH>
					<TD ALIGN="LEFT" VALIGN="TOP" COLSPAN="4" BGCOLOR="#FFF7EF"><FONT SIZE="2" COLOR="#000000">#503</FONT><FONT SIZE="2">323-501 (NT), -601 (95)</FONT></TD>
				</TR>

				<% if session("source") = "ast" then %>

				<% PriceLevelCode = "1" %>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2"><B>Level 1</B></FONT>
					</TD>
					<TD ALIGN="LEFT" BGCOLOR="#FFF7EF"><FONT SIZE="2" COLOR="#000000"><B><%=PartPrice("503323-501")%>,&nbsp&nbsp<%=PartPrice("503323-601")%></B></FONT></TD>
				</TR>

				<% PriceLevelCode = "C" %>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2"><B>Level C</B></FONT>
					</TD>
					<TD ALIGN="LEFT" BGCOLOR="#FFF7EF"><FONT SIZE="2" COLOR="#000000"><B><%=PartPrice("503323-501")%>,&nbsp&nbsp<%=PartPrice("503323-601")%></B></FONT></TD>
				</TR>

				<% PriceLevelCode = "G" %>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2"><B>Est. Street Price</B></FONT>
					</TD>
					<TD ALIGN="LEFT" BGCOLOR="#FFF7EF"><FONT SIZE="2" COLOR="#000000"><B><%=PartPrice("503323-501")%>,&nbsp&nbsp<%=PartPrice("503323-601")%></B></FONT></TD>
				</TR>

				<% elseif session("source") = "ovation" then %>

				<% call GetPriceLevel %>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2"><B><%=PriceLevelName%></B></FONT>
					</TD>
					<TD ALIGN="LEFT" BGCOLOR="#FFF7EF"><FONT SIZE="2" COLOR="#000000"><B><%=PartPrice("503323-501")%>,&nbsp&nbsp<%=PartPrice("503323-601")%></B></FONT></TD>
				</TR>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2"><B>Government/Educational Rebate</B></FONT>
					</TD>
					<TD ALIGN="LEFT" BGCOLOR="#FFF7EF"><FONT SIZE="2" COLOR="#000000"><B><%=PartRebate("503323-501")%>,&nbsp&nbsp<%=PartRebate("503323-601")%></B></FONT></TD>
				</TR>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2"><B>Demo Unit Purchase Price</B></FONT>
					</TD>
					<TD ALIGN="LEFT" BGCOLOR="#FFF7EF"><FONT SIZE="2" COLOR="#000000"><B><%=RealPartPrice("503323-501", "C", 0.85)%>,&nbsp&nbsp<%=RealPartPrice("503323-601", "C", 0.85)%></B></FONT></TD>
				</TR>

				<% end if %>

				<TR ALIGN="LEFT">
					<TH ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2" COLOR="#000000">Processor</FONT>
					</TH>
					<TD VALIGN="TOP" COLSPAN="4" BGCOLOR="#FFF7EF"><FONT SIZE="2">Pentium&reg; 200Mhz with MMX Technology</FONT></TD>
				</TR>
				<TR ALIGN="LEFT">
					<TH ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2" COLOR="#000000">Cache</FONT>
					</TH>
					<TD VALIGN="TOP" COLSPAN="4" BGCOLOR="#FFF7EF"><FONT SIZE="2">512KB</FONT></TD>
				</TR>
				<TR ALIGN="LEFT">
					<TH ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2" COLOR="#000000">RAM</FONT>
					</TH>
					<TD VALIGN="TOP" COLSPAN="4" BGCOLOR="#FFF7EF"><FONT SIZE="2">32 MB</FONT></TD>
				</TR>
				<TR ALIGN="LEFT">
					<TH ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2" COLOR="#000000">Ultra DMA Hard Drive</FONT>
					</TH>
					<TD VALIGN="TOP" COLSPAN="4" BGCOLOR="#FFF7EF"><FONT SIZE="2">3GB</FONT></TD>
				</TR>
				<TR ALIGN="LEFT">
					<TH ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2" COLOR="#000000">Synchronous Graphics RAM</FONT>
					</TH>
					<TD VALIGN="TOP" COLSPAN="4" BGCOLOR="#FFF7EF"><FONT SIZE="2">2 MB (6 MB max)</FONT></TD>
				</TR>
				<TR ALIGN="LEFT">
					<TH ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2" COLOR="#000000">CD-ROM</FONT>
					</TH>
					<TD VALIGN="TOP" COLSPAN="4" BGCOLOR="#FFF7EF"><FONT SIZE="2">16x max</FONT></TD>
				</TR>
				<TR ALIGN="LEFT">
					<TH ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2" COLOR="#000000">Operating Systems</FONT>
					</TH>
					<TD VALIGN="TOP" COLSPAN="4" BGCOLOR="#FFF7EF"><FONT SIZE="2">Windows&reg; NT - Windows&reg; '95</FONT></TD>
				</TR>
				<TR ALIGN="LEFT">
					<TH ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2" COLOR="#000000">Form Factor</FONT>
					</TH>
					<TD VALIGN="TOP" COLSPAN="4" BGCOLOR="#FFF7EF"><FONT SIZE="2">Minitower</FONT></TD>
				</TR>
			</TABLE>
</P>

			<P>&nbsp;
		</TD>
	</TR>
</TABLE>

<PRE></PRE>


</BODY>

</HTML>