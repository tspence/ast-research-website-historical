<!--#include file="../../../../OVATION.INC"-->


<HTML>
<HEAD>
  <META NAME="GENERATOR" CONTENT="Adobe PageMill 2.0 Win">
</HEAD>
<BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">
<TABLE WIDTH="570" CELLPADDING="10" CELLSPACING="0" BORDER="0">
<TR>
<TD VALIGN="TOP"><P><IMG SRC="images/lc_6233.GIF" WIDTH="387" HEIGHT="128" ALIGN="BOTTOM"
NATURALSIZEFLAG="3" BORDER="0"></P>

<P>&nbsp;</P>

<P><TABLE WIDTH="400" HEIGHT="276" BORDER="2" CELLSPACING="2" CELLPADDING=
"2">
<TR ALIGN="CENTER">
<TH ALIGN="LEFT" WIDTH="35%" HEIGHT="27" BGCOLOR="#fff4f2"><P ALIGN=LEFT>Model</TH>
<TD ALIGN="CENTER" WIDTH="33%" BGCOLOR="#790f00"><B><FONT COLOR="#ffffff">2000C/NT</FONT></B></TD>
<TD BGCOLOR="#790f00" WIDTH="125%"><P><CENTER>&nbsp;<B><FONT COLOR="#ffffff">2000C/95</FONT></B></CENTER></TD></TR>

<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="28" BGCOLOR="#fff4f2"><P ALIGN=LEFT><FONT COLOR="#000000">Part&nbsp;# 503xxx-xxx</FONT></TH>
<TD ALIGN="CENTER"><SMALL>361-101</SMALL></TD>
<TD><P><CENTER>&nbsp;<SMALL>361-201</SMALL></CENTER></TD></TR>


<% if session("source") = "ast" then %>

<% PriceLevelCode = "1" %>

<TR ALIGN="CENTER">
<TH ALIGN="LEFT" BGCOLOR="#fff4f2"><P ALIGN=LEFT><FONT COLOR="#000000">Level 1</FONT></TH>
<TD ALIGN="CENTER"><SMALL><%=PartPrice("503361-101")%></SMALL></TD>
<TD><P><CENTER>&nbsp;<SMALL><%=PartPrice("503361-201")%></SMALL></CENTER></TD></TR>

<% PriceLevelCode = "C" %>

<TR ALIGN="CENTER">
<TH ALIGN="LEFT" BGCOLOR="#fff4f2"><P ALIGN=LEFT><FONT COLOR="#000000">Level C</FONT></TH>
<TD ALIGN="CENTER"><SMALL><%=PartPrice("503361-101")%></SMALL></TD>
<TD><P><CENTER>&nbsp;<SMALL><%=PartPrice("503361-201")%></SMALL></CENTER></TD></TR>

<% PriceLevelCode = "G" %>

<TR ALIGN="CENTER">
<TH ALIGN="LEFT" BGCOLOR="#fff4f2"><P ALIGN=LEFT><FONT COLOR="#000000">Est. Street Price</FONT></TH>
<TD ALIGN="CENTER"><SMALL><%=PartPrice("503361-101")%></SMALL></TD>
<TD><P><CENTER>&nbsp;<SMALL><%=PartPrice("503361-201")%></SMALL></CENTER></TD></TR>

<TR ALIGN="CENTER">
<TH ALIGN="LEFT" BGCOLOR="#fff4f2"><P ALIGN=LEFT><FONT COLOR="#000000">Employee Purchase Price</FONT></TH>
<TD ALIGN="CENTER"><SMALL><%=EmployeePurchasePrice("503361-101")%></SMALL></TD>
<TD><P><CENTER>&nbsp;<SMALL><%=EmployeePurchasePrice("503361-201")%></SMALL></CENTER></TD></TR>

<% elseif session("source") = "ovation" then %>

<% call GetPriceLevel %>

<TR ALIGN="CENTER">
<TH ALIGN="LEFT" BGCOLOR="#fff4f2"><P ALIGN=LEFT><FONT COLOR="#000000"><%=PriceLevelName%></FONT></TH>
<TD ALIGN="CENTER"><SMALL><%=PartPrice("503361-101")%></SMALL></TD>
<TD><P><CENTER>&nbsp;<SMALL><%=PartPrice("503361-201")%></SMALL></CENTER></TD></TR>

<TR ALIGN="CENTER">
<TH ALIGN="LEFT" BGCOLOR="#fff4f2"><P ALIGN=LEFT><FONT COLOR="#000000">Government/Educational Rebate</FONT></TH>
<TD ALIGN="CENTER"><SMALL><%=PartRebate("503361-101")%></SMALL></TD>
<TD><P><CENTER>&nbsp;<SMALL><%=PartRebate("503361-201")%></SMALL></CENTER></TD></TR>

<TR ALIGN="CENTER">
<TH ALIGN="LEFT" BGCOLOR="#fff4f2"><P ALIGN=LEFT><FONT COLOR="#000000">Demo Unit Purchase Price</FONT></TH>
<TD ALIGN="CENTER"><SMALL><A HREF="../../../sales_tools/demo_units/form.asp?pn=503361-101"><IMG SRC="images/tag.gif" BORDER=0></A><%=RealPartPrice("503361-101", "C", 0.85)%></SMALL></TD>
<TD><P><CENTER>&nbsp;<SMALL><A HREF="../../../sales_tools/demo_units/form.asp?pn=503361-201"><IMG SRC="images/tag.gif" BORDER=0></A><%=RealPartPrice("503361-201", "C", 0.85)%></SMALL></CENTER></TD></TR>

<% end if %>

<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="28" BGCOLOR="#fff4f2"><P ALIGN=LEFT><FONT COLOR="#000000">Processor</FONT></TH>
<TD COLSPAN="2"><P><CENTER><SMALL>Pentium II-233 Mhz</SMALL></CENTER></TD></TR>
<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="28" BGCOLOR="#fff4f2"><P ALIGN=LEFT><FONT COLOR="#000000">Cache</FONT></TH>
<TD COLSPAN="2"><P><CENTER>&nbsp;<SMALL>512KB</SMALL></CENTER></TD></TR>
<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="28" BGCOLOR="#fff4f2"><P ALIGN=LEFT><FONT COLOR="#000000">RAM</FONT></TH>
<TD COLSPAN="2"><P><CENTER>&nbsp;<SMALL>32 MB</SMALL></CENTER></TD></TR>
<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="28" BGCOLOR="#fff4f2"><P ALIGN=LEFT><FONT COLOR="#000000">Drive Capacity</FONT></TH>
<TD COLSPAN="2"><P><CENTER><SMALL>2GB</SMALL></CENTER></TD></TR>
<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="28" BGCOLOR="#fff4f2"><P ALIGN=LEFT><FONT COLOR="#000000">Graphics Memory</FONT></TH>
<TD COLSPAN="2"><P><CENTER><SMALL>2 MB</SMALL></CENTER></TD></TR>
<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="28" BGCOLOR="#fff4f2"><P ALIGN=LEFT><FONT COLOR="#000000">CD-ROM</FONT></TH>
<TD COLSPAN="2"><P><CENTER><SMALL>16x max</SMALL></CENTER></TD></TR>
<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="28" BGCOLOR="#fff4f2"><P ALIGN=LEFT><FONT COLOR="#000000">Operating System</FONT></TH>
<TD><P><CENTER><SMALL>Windows NT</SMALL></CENTER></TD>
<TD><P><CENTER>&nbsp;<SMALL>Windows '95</SMALL></CENTER></TD></TR>
</TABLE>
</TD></TR>
</TABLE>
</BODY>
</HTML>
