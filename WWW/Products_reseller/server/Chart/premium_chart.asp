<!--#include file="../../../../OVATION.INC"-->

<HTML>
<HEAD>
  <META NAME="GENERATOR" CONTENT="Adobe PageMill 2.0 Win">
  <TITLE>Untitled Document</TITLE>
</HEAD>
<BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">
<P><TABLE WIDTH="570" BORDER="0" CELLSPACING="0" CELLPADDING="0">
<TR>
<TD><P><IMG SRC="../images/server_lead.GIF" WIDTH="387" HEIGHT="128"
ALIGN="BOTTOM" NATURALSIZEFLAG="3" BORDER="0"></P>

<P>&nbsp;</P>

<P><B><I><BIG>AST<BIG> </BIG>Premium</BIG><SMALL><SUP></SMALL>&REG;<BIG><BIG></SUP>
</BIG>HS<BIG> </BIG>Server</BIG></I></B> <TABLE BORDER="2" CELLSPACING=
"2" CELLPADDING="2" WIDTH="565" HEIGHT="1778">
<TR>
<TD BGCOLOR="#fff5ec" HEIGHT="48"><B>Model</B></TD>
<TD BGCOLOR="#cd7407"><P><CENTER><B><FONT COLOR="#ffffff">HS-4GB</FONT></B></CENTER></TD>
<TD BGCOLOR="#cd7407"><P><CENTER><B><FONT COLOR="#ffffff">HS-9GB</FONT></B></CENTER></TD>
<TD BGCOLOR="#cd7407"><P><CENTER>&nbsp;<B><FONT COLOR="#ffffff">HS-9GB<BR>
w/ Windows NT</FONT></B></CENTER></TD></TR>

<TR>
<TD BGCOLOR="#fff5ec" HEIGHT="48"><B>Part # 503xxx-xxx</B></TD>
<TD ALIGN="CENTER"><SMALL>&nbsp;461-401</SMALL></TD>
<TD ALIGN="CENTER"><SMALL>&nbsp;461-101</SMALL></TD>
<TD ALIGN="CENTER"><SMALL>&nbsp;461-201</SMALL></TD></TR>

<% if session("source") = "ast" then %>

<% PriceLevelCode = "1" %>

<TR>
<TD BGCOLOR="#fff5ec"><B>Level 1</B></TD>
<TD ALIGN="CENTER"><SMALL>&nbsp;<%=PartPrice("503461-401")%></SMALL></TD>
<TD ALIGN="CENTER"><SMALL>&nbsp;<%=PartPrice("503461-101")%></SMALL></TD>
<TD ALIGN="CENTER"><SMALL>&nbsp;<%=PartPrice("503461-201")%></SMALL></TD></TR>

<% PriceLevelCode = "C" %>

<TR>
<TD BGCOLOR="#fff5ec"><B>Level C</B></TD>
<TD ALIGN="CENTER"><SMALL>&nbsp;<%=PartPrice("503461-401")%></SMALL></TD>
<TD ALIGN="CENTER"><SMALL>&nbsp;<%=PartPrice("503461-101")%></SMALL></TD>
<TD ALIGN="CENTER"><SMALL>&nbsp;<%=PartPrice("503461-201")%></SMALL></TD></TR>

<% PriceLevelCode = "G" %>

<TR>
<TD BGCOLOR="#fff5ec"><B>Est. Street Price</B></TD>
<TD ALIGN="CENTER"><SMALL>&nbsp;<%=PartPrice("503461-401")%></SMALL></TD>
<TD ALIGN="CENTER"><SMALL>&nbsp;<%=PartPrice("503461-101")%></SMALL></TD>
<TD ALIGN="CENTER"><SMALL>&nbsp;<%=PartPrice("503461-201")%></SMALL></TD></TR>

<TR>
<TD BGCOLOR="#fff5ec"><B>Employee Purchase Price</B></TD>
<TD ALIGN="CENTER"><SMALL>&nbsp;<%=EmployeePurchasePrice("503461-401")%></SMALL></TD>
<TD ALIGN="CENTER"><SMALL>&nbsp;<%=EmployeePurchasePrice("503461-101")%></SMALL></TD>
<TD ALIGN="CENTER"><SMALL>&nbsp;<%=EmployeePurchasePrice("503461-201")%></SMALL></TD></TR>

<% elseif session("source") = "ovation" then %>

<% call GetPriceLevel %>

<TR>
<TD BGCOLOR="#fff5ec"><B><%=PriceLevelName%></B></TD>
<TD ALIGN="CENTER"><SMALL>&nbsp;<%=PartPrice("503461-401")%></SMALL></TD>
<TD ALIGN="CENTER"><SMALL>&nbsp;<%=PartPrice("503461-101")%></SMALL></TD>
<TD ALIGN="CENTER"><SMALL>&nbsp;<%=PartPrice("503461-201")%></SMALL></TD></TR>

<TR>
<TD BGCOLOR="#fff5ec"><B>Government/Educational Rebate</B></TD>
<TD ALIGN="CENTER"><SMALL>&nbsp;<%=PartRebate("503461-401")%></SMALL></TD>
<TD ALIGN="CENTER"><SMALL>&nbsp;<%=PartRebate("503461-101")%></SMALL></TD>
<TD ALIGN="CENTER"><SMALL>&nbsp;<%=PartRebate("503461-201")%></SMALL></TD></TR>

<TR>
<TD BGCOLOR="#fff5ec"><B>Demo Unit Purchase Price</B></TD>
<TD ALIGN="CENTER"><SMALL><A HREF="../../../sales_tools/demo_units/form.asp?pn=503461-401"><IMG SRC="images/tag.gif" BORDER=0></A><%=RealPartPrice("503461-401", "C", 0.70)%></SMALL></TD>
<TD ALIGN="CENTER"><SMALL><A HREF="../../../sales_tools/demo_units/form.asp?pn=503461-101"><IMG SRC="images/tag.gif" BORDER=0></A><%=RealPartPrice("503461-101", "C", 0.70)%></SMALL></TD>
<TD ALIGN="CENTER"><SMALL><A HREF="../../../sales_tools/demo_units/form.asp?pn=503461-201"><IMG SRC="images/tag.gif" BORDER=0></A><%=RealPartPrice("503461-201", "C", 0.70)%></SMALL></TD></TR>

<% end if %>

<TR>
<TD BGCOLOR="#fff5ec" HEIGHT="50"><B>CPU</B></TD>
<TD COLSPAN="3"><P><CENTER><SMALL>Up to two 300 MHz Intel Pentium<SUP>&REG;</SUP> II ECC
CPUs</SMALL></CENTER></TD></TR>
<TR>
<TD BGCOLOR="#fff5ec" HEIGHT="60"><B>HDD</B></TD>
<TD BGCOLOR="#ffffff" ALIGN="CENTER"><SMALL>4 GB Seagate Cheetah <BR>
10,000 RPM Ultra Wide <BR>
SCSI drives</SMALL></TD>
<TD COLSPAN="2"><P><CENTER><SMALL>9 GB Seagate Cheetah <BR>
10,000 RPM Ultra Wide <BR>
SCSI drives</SMALL>&nbsp;</CENTER></TD></TR>
<TR>
<TD BGCOLOR="#fff5ec" HEIGHT="28"><B>RAM</B></TD>
<TD COLSPAN="3"><P><CENTER><SMALL>512MB max</SMALL></CENTER></TD></TR>
<TR>
<TD BGCOLOR="#fff5ec" HEIGHT="28"><B>RAM Type</B></TD>
<TD COLSPAN="3"><P><CENTER><SMALL><A HREF="../../terms.html#sdram" TARGET="_self">SDRAM</A></SMALL></CENTER></TD></TR>
<TR>
<TD BGCOLOR="#fff5ec" HEIGHT="48"><B>Disk Drives</B></TD>
<TD COLSPAN="3"><P><CENTER><SMALL>12 internal <A HREF="../../terms.html#hot_swap" TARGET="_self">hot-swap</A>
1.0&quot; or 1.6&quot; SCA hard drives</SMALL></CENTER></TD></TR>
<TR>
<TD BGCOLOR="#fff5ec" HEIGHT="48"><B>Maximum Capacity</B></TD>
<TD COLSPAN="3"><P><CENTER><SMALL>108GB (12x9GB)</SMALL></CENTER></TD></TR>
<TR>
<TD BGCOLOR="#fff5ec" HEIGHT="28"><B>CD-ROM</B></TD>
<TD COLSPAN="3"><P><CENTER><SMALL>24X Max.</SMALL></CENTER></TD></TR>
<TR>
<TD BGCOLOR="#fff5ec" HEIGHT="44"><B>I/O Slots</B></TD>
<TD COLSPAN="3"><P><CENTER><SMALL>4 <A HREF="../../terms.html#pci" TARGET="_self">PCI</A>,
1 <A HREF="../../terms.html#isa" TARGET="_self">ISA</A>, 1 Shared PCI/ISA</SMALL></CENTER></TD></TR>
<TR>
<TD BGCOLOR="#fff5ec" HEIGHT="60"><B>I/O Connectors</B></TD>
<TD COLSPAN="3"><P><CENTER><SMALL>SVGA, 2 Serial, 1 Parallel, Keyboard, <BR>
PS/2 Mouse, 2 USB, RJ-45 Ethernet</SMALL></CENTER></TD></TR>
<TR>
<TD BGCOLOR="#fff5ec" HEIGHT="77"><B>Ethernet Type</B></TD>
<TD COLSPAN="3"><P><CENTER><SMALL>Integrated Intelligent 10/100 Intel Ethernet <BR>
with Intel i960<SUP>&REG;</SUP> RD I/O CPU</SMALL></CENTER></TD></TR>
<TR>
<TD BGCOLOR="#fff5ec" HEIGHT="60"><B>Integrated SCSI</B></TD>
<TD COLSPAN="3"><P><CENTER><SMALL>Adaptec 7880 UltraWide <A HREF="../../terms.html#SCSI" TARGET=
"_self">SCSI</A> for CD-ROM and Tape</SMALL></CENTER></TD></TR>
<TR>
<TD BGCOLOR="#fff5ec" HEIGHT="76"><B>Integrated RAID</B></TD>
<TD COLSPAN="3"><P><CENTER><SMALL>Integrated 3-channel AMI MegaRAID <BR>
UltraWide SCSI with Intel i960 RD I/O CPU</SMALL></CENTER></TD></TR>
<TR>
<TD BGCOLOR="#fff5ec" HEIGHT="76"><B>SCSI Backplane</B></TD>
<TD COLSPAN="3"><P><CENTER><SMALL>Patented impedance controlled 3-channel, <BR>
hot-swap, SCSI backplane</SMALL></CENTER></TD></TR>
<TR>
<TD BGCOLOR="#fff5ec" HEIGHT="92"><B>Power Supply</B></TD>
<TD COLSPAN="3"><P><CENTER><SMALL>Three redundant hot-swap 330W with <BR>
failure indication LEDs and manual power override</SMALL></CENTER></TD></TR>
<TR>
<TD BGCOLOR="#fff5ec" HEIGHT="48"><B>Front Panel LEDs</B></TD>
<TD COLSPAN="3"><P><CENTER><SMALL>Power, Ethernet, <A HREF="../tech_overview/server_specs.html#raid_config"
TARGET="_self">RAID</A>, Voltage, Temperature</SMALL></CENTER></TD></TR>
<TR>
<TD BGCOLOR="#fff5ec" HEIGHT="93"><B>System Monitoring</B></TD>
<TD COLSPAN="3"><P><CENTER><SMALL>I<SUP>2</SUP>C instrumentation with voltage, <BR>
temperature, fan failure and chassis intrusion detect</SMALL></CENTER></TD></TR>
<TR>
<TD BGCOLOR="#fff5ec" HEIGHT="61"><B>Operating System</B></TD>
<TD COLSPAN="3"><P><CENTER><SMALL><A HREF="../tech_overview/hard_drive_format_opts.html#microsoft_nt_server"
TARGET="_self">Windows NT&#153 Server</A> / <A HREF="../tech_overview/hard_drive_format_opts.html#netware"
TARGET="_self">Novell NetWare</A> /<BR>
<A HREF="../tech_overview/hard_drive_format_opts.html#intranetware" TARGET=
"_self">Novell IntranetWare</A></SMALL></CENTER></TD></TR>
<TR>
<TD BGCOLOR="#fff5ec" HEIGHT="44"><B>Cache</B></TD>
<TD COLSPAN="3"><P><CENTER><SMALL>512KB ECC cache per CPU</SMALL></CENTER></TD></TR>
<TR>
<TD BGCOLOR="#fff5ec" HEIGHT="48"><B>Cache Type</B></TD>
<TD COLSPAN="3"><P><CENTER><SMALL>Pipeline burst synchronous</SMALL></CENTER></TD></TR>
<TR>
<TD BGCOLOR="#fff5ec" HEIGHT="93"><B>Ergonomics</B></TD>
<TD COLSPAN="3"><P><CENTER><SMALL>AST <A HREF="../flex_chassis_server.html#flex_chassis_server"
TARGET="_self">FlexChassis</A>&#0153, front locking chassis, <BR>
removable front doors, top cover and side panels</SMALL></CENTER></TD></TR>
<TR>
<TD BGCOLOR="#fff5ec" HEIGHT="60"><B>LCD Display</B></TD>
<TD COLSPAN="3"><P><CENTER><SMALL>Front mounted LCD displays POST codes, drive status, etc.</SMALL></CENTER></TD></TR>
<TR>
<TD BGCOLOR="#fff5ec" HEIGHT="77"><B>System Software</B></TD>
<TD COLSPAN="3"><P><CENTER><SMALL>Intel LANDesk&#0153 Server Manager, <BR>
Diagnostics, CBT Systems training software</SMALL></CENTER></TD></TR>
<TR>
<TD BGCOLOR="#fff5ec" HEIGHT="76"><B>Options</B></TD>
<TD COLSPAN="3"><P><CENTER><SMALL>Sony DDS-3 tape drives, additional CPU <BR>
Ethernet controllers, hard disks, and memory</SMALL></CENTER></TD></TR>
<TR>
<TD BGCOLOR="#fff5ec" HEIGHT="88"><B>Form Factor</B></TD>
<TD COLSPAN="3"><P><CENTER><SMALL>NLX Form Factor System Board<BR>
19&quot; rack mountable system enclosure</SMALL></CENTER></TD></TR>
</TABLE>
</TD></TR>
</TABLE>
</P>

<P><TABLE WIDTH="200" BORDER="0" CELLSPACING="0" CELLPADDING="0">
<TR>
<TD>&nbsp;</TD></TR>
</TABLE>
</BODY>
</HTML>
