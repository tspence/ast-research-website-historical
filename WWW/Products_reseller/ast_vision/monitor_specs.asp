<!--#include file="../../../OVATION.INC"-->

<HTML>
<HEAD>
  <META NAME="GENERATOR" CONTENT="Adobe PageMill 2.0 Win">
  <TITLE>Monitor_specs</TITLE>
</HEAD>
<BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">
<!-- Start of the Body for this Page --> <TABLE BORDER="0" CELLSPACING=
"0" CELLPADDING="0" WIDTH="540">
<BR><BR><BR><BR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD HEIGHT="153"></TD>
<TD WIDTH="520" COLSPAN="11"><A NAME="ast400"></A><IMG SRC="images/monitor_flat_lead.GIF"
HEIGHT="128" WIDTH="387" BORDER="0" ALT="Picture" NATURALSIZEFLAG="0" ALIGN="BOTTOM"></TD></TR>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD COLSPAN="6" HEIGHT="151"></TD>
<TD WIDTH="309" COLSPAN="6"><IMG SRC="images/flat.GIF" HEIGHT="147" WIDTH="141" BORDER=
"0" ALT="Picture" NATURALSIZEFLAG="0" ALIGN="BOTTOM"></TD></TR>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD HEIGHT="676"></TD>
<TD WIDTH="370" COLSPAN="10"><TABLE BORDER="0" BGCOLOR="#FFFFFF" CELLSPACING="2" CELLPADDING="4">

<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="185" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>
<P><B>FEATURES</B></TD>
<TD WIDTH="173" BGCOLOR="#420042" HEIGHT="22"><P><!-- Start of Text object --></P>
<P><CENTER><B><FONT COLOR="#ffffff">ASTVision 400</FONT></B></CENTER></TD></TR>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="185" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>
<P>Part # 503xxx-xxx</TD>
<TD WIDTH="173" HEIGHT="22" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>475-001</CENTER></TD></TR>

<% if session("source") = "ast" then %>

<% PriceLevelCode = "1" %>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="185" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>
<P>Level 1</TD>
<TD WIDTH="173" HEIGHT="22" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>&nbsp;<%=PartPrice("503475-001")%></CENTER></TD></TR>

<% PriceLevelCode = "C" %>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="185" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>
<P>Level C</TD>
<TD WIDTH="173" HEIGHT="22" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>&nbsp;<%=PartPrice("503475-001")%></CENTER></TD></TR>

<% PriceLevelCode = "G" %>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="185" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>
<P>Est. Street Price</TD>
<TD WIDTH="173" HEIGHT="22" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>&nbsp;<%=PartPrice("503475-001")%></CENTER></TD></TR>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="185" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>
<P>Employee Purchase Price</TD>
<TD WIDTH="173" HEIGHT="22" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>&nbsp;<%= EmployeePurchasePrice("503475-001")%></CENTER></TD></TR>

<% elseif session("source") = "ovation" then %>

<% call GetPriceLevel %>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="185" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>
<P><%=PriceLevelName%></TD>
<TD WIDTH="173" HEIGHT="22" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>&nbsp;<%=PartPrice("503475-001")%></CENTER></TD></TR>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="185" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>
<P>Government/Educational Rebate</TD>
<TD WIDTH="173" HEIGHT="22" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>&nbsp;<%=PartRebate("503475-001")%></CENTER></TD></TR>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="185" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>
<P>Demo Unit Purchase Price</TD>
<TD WIDTH="173" HEIGHT="22" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>&nbsp;<%=RealPartPrice("503475-001", "C", 0.85)%></CENTER></TD></TR>

<% end if %>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="185" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>
<P>Picture Tube</TD>
<TD WIDTH="173" HEIGHT="39" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>14&#148; (14&#148; viewable area) Diagonal, FSP Digital</CENTER></TD></TR>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="185" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>
<P>Resolution Modes</TD>
<TD WIDTH="173" HEIGHT="58" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>1024 x 768: 60Hz (XGA) 800 x 600: 75Hz (SVGA) 640 x 480: 85Hz
(VGA)</CENTER></TD></TR>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="185" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>
<P>Dot Pitch:</TD>
<TD WIDTH="173" HEIGHT="22" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>0.28 mm</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="185" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Horizontal Frequency:</TD>
<TD WIDTH="173" HEIGHT="22" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>30-50 KHz</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="185" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Vertical Frequency:</TD>
<TD WIDTH="173" HEIGHT="21" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>60-70Hz</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="185" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>AC Power:</TD>
<TD WIDTH="173" HEIGHT="19" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>90-264 VAC</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="185" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Power Rating / BTU:</TD>
<TD WIDTH="173" HEIGHT="21" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>32W / 109.2</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="185" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Video Bandwidth:</TD>
<TD WIDTH="173" HEIGHT="22" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>65MHz</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="185" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Factory Preset Modes:</TD>
<TD WIDTH="173" HEIGHT="22" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>13</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="185" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>User Definable Modes:</TD>
<TD WIDTH="173" HEIGHT="24" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>13</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="185" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Low Radiation:</TD>
<TD WIDTH="173" HEIGHT="22" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>TCO92</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="185" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Ergonomics:</TD>
<TD WIDTH="173" HEIGHT="23" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>ISO 9241-3</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="185" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Dimensions (WxHxD):</TD>
<TD WIDTH="173" HEIGHT="20" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>14.33&#148; x 14.4&#148; x 7.7&#148;</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="185" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Weight:</TD>
<TD WIDTH="173" HEIGHT="23" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>8.14 lbs.</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="185" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>User Controls:</TD>
<TD WIDTH="173" HEIGHT="23" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>Digital</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="185" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>OSD+:</TD>
<TD WIDTH="173" HEIGHT="21" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>Yes</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="185" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Certification:</TD>
<TD WIDTH="173" HEIGHT="21" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>Worldwide</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="185" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>VESA DPMS/EPA/<BR>
Nutek** Compliance:</TD>
<TD WIDTH="173" HEIGHT="38" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>Yes</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="185" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>VESA DDC, Plug-n-Play:</TD>
<TD WIDTH="173" HEIGHT="21" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>DDC 2B</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="185" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Overscan:</TD>
<TD WIDTH="173" HEIGHT="23" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>Yes</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="185" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Warranty:</TD>
<TD WIDTH="173" HEIGHT="57" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>2-Year Warranty when purchased with an<BR>
AST system</CENTER></TD></TR>
</TABLE>
</TD>
<TD></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD COLSPAN="12" HEIGHT="26"></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD COLSPAN="2" HEIGHT="30"></TD>
<TD WIDTH="498" COLSPAN="10"><IMG SRC="images/border_lines_3.GIF" HEIGHT="13" WIDTH="470"
BORDER="0" ALT="Picture" NATURALSIZEFLAG="0" ALIGN="BOTTOM"></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD HEIGHT="156"></TD>
<TD WIDTH="520" COLSPAN="11"><A NAME="ast_standard"></A><IMG SRC="images/monitor1_lead.GIF"
HEIGHT="128" WIDTH="387" BORDER="0" ALT="Picture" NATURALSIZEFLAG="0" ALIGN=
"BOTTOM"></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD></TD>
<TD WIDTH="307" COLSPAN="6"><P><!-- Start of Text object --></P>

<P><A HREF="#ast_4e_5b" TARGET="_self"><B>ASTVision 4E and ASTVision 5B</B></A><BR>
<B><A HREF="#ast_7b_7p" TARGET="_self">ASTVision 7B and ASTVision 7P</A></B><BR>
<B><A HREF="#ast_20p" TARGET="_self">ASTVision 20P</A></B></TD>
<TD COLSPAN="5"></TD></TR>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD COLSPAN="12" HEIGHT="33"></TD></TR>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD COLSPAN="5" HEIGHT="150"></TD>
<TD WIDTH="158" COLSPAN="5"><A NAME="ast_4e_5b"></A><IMG SRC="images/4e.GIF" HEIGHT="145"
WIDTH="140" BORDER="0" ALT="Picture" NATURALSIZEFLAG="0" ALIGN="BOTTOM"></TD>
<TD WIDTH="156" COLSPAN="2"><IMG SRC="images/5b.gif" HEIGHT="145" WIDTH="140" BORDER=
"0" ALT="Picture" NATURALSIZEFLAG="0" ALIGN="BOTTOM"></TD></TR>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD HEIGHT="743"></TD>
<TD WIDTH="520" COLSPAN="11"><TABLE BORDER="0" BGCOLOR="#FFFFFF" CELLSPACING="2" CELLPADDING="4">


<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="197" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>
<P><B>FEATURES</B></TD>
<TD WIDTH="146" BGCOLOR="#400040"><P><!-- Start of Text object --></P>
<P><CENTER><B><FONT COLOR="#ffffff">ASTVision 4E</FONT></B></CENTER></TD>
<TD WIDTH="161" BGCOLOR="#400040" HEIGHT="22"><P><!-- Start of Text object --></P>
<P><CENTER><B><FONT COLOR="#ffffff">ASTVision 5B</FONT></B></CENTER></TD></TR>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD BGCOLOR="#e7dfe7">
<P>Part # 503xxx-xxx</TD>
<TD BGCOLOR="#F1EDF1">
<P><CENTER>513-001</CENTER></TD>
<TD BGCOLOR="#F1EDF1">
<P><CENTER>499-001</CENTER></TD></TR>

<% if session("source") = "ast" then %>

<% PriceLevelCode = "1" %>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>
<P>Level 1</TD>
<TD BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>&nbsp;<%=PartPrice("503513-001")%></CENTER></TD>
<TD BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>&nbsp;<%=PartPrice("503499-001")%></CENTER></TD></TR>

<% PriceLevelCode = "C" %>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>
<P>Level C</TD>
<TD BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>&nbsp;<%=PartPrice("503513-001")%></CENTER></TD>
<TD BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>&nbsp;<%=PartPrice("503499-001")%></CENTER></TD></TR>

<% PriceLevelCode = "G" %>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>
<P>Est. Street Price</TD>
<TD BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>&nbsp;<%=PartPrice("503513-001")%></CENTER></TD>
<TD BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>&nbsp;<%=PartPrice("503499-001")%></CENTER></TD></TR>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>
<P>Employee Purchase Price</TD>
<TD BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>&nbsp;<%=EmployeePurchasePrice("503513-001")%></CENTER></TD>
<TD BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>&nbsp;<%=EmployeePurchasePrice("503499-001")%></CENTER></TD></TR>

<% elseif session("source") = "ovation" then %>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>
<P><%=PriceLevelName%></TD>
<TD BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>&nbsp;<%=PartPrice("503513-001")%></CENTER></TD>
<TD BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>&nbsp;<%=PartPrice("503499-001")%></CENTER></TD></TR>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>
<P>Government/Educational Rebate</TD>
<TD BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>&nbsp;<%=PartRebate("503513-001")%></CENTER></TD>
<TD BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>&nbsp;<%=PartRebate("503499-001")%></CENTER></TD></TR>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>
<P>Demo Unit Purchase Price</TD>
<TD BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>&nbsp;<%=RealPartPrice("503513-001", "C", 0.85)%></CENTER></TD>
<TD BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>&nbsp;<%=RealPartPrice("503499-001", "C", 0.85)%></CENTER></TD></TR>

<% end if %>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="197" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>
<P>Picture Tube</TD>
<TD WIDTH="146" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>14&#148; Conventional<BR>(13.2&#148; viewable area) Diagonal, Analog</CENTER></TD>
<TD WIDTH="161" HEIGHT="57" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>15&#148; (13.8&#148; viewable area) Diagonal, FST Digital</CENTER></TD></TR>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="197" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>
<P>Resolution Modes</TD>
<TD WIDTH="146" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>1024 x 768: 60Hz (XGA) 800 x 600: 75Hz (SVGA) 640 x 480: 85Hz
(VGA)</CENTER></TD>
<TD WIDTH="161" HEIGHT="81" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>1280 x 1024: 60Hz (NI)<BR>
1024 x 768: 85Hz (XGA)<BR>
800 x 600: 85Hz (SVGA) 640 x 480: 85Hz (VGA)</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="197" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Dot Pitch:</TD>
<TD WIDTH="146" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>0.28 mm</CENTER></TD>
<TD WIDTH="161" HEIGHT="21" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>0.28 mm</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="197" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Horizontal Frequency:</TD>
<TD WIDTH="146" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>30-50 KHz</CENTER></TD>
<TD WIDTH="161" HEIGHT="20" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>30-69 KHz</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="197" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Vertical Frequency:</TD>
<TD WIDTH="146" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>56/60/70/72/75/87(1) / 120(1) Hz</CENTER></TD>
<TD WIDTH="161" HEIGHT="38" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>50-160Hz</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="197" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>AC Power:</TD>
<TD WIDTH="146" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>90-264 VAC</CENTER></TD>
<TD WIDTH="161" HEIGHT="19" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>90-264 VAC</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="197" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Power Rating / BTU:</TD>
<TD WIDTH="146" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>80W / 273</CENTER></TD>
<TD WIDTH="161" HEIGHT="22" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>100W / 341</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="197" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Video Bandwidth:</TD>
<TD WIDTH="146" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>65MHz</CENTER></TD>
<TD WIDTH="161" HEIGHT="21" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>110MHz</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="197" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Factory Preset Modes:</TD>
<TD WIDTH="146" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>N/A</CENTER></TD>
<TD WIDTH="161" HEIGHT="21" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>9</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="197" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>User Definable Modes:</TD>
<TD WIDTH="146" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>N/A</CENTER></TD>
<TD WIDTH="161" HEIGHT="20" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>11</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="197" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Low Radiation:</TD>
<TD WIDTH="146" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>MPRII</CENTER></TD>
<TD WIDTH="161" HEIGHT="19" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>MPRII</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="197" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Ergonomics:</TD>
<TD WIDTH="146" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>ISO 9241-3</CENTER></TD>
<TD WIDTH="161" HEIGHT="19" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>ISO 9241-3</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="197" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Dimensions (WxHxD):</TD>
<TD WIDTH="146" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>14&#148; x 14.3&#148; x 15&#148;</CENTER></TD>
<TD WIDTH="161" HEIGHT="21" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>14.6&#148; x 15.2&#148; x 16.2&#148;</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="197" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Weight:</TD>
<TD WIDTH="146" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>23.3 lbs.</CENTER></TD>
<TD WIDTH="161" HEIGHT="20" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>29.9 lbs</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="197" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>User Controls:</TD>
<TD WIDTH="146" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>Analog</CENTER></TD>
<TD WIDTH="161" HEIGHT="20" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>Digital</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="197" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>OSD+:</TD>
<TD WIDTH="146" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>N/A</CENTER></TD>
<TD WIDTH="161" HEIGHT="19" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>Yes</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="197" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Certification:</TD>
<TD WIDTH="146" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>Worldwide</CENTER></TD>
<TD WIDTH="161" HEIGHT="20" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>Worldwide</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="197" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>VESA DPMS/EPA/<BR>
Nutek** Compliance:</TD>
<TD WIDTH="146" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>Yes</CENTER></TD>
<TD WIDTH="161" HEIGHT="38" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>Yes</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="197" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>VESA DDC, Plug-n-Play:</TD>
<TD WIDTH="146" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>DDC 2B</CENTER></TD>
<TD WIDTH="161" HEIGHT="19" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>DDC 2B</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="197" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Overscan:</TD>
<TD WIDTH="146" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>Yes</CENTER></TD>
<TD WIDTH="161" HEIGHT="19" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>Yes</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="197" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Warranty:</TD>
<TD WIDTH="146" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>1 Year carry-in (system warranty applies when purchased with
an<BR>
AST system)</CENTER></TD>
<TD WIDTH="161" HEIGHT="95" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>1 Year carry-in (system warranty applies when purchased with
an<BR>
AST system)</CENTER></TD></TR>
</TABLE>
</TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD COLSPAN="12" HEIGHT="34"></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD COLSPAN="9" HEIGHT="1"></TD>
<TD WIDTH="167" COLSPAN="3" ROWSPAN="2"><IMG SRC="images/7p.GIF" HEIGHT="145" WIDTH="140" BORDER=
"0" ALT="Picture" NATURALSIZEFLAG="0" ALIGN="BOTTOM"></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD COLSPAN="3" HEIGHT="149"></TD>
<TD WIDTH="168" COLSPAN="6"><A NAME="ast_7b_7p"></A><IMG SRC="images/7b.GIF" HEIGHT="145"
WIDTH="140" BORDER="0" ALT="Picture" NATURALSIZEFLAG="0" ALIGN="BOTTOM"></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD HEIGHT="698"></TD>
<TD WIDTH="520" COLSPAN="11"><TABLE BORDER="0" BGCOLOR="#FFFFFF" CELLSPACING="2" CELLPADDING="4">

<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>
<P><B>Features</B></TD>
<TD WIDTH="165" BGCOLOR="#400040"><P><!-- Start of Text object --></P>
<P><CENTER><B><FONT COLOR="#ffffff">ASTVision 7B</FONT></B></CENTER></TD>
<TD WIDTH="170" BGCOLOR="#400040" HEIGHT="22"><P><!-- Start of Text object --></P>
<P><CENTER><B><FONT COLOR="#ffffff">ASTVision 7P</FONT></B></CENTER></TD></TR>


<TR VALIGN="TOP" ALIGN="LEFT">
<TD BGCOLOR="#e7dfe7">
<P>Part # 503xxx-xxx</TD>
<TD BGCOLOR="#F1EDF1">
<P><CENTER>500-001</CENTER></TD>
<TD BGCOLOR="#F1EDF1">
<P><CENTER>232-001</CENTER></TD></TR>

<% if session("source") = "ast" then %>

<% PriceLevelCode = "1" %>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>
<P>Level 1</TD>
<TD BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>&nbsp;<%=PartPrice("503500-001")%></CENTER></TD>
<TD BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>&nbsp;<%=PartPrice("503232-001")%></CENTER></TD></TR>

<% PriceLevelCode = "C" %>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>
<P>Level C</TD>
<TD BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>&nbsp;<%=PartPrice("503500-001")%></CENTER></TD>
<TD BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>&nbsp;<%=PartPrice("503232-001")%></CENTER></TD></TR>

<% PriceLevelCode = "G" %>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>
<P>Est. Street Price</TD>
<TD BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>&nbsp;<%=PartPrice("503500-001")%></CENTER></TD>
<TD BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>&nbsp;<%=PartPrice("503232-001")%></CENTER></TD></TR>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>
<P>Employee Purchase Price</TD>
<TD BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>&nbsp;<%=EmployeePurchasePrice("503500-001")%></CENTER></TD>
<TD BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>&nbsp;<%=EmployeePurchasePrice("503232-001")%></CENTER></TD></TR>

<% elseif session("source") = "ovation" then %>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>
<P><%=PriceLevelName%></TD>
<TD BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>&nbsp;<%=PartPrice("503500-001")%></CENTER></TD>
<TD BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>&nbsp;<%=PartPrice("503232-001")%></CENTER></TD></TR>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>
<P>Government/Educational Rebate</TD>
<TD BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>&nbsp;<%=PartRebate("503500-001")%></CENTER></TD>
<TD BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>&nbsp;<%=PartRebate("503232-001")%></CENTER></TD></TR>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>
<P>Demo Unit Purchase Price</TD>
<TD BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>&nbsp;<%=RealPartPrice("503500-001", "C", 0.85)%></CENTER></TD>
<TD BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>&nbsp;<%=RealPartPrice("503232-001", "C", 0.85)%></CENTER></TD></TR>

<% end if %>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>
<P>Picture Tube</TD>
<TD WIDTH="165" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>17&#148;(15.75&#148; viewable area) Diagonal, FST Digital</CENTER></TD>
<TD WIDTH="170" HEIGHT="57" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>17&#148; (15.75&#148; viewable area) Diagonal, FST Digital</CENTER></TD></TR>


<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Resolution Modes</TD>
<TD WIDTH="165" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>1280 x 1024: 60Hz (NI)<BR>
1024 x 768: 85Hz (XGA) 800 x 600: 85Hz (SVGA) 640 x 480: 85Hz (VGA)</CENTER></TD>
<TD WIDTH="170" HEIGHT="78" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>1280 x 1024: 60Hz (NI)<BR>
1024 x 768: 85Hz (XGA)<BR>
800 x 600: 85Hz (SVGA) 640 x 480: 85Hz (VGA)</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Dot Pitch:</TD>
<TD WIDTH="165" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>0.28 mm</CENTER></TD>
<TD WIDTH="170" HEIGHT="19" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>0.26 mm</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Horizontal Frequency:</TD>
<TD WIDTH="165" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>30-69 KHz</CENTER></TD>
<TD WIDTH="170" HEIGHT="20" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>30-85 KHz</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Vertical Frequency:</TD>
<TD WIDTH="165" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>50-160 Hz</CENTER></TD>
<TD WIDTH="170" HEIGHT="19" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>50-160Hz</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>AC Power:</TD>
<TD WIDTH="165" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>90-264 VAC</CENTER></TD>
<TD WIDTH="170" HEIGHT="19" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>90-264 VAC</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Power Rating / BTU:</TD>
<TD WIDTH="165" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>90W / 307</CENTER></TD>
<TD WIDTH="170" HEIGHT="19" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>130W / 444</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Video Bandwidth:</TD>
<TD WIDTH="165" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>110MHz</CENTER></TD>
<TD WIDTH="170" HEIGHT="20" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>130MHz</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Factory Preset Modes:</TD>
<TD WIDTH="165" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>11</CENTER></TD>
<TD WIDTH="170" HEIGHT="19" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>9</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>User Definable Modes:</TD>
<TD WIDTH="165" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>11</CENTER></TD>
<TD WIDTH="170" HEIGHT="23" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>11</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Low Radiation:</TD>
<TD WIDTH="165" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>MPRII</CENTER></TD>
<TD WIDTH="170" HEIGHT="21" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>MPRII/TCO 95 Optional</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Ergonomics:</TD>
<TD WIDTH="165" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>ISO 9241-3</CENTER></TD>
<TD WIDTH="170" HEIGHT="19" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>ISO 9241-3</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Dimensions (WxHxD):</TD>
<TD WIDTH="165" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>?&#148;</CENTER></TD>
<TD WIDTH="170" HEIGHT="20" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>16.7&#148; x 16.7&#148; x 17.6&#148;</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Weight:</TD>
<TD WIDTH="165" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>39.7 lbs.</CENTER></TD>
<TD WIDTH="170" HEIGHT="19" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>41.8 lbs</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>User Controls:</TD>
<TD WIDTH="165" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>Digital</CENTER></TD>
<TD WIDTH="170" HEIGHT="20" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>Digital</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>OSD+:</TD>
<TD WIDTH="165" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>Yes</CENTER></TD>
<TD WIDTH="170" HEIGHT="19" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>Yes</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Certification:</TD>
<TD WIDTH="165" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>Worldwide</CENTER></TD>
<TD WIDTH="170" HEIGHT="21" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>Worldwide</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>VESA DPMS/EPA/<BR>
Nutek** Compliance:</TD>
<TD WIDTH="165" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>Yes</CENTER></TD>
<TD WIDTH="170" HEIGHT="38" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>Yes</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>VESA DDC, Plug-n-Play:</TD>
<TD WIDTH="165" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>DDC 2B</CENTER></TD>
<TD WIDTH="170" HEIGHT="19" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>DDC 2B</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Overscan:</TD>
<TD WIDTH="165" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>Yes</CENTER></TD>
<TD WIDTH="170" HEIGHT="19" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>Yes</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Warranty:</TD>
<TD WIDTH="165" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>1 Year carry-in (system warranty applies when purchased with
an<BR>
AST system)</CENTER></TD>
<TD WIDTH="170" HEIGHT="76" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>1 Year carry-in (system warranty applies when purchased with
an<BR>
AST system)</CENTER></TD></TR>
</TABLE>
</TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD COLSPAN="12" HEIGHT="34"></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD COLSPAN="4" HEIGHT="149"></TD>
<TD WIDTH="326" COLSPAN="8"><A NAME="ast_20p"></A><IMG SRC="images/20p.GIF" HEIGHT="145"
WIDTH="140" BORDER="0" ALT="Picture" NATURALSIZEFLAG="0" ALIGN="BOTTOM"></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD HEIGHT="713"></TD>
<TD WIDTH="352" COLSPAN="7">
<TABLE BORDER="0" BGCOLOR="#FFFFFF" CELLSPACING="2" CELLPADDING="4">

<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>
<P><B>Features</B></TD>
<TD WIDTH="171" BGCOLOR="#400040" HEIGHT="22"><P><!-- Start of Text object --></P>
<P><CENTER><B><FONT COLOR="#ffffff">ASTVision 20P</FONT></B></CENTER></TD></TR>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>
<P>Part # 503xxx-xxx</TD>
<TD BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>399-001</CENTER></TD></TR>

<% if session("source") = "ast" then %>

<% PriceLevelCode = "1" %>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="185" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>
<P>Level 1</TD>
<TD BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>&nbsp;<%=PartPrice("503399-001")%></CENTER></TD></TR>

<% PriceLevelCode = "C" %>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="185" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>
<P>Level C</TD>
<TD BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>&nbsp;<%=PartPrice("503399-001")%></CENTER></TD></TR>

<% PriceLevelCode = "G" %>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="185" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>
<P>Est. Street Price</TD>
<TD BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>&nbsp;<%=PartPrice("503399-001")%></CENTER></TD></TR>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="185" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>
<P>Employee Purchase Price</TD>
<TD BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>&nbsp;<%= EmployeePurchasePrice("503399-001")%></CENTER></TD></TR>

<% elseif session("source") = "ovation" then %>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>
<P><%=PriceLevelName%></TD>
<TD BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>&nbsp;<%=PartPrice("503399-001")%></CENTER></TD></TR>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>
<P>Government/Educational Rebate</TD>
<TD BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>&nbsp;<%=PartRebate("503399-001")%></CENTER></TD></TR>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>
<P>Demo Unit Purchase Price</TD>
<TD BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>&nbsp;<%=RealPartPrice("503399-001", "C", 0.85)%></CENTER></TD></TR>

<% end if %>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>
<P>Picture Tube</TD>
<TD WIDTH="171" HEIGHT="39" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>21&#148; (20&#148; viewable area) Diagonal, FST Digital</CENTER></TD></TR>

<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>
<P>Resolution Modes</TD>
<TD WIDTH="171" HEIGHT="95" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>
<P><CENTER>1600 x 1200: 75Hz (NI)<BR>
1280 x 1024: 85Hz (NI)<BR>
1024 x 768: 85Hz (XGA) 800 x 600: 85Hz (SVGA) 640 x 480: 85Hz (VGA)</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Dot Pitch:</TD>
<TD WIDTH="171" HEIGHT="22" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>0.22 mm horizontal</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Horizontal Frequency:</TD>
<TD WIDTH="171" HEIGHT="22" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>31-95 KHz</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Vertical Frequency:</TD>
<TD WIDTH="171" HEIGHT="21" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>60-160Hz</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>AC Power:</TD>
<TD WIDTH="171" HEIGHT="19" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>100-120V-200-240Hz</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Power Rating / BTU:</TD>
<TD WIDTH="171" HEIGHT="21" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>135W / 461</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Video Bandwidth:</TD>
<TD WIDTH="171" HEIGHT="22" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>200MHz</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Factory Preset Modes:</TD>
<TD WIDTH="171" HEIGHT="22" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>6</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>User Definable Modes:</TD>
<TD WIDTH="171" HEIGHT="24" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>25</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Low Radiation:</TD>
<TD WIDTH="171" HEIGHT="22" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>MPRII</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Ergonomics:</TD>
<TD WIDTH="171" HEIGHT="23" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>ISO 9241-3</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Dimensions (WxHxD):</TD>
<TD WIDTH="171" HEIGHT="20" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>19.2&#148; x 18.7&#148; x 21&#148;</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Weight:</TD>
<TD WIDTH="171" HEIGHT="23" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>72.6 lbs.</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>User Controls:</TD>
<TD WIDTH="171" HEIGHT="23" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>Digital</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>OSD+:</TD>
<TD WIDTH="171" HEIGHT="21" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>Yes</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Certification:</TD>
<TD WIDTH="171" HEIGHT="21" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>Worldwide</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P>VESA DPMS/EPA/<BR>
Nutek** Compliance:</TD>
<TD WIDTH="171" HEIGHT="38" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>Yes</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>VESA DDC, Plug-n-Play:</TD>
<TD WIDTH="171" HEIGHT="21" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>DDC 2B</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Overscan:</TD>
<TD WIDTH="171" HEIGHT="23" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>Yes</CENTER></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD WIDTH="169" BGCOLOR="#e7dfe7"><P><!-- Start of Text object --></P>

<P>Warranty:</TD>
<TD WIDTH="171" HEIGHT="57" BGCOLOR="#F1EDF1"><P><!-- Start of Text object --></P>

<P><CENTER>2-Year Warranty when purchased with an<BR>
AST system</CENTER></TD></TR>
</TABLE>
</TD>
<TD COLSPAN="4"></TD></TR>
<TR VALIGN="TOP" ALIGN="LEFT">
<TD COLSPAN="12" HEIGHT="32"></TD></TR>
</TABLE>
<!-- End of the Body for this Page -->
</BODY>
</HTML>
