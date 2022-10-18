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
		<TD VALIGN="TOP"><IMG SRC="../images/ms_5200.GIF" WIDTH="387" HEIGHT="128" ALIGN="BOTTOM" BORDER="0" NATURALSIZEFLAG="3"><BR>
			<BR>
			&nbsp;<BR>
			<BR>
			<B><I>Windows NT systems &amp; Windows 95 systems</I></B><BR>
			
			<TABLE BORDER="0" CELLPADDING="2" CELLSPACING="4" WIDTH="497">
				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" VALIGN="TOP" COLSPAN="2" BGCOLOR="#790F00"><FONT COLOR="#FFFFFF"><B>3000C&nbsp;&nbsp;&nbsp;NT/95</B></FONT></TD>
				</TR>
				<TR ALIGN="LEFT">
					<TH ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2">Model</FONT>
					</TH>
					<TD ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF7EF"><FONT SIZE="2" COLOR="#000000">#503</FONT><FONT SIZE="2">248-301 ('95), -401 (NT)</FONT></TD>
				</TR>

				<% if session("source") = "ast" then %>

				<% PriceLevelCode = "1" %>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2"><B>Level 1</B></FONT>
					</TD>
					<TD ALIGN="LEFT" BGCOLOR="#FFF7EF"><FONT SIZE="2" COLOR="#000000"><B><%=PartPrice("503248-301")%>,&nbsp&nbsp<%=PartPrice("503248-401")%></B></FONT></TD>
				</TR>

				<% PriceLevelCode = "C" %>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2"><B>Level C</B></FONT>
					</TD>
					<TD ALIGN="LEFT" BGCOLOR="#FFF7EF"><FONT SIZE="2" COLOR="#000000"><B><%=PartPrice("503248-301")%>,&nbsp&nbsp<%=PartPrice("503248-401")%></B></FONT></TD>
				</TR>

				<% PriceLevelCode = "G" %>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2"><B>Est. Street Price</B></FONT>
					</TD>
					<TD ALIGN="LEFT" BGCOLOR="#FFF7EF"><FONT SIZE="2" COLOR="#000000"><B><%=PartPrice("503248-301")%>,&nbsp&nbsp<%=PartPrice("503248-401")%></B></FONT></TD>
				</TR>

				<% elseif session("source") = "ovation" then %>

				<% call GetPriceLevel %>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2"><B><%=PriceLevelName%></B></FONT>
					</TD>
					<TD ALIGN="LEFT" BGCOLOR="#FFF7EF"><FONT SIZE="2" COLOR="#000000"><B><%=PartPrice("503248-301")%>,&nbsp&nbsp<%=PartPrice("503248-401")%></B></FONT></TD>
				</TR>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2"><B>Government/Educational Rebate</B></FONT>
					</TD>
					<TD ALIGN="LEFT" BGCOLOR="#FFF7EF"><FONT SIZE="2" COLOR="#000000"><B><%=PartRebate("503248-301")%>,&nbsp&nbsp<%=PartRebate("503248-401")%></B></FONT></TD>
				</TR>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2"><B>Demo Unit Purchase Price</B></FONT>
					</TD>
					<TD ALIGN="LEFT" BGCOLOR="#FFF7EF"><FONT SIZE="2" COLOR="#000000"><B><%=RealPartPrice("503248-301", "C", 0.85)%>,&nbsp&nbsp<%=RealPartPrice("503248-401", "C", 0.85)%></B></FONT></TD>
				</TR>

				<% end if %>

				<TR ALIGN="LEFT">
					<TH ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2" COLOR="#000000">Processor</FONT>
					</TH>
					<TD VALIGN="TOP" BGCOLOR="#FFF7EF"><FONT SIZE="2">Pentium&reg; 200Mhz</FONT></TD>
				</TR>
				<TR ALIGN="LEFT">
					<TH ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2" COLOR="#000000">Cache</FONT>
					</TH>
					<TD VALIGN="TOP" BGCOLOR="#FFF7EF"><FONT SIZE="2">512KB</FONT></TD>
				</TR>
				<TR ALIGN="LEFT">
					<TH ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2" COLOR="#000000">RAM</FONT>
					</TH>
					<TD VALIGN="TOP" BGCOLOR="#FFF7EF"><FONT SIZE="2">32 MB</FONT></TD>
				</TR>
				<TR ALIGN="LEFT">
					<TH ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2" COLOR="#000000">Ultra DMA Hard Drive</FONT>
					</TH>
					<TD VALIGN="TOP" BGCOLOR="#FFF7EF"><FONT SIZE="2">3 GB</FONT></TD>
				</TR>
				<TR ALIGN="LEFT">
					<TH ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2" COLOR="#000000">Synchronous Graphics RAM</FONT>
					</TH>
					<TD VALIGN="TOP" BGCOLOR="#FFF7EF"><FONT SIZE="2">2 MB (6 MB max)</FONT></TD>
				</TR>
				<TR ALIGN="LEFT">
					<TH ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2" COLOR="#000000">CD-ROM</FONT>
					</TH>
					<TD VALIGN="TOP" BGCOLOR="#FFF7EF"><FONT SIZE="2">16x max</FONT></TD>
				</TR>
				<TR ALIGN="LEFT">
					<TH ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2" COLOR="#000000">Operating Systems</FONT>
					</TH>
					<TD VALIGN="TOP" BGCOLOR="#FFF7EF"><FONT SIZE="2">Windows&reg; NT - Windows&reg; '95</FONT></TD>
				</TR>
				<TR ALIGN="LEFT">
					<TH ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF4F2">
						<P ALIGN="LEFT"><FONT SIZE="2" COLOR="#000000">Form Factor</FONT>
					</TH>
					<TD VALIGN="TOP" BGCOLOR="#FFF7EF"><FONT SIZE="2">Desktop Case</FONT></TD>
				</TR>
			</TABLE>
		</TD>
	</TR>
</TABLE>



</BODY>

</HTML>