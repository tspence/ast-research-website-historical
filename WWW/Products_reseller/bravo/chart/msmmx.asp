<!--#include file="../../../../OVATION.INC"-->


<HTML>
<HEAD>
  <META NAME="GENERATOR" CONTENT="Adobe PageMill 2.0 Win">
</HEAD>
<BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">
<P><TABLE WIDTH="570" CELLPADDING="10" CELLSPACING="0" BORDER="0">
<TR>
<TD VALIGN="TOP"><P><IMG SRC="images/ms_mmx.GIF" WIDTH="387" HEIGHT="128" ALIGN="BOTTOM"
NATURALSIZEFLAG="3" BORDER="0"></P>

<P>&nbsp;</P>

<P><TABLE WIDTH="565" HEIGHT="447" BORDER="2" CELLSPACING="2" CELLPADDING=
"2">
<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="48" BGCOLOR="#fff4f2"><P ALIGN=LEFT>Model</TH>
<TD ALIGN="CENTER" BGCOLOR="#790f00"><B><FONT COLOR="#ffffff">5166M<BR>
2000C/95</FONT></B></TD>
<TD ALIGN="CENTER" BGCOLOR="#790f00"><B><FONT COLOR="#ffffff">5166M<BR>
2000C/NT</FONT></B></TD>
<TD BGCOLOR="#790f00"><P><CENTER>&nbsp;<B><FONT COLOR="#ffffff">5200M<BR>
3000C/95</FONT></B></CENTER></TD>
<TD BGCOLOR="#790f00"><P><CENTER>&nbsp;<B><FONT COLOR="#ffffff">5200M<BR>
3000C/NT</FONT></B></CENTER></TD></TR>

<TR ALIGN="CENTER">
<TH ALIGN="LEFT" BGCOLOR="#fff4f2"><P ALIGN=LEFT><FONT COLOR="#000000">Part&nbsp;# 503xxx-xxx</FONT></TH>
<TD ALIGN="CENTER"><SMALL>503320-301</SMALL></TD>
<TD ALIGN="CENTER"><SMALL>503320-201</SMALL></TD>
<TD>&nbsp;<SMALL>503323-601</SMALL></TD>
<TD>&nbsp;<SMALL>503323-501</SMALL></TD></TR>

<% if session("source") = "ast" then %>

<% PriceLevelCode = "1" %>

<TR ALIGN="CENTER">
<TH ALIGN="LEFT" BGCOLOR="#fff4f2"><P ALIGN=LEFT><FONT COLOR="#000000">Level 1</FONT></TH>
<TD ALIGN="CENTER"><SMALL><%=PartPrice("503320-301")%></SMALL></TD>
<TD ALIGN="CENTER"><SMALL><%=PartPrice("503320-201")%></SMALL></TD>
<TD>&nbsp;<SMALL><%=PartPrice("503323-601")%></TD>
<TD>&nbsp;<SMALL><%=PartPrice("503323-501")%></TD></TR>

<% PriceLevelCode = "C" %>

<TR ALIGN="CENTER">
<TH ALIGN="LEFT" BGCOLOR="#fff4f2"><P ALIGN=LEFT><FONT COLOR="#000000">Level C</FONT></TH>
<TD ALIGN="CENTER"><SMALL><%=PartPrice("503320-301")%></SMALL></TD>
<TD ALIGN="CENTER"><SMALL><%=PartPrice("503320-201")%></SMALL></TD>
<TD>&nbsp;<SMALL><%=PartPrice("503323-601")%></TD>
<TD>&nbsp;<SMALL><%=PartPrice("503323-501")%></TD></TR>

<% PriceLevelCode = "G" %>

<TR ALIGN="CENTER">
<TH ALIGN="LEFT" BGCOLOR="#fff4f2"><P ALIGN=LEFT><FONT COLOR="#000000">Est. Street Price</FONT></TH>
<TD ALIGN="CENTER"><SMALL><%=PartPrice("503320-301")%></SMALL></TD>
<TD ALIGN="CENTER"><SMALL><%=PartPrice("503320-201")%></SMALL></TD>
<TD>&nbsp;<SMALL><%=PartPrice("503323-601")%></TD>
<TD>&nbsp;<SMALL><%=PartPrice("503323-501")%></TD></TR>

<TR ALIGN="CENTER">
<TH ALIGN="LEFT" BGCOLOR="#fff4f2"><P ALIGN=LEFT><FONT COLOR="#000000">Employee Purchase Price</FONT></TH>
<TD ALIGN="CENTER"><SMALL><%=EmployeePurchasePrice("503320-301")%></SMALL></TD>
<TD ALIGN="CENTER"><SMALL><%=EmployeePurchasePrice("503320-201")%></SMALL></TD>
<TD>&nbsp;<SMALL><%=EmployeePurchasePrice("503323-601")%></TD>
<TD>&nbsp;<SMALL><%=EmployeePurchasePrice("503323-501")%></TD></TR>

<% elseif session("source") = "ovation" then %>

<% call GetPriceLevel %>
<TR ALIGN="CENTER">
<TH ALIGN="LEFT" BGCOLOR="#fff4f2"><P ALIGN=LEFT><FONT COLOR="#000000"><%=PriceLevelName%></FONT></TH>
<TD ALIGN="CENTER"><SMALL><%=PartPrice("503320-301")%></SMALL></TD>
<TD ALIGN="CENTER"><SMALL><%=PartPrice("503320-201")%></SMALL></TD>
<TD>&nbsp;<SMALL><%=PartPrice("503323-601")%></TD>
<TD>&nbsp;<SMALL><%=PartPrice("503323-501")%></TD></TR>

<TR ALIGN="CENTER">
<TH ALIGN="LEFT" BGCOLOR="#fff4f2"><P ALIGN=LEFT><FONT COLOR="#000000">Government/Educational Rebate</FONT></TH>
<TD ALIGN="CENTER"><SMALL><%=PartRebate("503320-301")%></SMALL></TD>
<TD ALIGN="CENTER"><SMALL><%=PartRebate("503320-201")%></SMALL></TD>
<TD>&nbsp;<SMALL><%=PartRebate("503323-601")%></TD>
<TD>&nbsp;<SMALL><%=PartRebate("503323-501")%></TD></TR>

<TR ALIGN="CENTER">
<TH ALIGN="LEFT" BGCOLOR="#fff4f2"><P ALIGN=LEFT><FONT COLOR="#000000">Demo Unit Purchase Price</FONT></TH>
<TD ALIGN="CENTER"><SMALL><A HREF="../../../sales_tools/demo_units/form.asp?pn=503320-301"><IMG SRC="images/tag.gif" BORDER=0></A><%=RealPartPrice("503320-301", "C", 0.85)%></SMALL></TD>
<TD ALIGN="CENTER"><SMALL><A HREF="../../../sales_tools/demo_units/form.asp?pn=503320-201"><IMG SRC="images/tag.gif" BORDER=0></A><%=RealPartPrice("503320-201", "C", 0.85)%></SMALL></TD>
<TD><SMALL><A HREF="../../../sales_tools/demo_units/form.asp?pn=503323-601"><IMG SRC="images/tag.gif" BORDER=0></A><%=RealPartPrice("503323-601", "C", 0.85)%></TD>
<TD><SMALL><A HREF="../../../sales_tools/demo_units/form.asp?pn=503323-501"><IMG SRC="images/tag.gif" BORDER=0></A><%=RealPartPrice("503323-501", "C", 0.85)%></TD></TR>

<% end if %>

<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="48" BGCOLOR="#fff4f2"><P ALIGN=LEFT><FONT COLOR="#000000">Processor</FONT></TH>
<TD COLSPAN="2"><P><CENTER><SMALL>Pentium 166Mhz with MMX Technology</SMALL></CENTER></TD>
<TD COLSPAN="2"><P><CENTER>&nbsp;<SMALL>Pentium 200Mhz with MMX Technology</SMALL></CENTER></TD></TR>
<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="28" BGCOLOR="#fff4f2"><P ALIGN=LEFT><FONT COLOR="#000000">Cache</FONT></TH>
<TD COLSPAN="4"><P><CENTER>&nbsp;<SMALL>512KB</SMALL></CENTER></TD></TR>
<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="28" BGCOLOR="#fff4f2"><P ALIGN=LEFT><FONT COLOR="#000000">RAM</FONT></TH>
<TD COLSPAN="4"><P><CENTER>&nbsp;<SMALL>32 MB</SMALL></CENTER></TD></TR>
<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="48" BGCOLOR="#fff4f2"><P ALIGN=LEFT><FONT COLOR="#000000">Ultra DMA Hard Drive</FONT></TH>
<TD COLSPAN="2"><P><CENTER><SMALL>2GB</SMALL></CENTER></TD>
<TD COLSPAN="2"><P><CENTER><SMALL>&nbsp;3GB</SMALL></CENTER></TD></TR>
<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="68" BGCOLOR="#fff4f2"><P ALIGN=LEFT><FONT COLOR="#000000">Synchronous Graphics RAM</FONT></TH>
<TD COLSPAN="4"><P><CENTER><SMALL>2 MB (6 MB max)</SMALL></CENTER></TD></TR>
<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="28" BGCOLOR="#fff4f2"><P ALIGN=LEFT><FONT COLOR="#000000">CD-ROM</FONT></TH>
<TD COLSPAN="4"><P><CENTER><SMALL>16x max</SMALL></CENTER></TD></TR>
<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="48" BGCOLOR="#fff4f2"><P ALIGN=LEFT><FONT COLOR="#000000">Operating System</FONT></TH>
<TD><P><CENTER><SMALL>Windows '95</SMALL></CENTER></TD>
<TD><P><CENTER><SMALL>Windows NT</SMALL></CENTER></TD>
<TD><P><CENTER>&nbsp;<SMALL>Windows '95</SMALL></CENTER></TD>
<TD>&nbsp;<SMALL>Windows NT</SMALL></TD></TR>
<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="28" BGCOLOR="#fff4f2"><P ALIGN=LEFT><FONT COLOR="#000000">Form Factor</FONT></TH>
<TD COLSPAN="2"><P><CENTER><SMALL>&nbsp;Desktop Case</SMALL></CENTER></TD>
<TD COLSPAN="2"><P><CENTER>&nbsp;<SMALL>Minitower</SMALL></CENTER></TD></TR>
</TABLE>
</P>

<P>&nbsp;</TD></TR>
</TABLE>
</P>

<PRE><CENTER></CENTER></PRE>
</BODY>
</HTML>
