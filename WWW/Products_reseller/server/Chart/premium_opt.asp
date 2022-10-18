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
	<TITLE>Premium Series</TITLE>
</HEAD>

<BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">
<P>
<TABLE BORDER="0" CELLPADDING="0" CELLSPACING="0" WIDTH="570">
	<TR>
		<TD>&nbsp;<IMG SRC="images/server_premo.GIF" WIDTH="387" HEIGHT="128" ALIGN="BOTTOM" BORDER="0" NATURALSIZEFLAG="3"><BR>
			<BR>
			
			<TABLE BORDER="0" CELLPADDING="2" CELLSPACING="4" WIDTH="497">
				<TR BGCOLOR="#000000">
					<TH HEIGHT="20" VALIGN="BOTTOM" COLSPAN="3" BGCOLOR="#FFFFFF">
						<P ALIGN="LEFT">Premium Options
					</TH>
				</TR>
				<TR>
					<TD BGCOLOR="#E1FAE1"><FONT COLOR="#000000"><B>Option</B></FONT></TD>
					<TD BGCOLOR="#CD7407"><FONT COLOR="#000000"><B>Part Number</B></FONT></TD>
					<TD BGCOLOR="#CD7407"><FONT COLOR="#000000"><B>
										
					<% if empcheck = 0 then %>

					<%=PriceLevelName%>

					<% elseif empcheck = 1 then %>

					<%= "Pricing"%>

					<% end if %>

					</B></FONT></TD>
				</TR>
				<TR>
					<TD HEIGHT="16" VALIGN="TOP" BGCOLOR="#E1FAE1"><FONT SIZE="2">Premium Part Number</FONT></TD>
					<TD COLSPAN="2" HEIGHT="16" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2">503461</FONT></TD>
				</TR>
				<TR BGCOLOR="#FFCC00">
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#CD7407">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<FONT COLOR="#FFFFFF"><B>Memory Expansion</B></FONT></TD>
				</TR>
				<TR BGCOLOR="#C0C0C0">
					<TD HEIGHT="16" VALIGN="TOP" BGCOLOR="#E1FAE1"><FONT SIZE="2">16 MB SDRAM ECC DIMM</FONT></TD>
					<TD HEIGHT="16" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2">503456-001</FONT></TD>
					<TD HEIGHT="16" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503456-001", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD HEIGHT="16" VALIGN="TOP" BGCOLOR="#E1FAE1"><FONT SIZE="2">32 MB SDRAM ECC DIMM</FONT></TD>
					<TD HEIGHT="16" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2">503456-002</FONT></TD>
					<TD HEIGHT="16" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503456-002", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD HEIGHT="16" VALIGN="TOP" BGCOLOR="#E1FAE1"><FONT SIZE="2">64 MB SDRAM ECC DIMM</FONT></TD>
					<TD HEIGHT="16" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2">503456-003</FONT></TD>
					<TD HEIGHT="16" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503456-003", empcheck) %></FONT></TD>
				</TR>
				<TR BGCOLOR="#C0C0C0">
					<TD HEIGHT="16" VALIGN="TOP" BGCOLOR="#E1FAE1"><FONT SIZE="2">128 MB SDRAM ECC DIMM</FONT></TD>
					<TD HEIGHT="16" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2">503456-004</FONT></TD>
					<TD HEIGHT="16" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503456-004", empcheck) %></FONT></TD>
				</TR>
				<TR BGCOLOR="#FFCC00">
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#CD7407">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<FONT COLOR="#FFFFFF"><B>Mass Storage Devices/Installation</B></FONT></TD>
				</TR>
				<TR BGCOLOR="#C0C0C0">
					<TD HEIGHT="16" VALIGN="TOP" BGCOLOR="#E1FAE1"><FONT SIZE="2">4 GB Uwide SCSI 10,000 RPM</FONT></TD>
					<TD HEIGHT="16" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2">503483-003</FONT></TD>\
					<TD HEIGHT="16" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503483-003", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD HEIGHT="16" VALIGN="TOP" BGCOLOR="#E1FAE1"><FONT SIZE="2">9 GB Uwide SCSI 10,000 RPM</FONT></TD>
					<TD HEIGHT="16" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2">503483-004</FONT></TD>
					<TD HEIGHT="16" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503483-004", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD HEIGHT="16" VALIGN="TOP" BGCOLOR="#E1FAE1"><FONT SIZE="2">Hard Disk tray - Spare</FONT></TD>
					<TD HEIGHT="16" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2">503488-001</FONT></TD>
					<TD HEIGHT="16" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503488-001", empcheck) %></FONT></TD>
				</TR>
				<TR BGCOLOR="#FFCC00">
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#CD7407">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<FONT COLOR="#FFFFFF"><B>CPU Enhancements and Upgrades</B></FONT></TD>
				</TR>
				<TR BGCOLOR="#C0C0C0">
					<TD HEIGHT="16" VALIGN="TOP" BGCOLOR="#E1FAE1"><FONT SIZE="2">300 MHz Intel&reg; Pentium&reg; II ECC</FONT></TD>
					<TD HEIGHT="16" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2">503486-001</FONT></TD>
					<TD HEIGHT="16" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503486-001", empcheck) %></FONT></TD>
				</TR>
				<TR BGCOLOR="#FFCC00">
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#CD7407">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<FONT COLOR="#FFFFFF"><B>Disk Array/SCSIHBA Controllers</B></FONT></TD>
				</TR>
				<TR BGCOLOR="#C0C0C0">
					<TD HEIGHT="16" VALIGN="TOP" BGCOLOR="#E1FAE1"><FONT SIZE="2">AMI MegaRAID Ultra 3-Channel<BR>Disk Array Controller</FONT></TD>
					<TD HEIGHT="16" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2">503334-001</FONT></TD>
					<TD HEIGHT="16" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503334-001", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD HEIGHT="16" VALIGN="TOP" BGCOLOR="#E1FAE1"><FONT SIZE="2">Adaptec 2940UW SCSI Card</FONT></TD>
					<TD HEIGHT="16" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2">&nbsp;503507-001</FONT></TD>
					<TD HEIGHT="16" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503507-001", empcheck) %></FONT></TD>
				</TR>
				<TR BGCOLOR="#FFCC00">
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#CD7407">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<FONT COLOR="#FFFFFF"><B>Network Interface Cards</B></FONT></TD>
				</TR>
				<TR BGCOLOR="#C0C0C0">
					<TD VALIGN="TOP" BGCOLOR="#E1FAE1"><FONT SIZE="2">Olicom Token Ring NIC</FONT></TD>
					<TD VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2">503505-001</FONT></TD>
					<TD HEIGHT="16" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503505-001", empcheck) %></FONT></TD>
				</TR>
				<TR BGCOLOR="#C0C0C0">
					<TD HEIGHT="16" VALIGN="TOP" BGCOLOR="#E1FAE1"><FONT SIZE="2">3Com 10/100 NIC</FONT></TD>
					<TD HEIGHT="16" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2">&nbsp;503506-001</FONT></TD>
					<TD HEIGHT="16" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503506-001", empcheck) %></FONT></TD>
				</TR>
				<TR BGCOLOR="#C0C0C0">
					<TD HEIGHT="16" VALIGN="TOP" BGCOLOR="#E1FAE1"><FONT SIZE="2">Intel EtherExpress SA</FONT></TD>
					<TD HEIGHT="16" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2">503489-001</FONT></TD>
					<TD HEIGHT="16" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503489-001", empcheck) %></FONT></TD>
				</TR>
				<TR BGCOLOR="#FFCC00">
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#CD7407">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<FONT COLOR="#FFFFFF"><B>Tape Backup</B></FONT></TD>
				</TR>
				<TR BGCOLOR="#C0C0C0">
					<TD HEIGHT="16" VALIGN="TOP" BGCOLOR="#E1FAE1"><FONT SIZE="2">DAT DDS-3 24 GB Tape</FONT></TD>
					<TD HEIGHT="16" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2">503455-001</FONT></TD>
					<TD HEIGHT="16" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503455-001", empcheck) %></FONT></TD>
				</TR>
			</TABLE>
		</TD>
	</TR>
</TABLE>
</P>

<P>&nbsp;


</BODY>

</HTML>