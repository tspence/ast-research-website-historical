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
		<TD VALIGN="TOP"><IMG SRC="../images/ascentia_lead.GIF" WIDTH="387" HEIGHT="128" ALIGN="BOTTOM" BORDER="0" NATURALSIZEFLAG="3"><BR>
			<BR>
			<FONT SIZE="4"><I><B>Windows NT 4.0 &amp; Windows 95 Systems</B></I></FONT><BR>
			
			<TABLE BORDER="0" CELLPADDING="2" CELLSPACING="4" WIDTH="497">
				<TR>
					<TD COLSPAN="2" BGCOLOR="#CBAE0E"><FONT COLOR="#FFFFFF"><B>M5230T</B></FONT></TD>
				</TR>
				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" BGCOLOR="#F9FCCF"><FONT SIZE="2">Model No.</FONT></TD>
					<TD ALIGN="LEFT" BGCOLOR="#FFFEE8"><FONT SIZE="2">#503432-901 (NT), -801 (95)</FONT></TD>
				</TR>

				<% if session("source") = "ast" then %>

				<% PriceLevelCode = "1" %>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#F9FCCF"><FONT SIZE="2">Level 1</FONT></TD>
					<TD ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><B><%=PartPrice("503432-901")%>,&nbsp&nbsp<%=PartPrice("503432-801")%></B></FONT></TD>
				</TR>

				<% PriceLevelCode = "C" %>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#F9FCCF"><FONT SIZE="2">Level C</FONT></TD>
					<TD ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><B><%=PartPrice("503432-901")%>,&nbsp&nbsp<%=PartPrice("503432-801")%></B></FONT></TD>
				</TR>

				<% PriceLevelCode = "G" %>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#F9FCCF"><FONT SIZE="2">Est. Street Price</FONT></TD>
					<TD ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><B><%=PartPrice("503432-901")%>,&nbsp&nbsp<%=PartPrice("503432-801")%></B></FONT></TD>
				</TR>

				<% elseif session("source") = "ovation" then %>

				<% call GetPriceLevel %>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#F9FCCF"><FONT SIZE="2"><%=PriceLevelName%></FONT></TD>
					<TD ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><B><%=PartPrice("503432-901")%>,&nbsp&nbsp<%=PartPrice("503432-801")%></B></FONT></TD>
				</TR>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#F9FCCF"><FONT SIZE="2">Government/Educational Rebate</FONT></TD>
					<TD ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><B><%=PartRebate("503432-901")%>,&nbsp&nbsp<%=PartRebate("503432-801")%></B></FONT></TD>
				</TR>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#F9FCCF"><FONT SIZE="2">Demo Unit Purchase Price</FONT></TD>
					<TD ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><B><%=RealPartPrice("503432-901", "1", 0.93)%>,&nbsp&nbsp<%=RealPartPrice("503432-801", "1", 0.93)%></B></FONT></TD>
				</TR>

				<% end if %>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" BGCOLOR="#F9FCCF"><FONT SIZE="2">Intel&reg; Pentium&reg; processor with MMX Technology</FONT></TD>
					<TD ALIGN="LEFT" BGCOLOR="#FFFEE8"><A HREF="../tech_overview/tech_overview.html#pentium" target="_self"><FONT SIZE="2">233 MHz</FONT></A></TD>
				</TR>
				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" BGCOLOR="#F9FCCF"><FONT SIZE="2">Color LCD Size &amp; Type</FONT></TD>
					<TD ALIGN="LEFT" BGCOLOR="#FFFEE8"><FONT SIZE="2">12.1&quot; SVGA TFT</FONT></TD>
				</TR>
				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" BGCOLOR="#F9FCCF"><FONT SIZE="2">Hard Drive</FONT></TD>
					<TD ALIGN="LEFT" BGCOLOR="#FFFEE8"><FONT SIZE="2">3.3 GB</FONT></TD>
				</TR>
				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" BGCOLOR="#F9FCCF"><FONT SIZE="2">Standard RAM</FONT></TD>
					<TD BGCOLOR="#FFFEE8"><FONT SIZE="2">32 MB&nbsp;</FONT></TD>
				</TR>
				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" BGCOLOR="#F9FCCF"><FONT SIZE="2">CD-ROM Drive</FONT></TD>
					<TD BGCOLOR="#FFFEE8"><FONT SIZE="2">20x maximum&nbsp;</FONT></TD>
				</TR>
				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" BGCOLOR="#F9FCCF"><FONT SIZE="2">Operating Systems</FONT></TD>
					<TD BGCOLOR="#FFFEE8"><FONT SIZE="2">Windows&reg; NT - Windows&reg; '95&nbsp;</FONT></TD>
				</TR>
			</TABLE>
<BR>
			<BR>
			&nbsp;</TD>
	</TR>
</TABLE>
</P>
<P>&nbsp;</P>

<P>&nbsp;


</BODY>

</HTML>