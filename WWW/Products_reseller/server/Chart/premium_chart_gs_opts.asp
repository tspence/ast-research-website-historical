<!--#include file="../../../../OVATION.INC"-->

<%

dim empcheck
if session("source") = "ast" then
	empcheck = 1
else
	empcheck = 0
	call GetPriceLevel
end if

%>

<HTML>

<HEAD>
	<META NAME="Author" Content="AST Computer, Inc.">
	<META HTTP-EQUIV="Content-Type" CONTENT="text/html;CHARSET=iso-8859-1">
	<TITLE>Untitled Document</TITLE>
</HEAD>

<BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">
<P>
<TABLE BORDER="0" CELLPADDING="0" CELLSPACING="0" WIDTH="570">
	<TR>
		<TD><IMG SRC="../images/premiumgs_banner_noop.GIF" WIDTH="387" HEIGHT="128" ALIGN="BOTTOM" BORDER="0"><BR>
			<BR>
			
			<TABLE BORDER="0" CELLPADDING="3" CELLSPACING="4" WIDTH="497" BGCOLOR="#FFFFFF">
				<TR>
					<TD COLSPAN="3" BGCOLOR="#CD7407"><FONT COLOR="#FFFFFF"><B>Premium GS Options</B></FONT></TD>
				</TR>
				<TR>
					<TD WIDTH="171" HEIGHT="16" VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2"><B>Product Description</B></FONT></TD>
					<TD WIDTH="143" HEIGHT="16" ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2"><B>Part Number</B></FONT></TD>

					<TD ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2"><B>

					<% if empcheck = 0 then %>

					<%=PriceLevelName%>

					<% elseif empcheck = 1 then %>

					<%="Pricing"%>

					<% end if %>

					</B></FONT></TD>

				</TR>
				<TR>
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#CD7407"><FONT SIZE="2" COLOR="#FFFFFF"><B>ECC DIMM Memory Upgrade Kits</B></FONT></TD>
				</TR>
				<TR>
					<TD WIDTH="171" VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">32MB Kit - One 32MB DIMM</FONT></TD>
					<TD WIDTH="143" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2">503544-001</FONT></TD>
					<TD VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><% call showprice("503544-001", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD WIDTH="171" VALIGN="TOP" BGCOLOR="#FFF7EF"><FONT SIZE="2">64MB Kit - One 64MB DIMM</FONT></TD>
					<TD WIDTH="143" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2">503544-002</FONT></TD>
					<TD VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><% call showprice("503544-002", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD WIDTH="171" VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">128MB Kit - One 128MB DIMM</FONT></TD>
					<TD WIDTH="143" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2">503544-003</FONT></TD>
					<TD VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503544-003", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#CD7407"><FONT SIZE="2" COLOR="#FFFFFF"><B>Intel&reg; Pentium&reg; Processor Upgrade Kits</B></FONT></TD>
				</TR>
				<TR>
					<TD WIDTH="171" VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">233MHz with 512KB L2 cache</FONT></TD>
					<TD WIDTH="143" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2">503546-001</FONT></TD>
					<TD VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503546-001", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD WIDTH="171" VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">266MHz with 512KB L2 cache</FONT></TD>
					<TD WIDTH="143" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2">503547-001</FONT></TD>
					<TD VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503547-001", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#CD7407"><FONT SIZE="2" COLOR="#FFFFFF"><B>Ultra/Wide SCSI-3 7200 RPM HD Kits</B></FONT></TD>
				</TR>
				<TR>
					<TD WIDTH="171" VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">4 GB</FONT></TD>
					<TD WIDTH="143" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2">503545-001</FONT></TD>
					<TD VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503545-001", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD WIDTH="171" VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">9 GB</FONT></TD>
					<TD WIDTH="143" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2">503545-002</FONT></TD>
					<TD VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503545-002", empcheck) %></FONT></TD>
				</TR>
			</TABLE>
		</TD>
	</TR>
</TABLE>
</P>

<P>
<TABLE BORDER="0" CELLPADDING="0" CELLSPACING="0" WIDTH="200">
	<TR>
		<TD>&nbsp;</TD>
	</TR>
</TABLE>



</BODY>

</HTML>