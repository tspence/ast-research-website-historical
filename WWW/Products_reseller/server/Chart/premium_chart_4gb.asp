<!--#include file="../../../../OVATION.INC"-->

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
		<TD><IMG SRC="../images/premiumhs_banner.GIF" WIDTH="387" HEIGHT="128" ALIGN="BOTTOM" BORDER="0"><BR>
			<BR>
			&nbsp;<BR>
<BR>

			<TABLE BORDER="0" CELLPADDING="2" CELLSPACING="4" WIDTH="497">
				<TR>
					<TD COLSPAN="4" BGCOLOR="#CD7407"><FONT COLOR="#FFFFFF"><B>HS-4GB</B></FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2" COLOR="#000000"><B>Model</B></FONT></TD>
					<TD ALIGN="LEFT" VALIGN="TOP" COLSPAN="3" BGCOLOR="#FFFEE8"><FONT SIZE="2">503461-401</FONT></TD>
				</TR>

				<% if session("source") = "ast" then %>

				<% PriceLevelCode = "1" %>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">Level 1</FONT></TD>
					<TD ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><B><%=PartPrice("503461-401")%></B></FONT></TD>
				</TR>

				<% PriceLevelCode = "C" %>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">Level C</FONT></TD>
					<TD ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><B><%=PartPrice("503461-401")%></B></FONT></TD>
				</TR>

				<% PriceLevelCode = "G" %>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">Est. Street Price</FONT></TD>
					<TD ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><B><%=PartPrice("503461-401")%></B></FONT></TD>
				</TR>

				<% elseif session("source") = "ovation" then %>

				<% call GetPriceLevel %>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2"><%=PriceLevelName%></FONT></TD>
					<TD ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><B><%=PartPrice("503461-401")%></B></FONT></TD>
				</TR>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">Government/Educational Rebate</FONT></TD>
					<TD ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><B><%=PartRebate("503461-401")%></B></FONT></TD>
				</TR>

				<TR ALIGN="LEFT">
					<TD ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">Demo Unit Purchase Price</FONT></TD>
					<TD ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><B><%=RealPartPrice("503461-401", "C", 0.70)%></B></FONT></TD>
				</TR>

				<% end if %>


				<TR>
					<TD VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">CPU</FONT></TD>
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#FFFEE8"><FONT SIZE="2">Up to two 300 MHz Intel Pentium&reg; II ECC CPUs</FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">HDD</FONT></TD>
					<TD ALIGN="LEFT" VALIGN="TOP" COLSPAN="3" BGCOLOR="#FFFEE8">
						<P ALIGN="LEFT"><FONT SIZE="2">4 GB Seagate Cheetah 10,000 RPM Ultra Wide SCSI drives</FONT>
					</TD>
				</TR>
				<TR>
					<TD VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">RAM</FONT></TD>
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#FFFEE8"><FONT SIZE="2">512MB max</FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">RAM Type</FONT></TD>
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#FFFEE8"><A HREF="../../terms.html#sdram" target="_self"><FONT SIZE="2">SDRAM</FONT></A></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">Disk Drives</FONT></TD>
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#FFFEE8"><FONT SIZE="2">12 internal </FONT><A HREF="../../terms.html#hot_swap" target="_self"><FONT SIZE="2">hot-swap</FONT></A><FONT
						SIZE="2"> 1.0&quot; or 1.6&quot; SCA hard drives</FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">Maximum Capacity</FONT></TD>
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#FFFEE8"><FONT SIZE="2">108GB (12x9GB)</FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">CD-ROM</FONT></TD>
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#FFFEE8"><FONT SIZE="2">24X Max.</FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">I/O Slots</FONT></TD>
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#FFFEE8"><FONT SIZE="2">4 </FONT><A HREF="../../terms.html#pci" target="_self"><FONT SIZE="2">PCI</FONT></A><FONT SIZE="2">,
						1 </FONT><A HREF="../../terms.html#isa" target="_self"><FONT SIZE="2">ISA</FONT></A><FONT SIZE="2">, 1 Shared PCI/ISA</FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">I/O Connectors</FONT></TD>
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#FFFEE8"><FONT SIZE="2">SVGA, 2 Serial, 1 Parallel, Keyboard, PS/2 Mouse, 2 USB, <BR>
						RJ-45 Ethernet</FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">Ethernet Type</FONT></TD>
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#FFFEE8"><FONT SIZE="2">Integrated Intelligent 10/100 Intel Ethernet with Intel i960&reg; <BR>
						RD I/O CPU</FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">Integrated SCSI</FONT></TD>
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#FFFEE8"><FONT SIZE="2">Adaptec 7880 UltraWide </FONT><A HREF="../../terms.html#SCSI" target="_self"><FONT SIZE="2">SCSI</FONT></A><FONT
						SIZE="2"> for CD-ROM and Tape</FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">Integrated RAID</FONT></TD>
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#FFFEE8"><FONT SIZE="2">Integrated 3-channel AMI MegaRAID UltraWide SCSI with Intel i960 RD I/O CPU</FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">SCSI Backplane</FONT></TD>
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#FFFEE8"><FONT SIZE="2">Patented impedance controlled 3-channel, hot-swap, SCSI backplane</FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">Power Supply</FONT></TD>
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#FFFEE8"><FONT SIZE="2">Three redundant hot-swap 330W with failure indication LEDs and manual power override</FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">Front Panel LEDs</FONT></TD>
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#FFFEE8"><FONT SIZE="2">Power, Ethernet, </FONT><A HREF="../tech_overview/server_specs.html#raid_config" target="_self"><FONT
						SIZE="2">RAID</FONT></A><FONT SIZE="2">, Voltage, Temperature</FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">System Monitoring</FONT></TD>
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#FFFEE8"><FONT SIZE="2">I<SUP>2</SUP>C instrumentation with voltage, temperature, fan failure and chassis intrusion detect</FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">Certified Operating Systems</FONT></TD>
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#FFFEE8"><A HREF="../tech_overview/hard_drive_format_opts.html#microsoft_nt_server" target="_self"><FONT SIZE="2">Windows
						NT™ Server</FONT></A><FONT SIZE="2"> / </FONT><A HREF="../tech_overview/hard_drive_format_opts.html#netware" target="_self"><FONT
						SIZE="2">Novell NetWare</FONT></A><FONT SIZE="2"> / </FONT><A HREF="../tech_overview/hard_drive_format_opts.html#intranetware"
						target="_self"><FONT SIZE="2">Novell IntranetWare</FONT></A></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">Cache</FONT></TD>
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#FFFEE8"><FONT SIZE="2">512KB ECC cache per CPU</FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">Cache Type</FONT></TD>
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#FFFEE8"><FONT SIZE="2">Pipeline burst synchronous</FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">Ergonomics</FONT></TD>
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#FFFEE8"><FONT SIZE="2">AST </FONT><A HREF="../flex_chassis_server.html#flex_chassis_server" target="_self"><FONT SIZE="2">FlexChassis</FONT></A><FONT
						SIZE="2">™, front locking chassis, removable front doors, top cover and side panels</FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">LCD Display</FONT></TD>
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#FFFEE8"><FONT SIZE="2">Front mounted LCD displays POST codes, drive status, etc.</FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">System Software</FONT></TD>
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#FFFEE8"><FONT SIZE="2">Intel LANDesk™ Server Manager, Diagnostics, CBT Systems training software</FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">Options</FONT></TD>
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#FFFEE8"><FONT SIZE="2">Sony DDS-3 tape drives, additional CPU Ethernet controllers, hard disks, and memory</FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">Form Factor</FONT></TD>
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#FFFEE8"><FONT SIZE="2">NLX Form Factor System Board 19&quot; rack mountable system enclosure</FONT></TD>
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