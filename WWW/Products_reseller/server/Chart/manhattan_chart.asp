<!--#include file="../../../../OVATION.INC"-->

<HTML>

<HEAD>
<META HTTP-EQUIV="Expires" CONTENT="Tue, 25 Apr 1995 09:30:00 -0700">

	<META NAME="Author" Content="AST Computer, Inc.">
	<META HTTP-EQUIV="Content-Type" CONTENT="text/html;CHARSET=iso-8859-1">
	<TITLE>AST Computers&amp;REG;</TITLE>
</HEAD>

<BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">
<P>
<TABLE BORDER="0" CELLPADDING="10" CELLSPACING="0" WIDTH="570">
	<TR>
		<TD  VALIGN="TOP">
			<P><IMG SRC="../images/man_lead.GIF" WIDTH="387" HEIGHT="128" ALIGN="BOTTOM" BORDER="0" NATURALSIZEFLAG="3"></P>
			<P><BR>
			<BR>
			
			<TABLE BORDER="0" CELLPADDING="2" CELLSPACING="4" WIDTH="497">
				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" COLSPAN="5" BGCOLOR="#CD7407">
						<P ALIGN="LEFT"><FONT COLOR="#FFFFFF">Product Selection Table</FONT>
					</TD>
				</TR>
				<TR ALIGN="LEFT">
					<TD WIDTH="101" ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#E1FAE1">
						<P ALIGN="LEFT"><FONT SIZE="2" COLOR="#000000">Model</FONT><FONT SIZE="2"> No.</FONT>
					</TD>
					<TD  ALIGN="LEFT" VALIGN="TOP" COLSPAN="4" BGCOLOR="#FFFEE8"><FONT SIZE="2">503223-101 </FONT><FONT SIZE="2" COLOR="#000000">(2003I),<BR>
						</FONT><FONT SIZE="2">503223-201 (</FONT><FONT SIZE="2" COLOR="#000000">4003),<BR>
						</FONT><FONT SIZE="2">503223-501 (</FONT><FONT SIZE="2" COLOR="#000000">4003NT), </FONT><FONT SIZE="2"><BR>
						503223-401 </FONT><FONT SIZE="2" COLOR="#000000">(4003NT*)</FONT></TD>
				</TR>

				<% if session("source") = "ast" then %>

				<% PriceLevelCode = "1" %>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">Level 1</FONT></TD>
					<TD ALIGN="LEFT" VALIGN="TOP" COLSPAN="4" BGCOLOR="#FFFEE8"><FONT SIZE="2"><B><%=PartPrice("503223-101")%></B> (</FONT><FONT SIZE="2" COLOR="#000000">2003I),<BR>
						</FONT><FONT SIZE="2"><B><%=PartPrice("503223-201")%></B> (</FONT><FONT SIZE="2" COLOR="#000000">4003),<BR>
						</FONT><FONT SIZE="2"><B><%=PartPrice("503223-501")%></B> (</FONT><FONT SIZE="2" COLOR="#000000">4003NT), </FONT><FONT SIZE="2"><BR>
						<B><%=PartPrice("503223-401")%></B> </FONT><FONT SIZE="2" COLOR="#000000">(4003NT*)</FONT></TD>
				</TR>

				<% PriceLevelCode = "C" %>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">Level C</FONT></TD>
					<TD ALIGN="LEFT" VALIGN="TOP" COLSPAN="4" BGCOLOR="#FFFEE8"><FONT SIZE="2"><B><%=PartPrice("503223-101")%></B> (</FONT><FONT SIZE="2" COLOR="#000000">2003I),<BR>
						</FONT><FONT SIZE="2"><B><%=PartPrice("503223-201")%></B> (</FONT><FONT SIZE="2" COLOR="#000000">4003),<BR>
						</FONT><FONT SIZE="2"><B><%=PartPrice("503223-501")%></B> (</FONT><FONT SIZE="2" COLOR="#000000">4003NT), </FONT><FONT SIZE="2"><BR>
						<B><%=PartPrice("503223-401")%></B> </FONT><FONT SIZE="2" COLOR="#000000">(4003NT*)</FONT></TD>
				</TR>

				<% PriceLevelCode = "G" %>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">Est. Street Price</FONT></TD>
					<TD ALIGN="LEFT" VALIGN="TOP" COLSPAN="4" BGCOLOR="#FFFEE8"><FONT SIZE="2"><B><%=PartPrice("503223-101")%></B> (</FONT><FONT SIZE="2" COLOR="#000000">2003I),<BR>
						</FONT><FONT SIZE="2"><B><%=PartPrice("503223-201")%></B> (</FONT><FONT SIZE="2" COLOR="#000000">4003),<BR>
						</FONT><FONT SIZE="2"><B><%=PartPrice("503223-501")%></B> (</FONT><FONT SIZE="2" COLOR="#000000">4003NT), </FONT><FONT SIZE="2"><BR>
						<B><%=PartPrice("503223-401")%></B> </FONT><FONT SIZE="2" COLOR="#000000">(4003NT*)</FONT></TD>
				</TR>

				<% elseif session("source") = "ovation" then %>

				<% call GetPriceLevel %>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2"><%=PriceLevelName%></FONT></TD>
					<TD  ALIGN="LEFT" VALIGN="TOP" COLSPAN="4" BGCOLOR="#FFFEE8"><FONT SIZE="2"><B><%=PartPrice("503223-101")%></B> (</FONT><FONT SIZE="2" COLOR="#000000">2003I),<BR>
						</FONT><FONT SIZE="2"><B><%=PartPrice("503223-201")%></B> (</FONT><FONT SIZE="2" COLOR="#000000">4003),<BR>
						</FONT><FONT SIZE="2"><B><%=PartPrice("503223-501")%></B> (</FONT><FONT SIZE="2" COLOR="#000000">4003NT), </FONT><FONT SIZE="2"><BR>
						<B><%=PartPrice("503223-401")%></B> </FONT><FONT SIZE="2" COLOR="#000000">(4003NT*)</FONT></TD>
				</TR>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">Government/Educational Rebate</FONT></TD>
					<TD  ALIGN="LEFT" VALIGN="TOP" COLSPAN="4" BGCOLOR="#FFFEE8"><FONT SIZE="2"><B><%=PartRebate("503223-101")%></B> (</FONT><FONT SIZE="2" COLOR="#000000">2003I),<BR>
						</FONT><FONT SIZE="2"><B><%=PartRebate("503223-201")%></B> (</FONT><FONT SIZE="2" COLOR="#000000">4003),<BR>
						</FONT><FONT SIZE="2"><B><%=PartRebate("503223-501")%></B> (</FONT><FONT SIZE="2" COLOR="#000000">4003NT), </FONT><FONT SIZE="2"><BR>
						<B><%=PartRebate("503223-401")%></B> </FONT><FONT SIZE="2" COLOR="#000000">(4003NT*)</FONT></TD>
				</TR>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">Demo Unit Purchase Price</FONT></TD>
					<TD  ALIGN="LEFT" VALIGN="TOP" COLSPAN="4" BGCOLOR="#FFFEE8"><FONT SIZE="2"><B><%=RealPartPrice("503223-101", "C", 0.70)%></B> (</FONT><FONT SIZE="2" COLOR="#000000">2003I),<BR>
						</FONT><FONT SIZE="2"><B><%=RealPartPrice("503223-201", "C", 0.70)%></B> (</FONT><FONT SIZE="2" COLOR="#000000">4003),<BR>
						</FONT><FONT SIZE="2"><B><%=RealPartPrice("503223-501", "C", 0.70)%></B> (</FONT><FONT SIZE="2" COLOR="#000000">4003NT), </FONT><FONT SIZE="2"><BR>
						<B><%=RealPartPrice("503223-401", "C", 0.70)%></B> </FONT><FONT SIZE="2" COLOR="#000000">(4003NT*)</FONT></TD>
				</TR>

				<% end if %>

				<TR ALIGN="LEFT">
					<TD WIDTH="101" ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#E1FAE1">
						<P ALIGN="LEFT"><FONT SIZE="2">Operating System</FONT>
					</TD>
					<TD  VALIGN="TOP" COLSPAN="4" BGCOLOR="#FFFEE8"><FONT SIZE="2">Windows&reg; NT Server 4.0</FONT></TD>
				</TR>
				<TR ALIGN="LEFT">
					<TD WIDTH="101" HEIGHT="16" ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#E1FAE1">
						<P ALIGN="LEFT"><FONT SIZE="2">Processor</FONT>
					</TD>
					<TD  HEIGHT="16" VALIGN="TOP" COLSPAN="4" BGCOLOR="#FFFEE8"><FONT SIZE="2">200MHz Intel&reg; Pentium&reg; Pro</FONT></TD>
				</TR>
				<TR ALIGN="LEFT">
					<TD WIDTH="101" HEIGHT="16" ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#E1FAE1">
						<P ALIGN="LEFT"><FONT SIZE="2">Cache</FONT>
					</TD>
					<TD  HEIGHT="16" VALIGN="TOP" COLSPAN="4" BGCOLOR="#FFFEE8"><FONT SIZE="2">256KB</FONT></TD>
				</TR>
				<TR ALIGN="LEFT">
					<TD WIDTH="101" HEIGHT="16" ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#E1FAE1">
						<P ALIGN="LEFT"><FONT SIZE="2">RAM</FONT>
					</TD>
					<TD  HEIGHT="16" VALIGN="TOP" COLSPAN="4" BGCOLOR="#FFFEE8"><FONT SIZE="2">32MB (ECC)</FONT></TD>
				</TR>
				<TR ALIGN="LEFT">
					<TD WIDTH="101" HEIGHT="16" ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#E1FAE1">
						<P ALIGN="LEFT"><FONT SIZE="2">Drive Capacity</FONT>
					</TD>
					<TD  HEIGHT="16" ALIGN="LEFT" VALIGN="TOP" COLSPAN="4" BGCOLOR="#FFFEE8"><FONT SIZE="2">4GB, 2GB (2003I)</FONT></TD>
				</TR>
			</TABLE>
</P>

			<P>&nbsp;
		</TD>
	</TR>
</TABLE>



</BODY>

</HTML>