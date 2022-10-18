<!--#include file="../../../../OVATION.INC"-->

<HTML>
<HEAD>
  <META NAME="Author" CONTENT="AST Computers, Inc.">
</HEAD>
<BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">
<P><TABLE WIDTH="570" CELLPADDING="10" CELLSPACING="0" BORDER="0">
<TR>
<TD VALIGN="TOP" WIDTH="696%"><P><IMG SRC="../IMAGES/ascentia_lead.GIF" WIDTH="387" HEIGHT="128"
ALIGN="BOTTOM" NATURALSIZEFLAG="3"></P>

<P><B><I><FONT SIZE=+1>Windows NT 4.0 Systems</FONT></I></B> <TABLE BORDER=
"2" CELLSPACING="2" CELLPADDING="2" HEIGHT="373" WIDTH="565">
<TR>
<TH HEIGHT="34" BGCOLOR="#fffee8">Model No.</TH>
<TH BGCOLOR="#cbae0e"><FONT COLOR="#ffffff">M5130S</FONT></TH>
<TH BGCOLOR="#cbae0e"><FONT COLOR="#ffffff">M5160T</FONT></TH>
<TD BGCOLOR="#cbae0e"><P><CENTER><B>&nbsp;<FONT COLOR="#ffffff">M5200T</FONT></B></CENTER></TD>
<TD BGCOLOR="#cbae0e"><P><CENTER><B>&nbsp;<FONT COLOR="#ffffff">M5230T</FONT></B></CENTER></TD>
<TD BGCOLOR="#cbae0e"><P><CENTER><B><FONT COLOR="#ffffff">&nbsp;M5230X</FONT></B></CENTER></TD></TR>

<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="34" BGCOLOR="#fffee8"><P ALIGN=LEFT>Part&nbsp;# 503XXX-XXX</TH>
<TD ALIGN="CENTER"><FONT SIZE=-1>428-301</FONT></TD>
<TD ALIGN="CENTER"><FONT SIZE=-1>429-301</FONT></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;430-601</FONT></CENTER></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;432-901</FONT></CENTER></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;433-M01</FONT></CENTER></TD></TR>

<% if session("source") = "ast" then %>

<% PriceLevelCode = "1" %>

<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="34" BGCOLOR="#fffee8"><P ALIGN=LEFT>Level 1</TH>
<TD ALIGN="CENTER"><FONT SIZE=-1><%=PartPrice("503428-301")%></FONT></TD>
<TD ALIGN="CENTER"><FONT SIZE=-1><%=PartPrice("503429-301")%></FONT></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;<%=PartPrice("503430-601")%></FONT></CENTER></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;<%=PartPrice("503432-901")%></FONT></CENTER></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;<%=PartPrice("503433-M01")%></FONT></CENTER></TD></TR>

<% PriceLevelCode = "C" %>

<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="34" BGCOLOR="#fffee8"><P ALIGN=LEFT>Level C</TH>
<TD ALIGN="CENTER"><FONT SIZE=-1><%=PartPrice("503428-301")%></FONT></TD>
<TD ALIGN="CENTER"><FONT SIZE=-1><%=PartPrice("503429-301")%></FONT></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;<%=PartPrice("503430-601")%></FONT></CENTER></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;<%=PartPrice("503432-901")%></FONT></CENTER></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;<%=PartPrice("503433-M01")%></FONT></CENTER></TD></TR>

<% PriceLevelCode = "G" %>
 
<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="34" BGCOLOR="#fffee8"><P ALIGN=LEFT>Est. Street Price</TH>
<TD ALIGN="CENTER"><FONT SIZE=-1><%=PartPrice("503428-301")%></FONT></TD>
<TD ALIGN="CENTER"><FONT SIZE=-1><%=PartPrice("503429-301")%></FONT></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;<%=PartPrice("503430-601")%></FONT></CENTER></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;<%=PartPrice("503432-901")%></FONT></CENTER></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;<%=PartPrice("503433-M01")%></FONT></CENTER></TD></TR>

<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="34" BGCOLOR="#fffee8"><P ALIGN=LEFT>Employee Purchase Price</TH>
<TD ALIGN="CENTER"><FONT SIZE=-1><%=EmployeePurchasePrice("503428-301")%></FONT></TD>
<TD ALIGN="CENTER"><FONT SIZE=-1><%=EmployeePurchasePrice("503429-301")%></FONT></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;<%=EmployeePurchasePrice("503430-601")%></FONT></CENTER></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;<%=EmployeePurchasePrice("503432-901")%></FONT></CENTER></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;<%=EmployeePurchasePrice("503433-M01")%></FONT></CENTER></TD></TR>

<% elseif session("source") = "ovation" then %>

<% call GetPriceLevel %>

<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="34" BGCOLOR="#fffee8"><P ALIGN=LEFT><%=PriceLevelName%></TH>
<TD ALIGN="CENTER"><FONT SIZE=-1><%=PartPrice("503428-301")%></FONT></TD>
<TD ALIGN="CENTER"><FONT SIZE=-1><%=PartPrice("503429-301")%></FONT></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;<%=PartPrice("503430-601")%></FONT></CENTER></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;<%=PartPrice("503432-901")%></FONT></CENTER></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;<%=PartPrice("503433-M01")%></FONT></CENTER></TD></TR>

<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="34" BGCOLOR="#fffee8"><P ALIGN=LEFT>Government/Educational Rebate</TH>
<TD ALIGN="CENTER"><FONT SIZE=-1><%=PartRebate("503428-301")%></FONT></TD>
<TD ALIGN="CENTER"><FONT SIZE=-1><%=PartRebate("503429-301")%></FONT></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;<%=PartRebate("503430-601")%></FONT></CENTER></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;<%=PartRebate("503432-901")%></FONT></CENTER></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;<%=PartRebate("503433-M01")%></FONT></CENTER></TD></TR>

<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="34" BGCOLOR="#fffee8"><P ALIGN=LEFT>Demo Unit Purchase Price</TH>
<TD ALIGN="CENTER"><FONT SIZE=-1><A HREF="../../../sales_tools/demo_units/form.asp?pn=503428-301"><IMG SRC="images/tag.gif" BORDER=0></A><BR><%=RealPartPrice("503428-301", "C", 0.90)%></FONT></TD>
<TD ALIGN="CENTER"><FONT SIZE=-1><A HREF="../../../sales_tools/demo_units/form.asp?pn=503429-301"><IMG SRC="images/tag.gif" BORDER=0></A><BR><%=RealPartPrice("503429-301", "C", 0.90)%></FONT></TD>
<TD><P><CENTER><FONT SIZE=-1><A HREF="../../../sales_tools/demo_units/form.asp?pn=503430-601"><IMG SRC="images/tag.gif" BORDER=0></A><BR><%=RealPartPrice("503430-601", "C", 0.90)%></FONT></CENTER></TD>
<TD><P><CENTER><FONT SIZE=-1><A HREF="../../../sales_tools/demo_units/form.asp?pn=503432-901"><IMG SRC="images/tag.gif" BORDER=0></A><BR><%=RealPartPrice("503432-901", "C", 0.90)%></FONT></CENTER></TD>
<TD><P><CENTER><FONT SIZE=-1><A HREF="../../../sales_tools/demo_units/form.asp?pn=503433-M01"><IMG SRC="images/tag.gif" BORDER=0></A><BR><%=RealPartPrice("503433-M01", "C", 0.90)%></FONT></CENTER></TD></TR>

<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="34" BGCOLOR="#fffee8"><P ALIGN=LEFT>Notebook Purchase Program Price</TH>
<TD ALIGN="CENTER"><FONT SIZE=-1><A HREF="../../../sales_tools/notebook_purchase/form.asp?pn=503428-301"><IMG SRC="images/tag.gif" BORDER=0></A><BR><%=RealPartPrice("503428-301", "1", 0.93)%></FONT></TD>
<TD ALIGN="CENTER"><FONT SIZE=-1><A HREF="../../../sales_tools/notebook_purchase/form.asp?pn=503429-301"><IMG SRC="images/tag.gif" BORDER=0></A><BR><%=RealPartPrice("503429-301", "1", 0.93)%></FONT></TD>
<TD ALIGN="CENTER"><FONT SIZE=-1><A HREF="../../../sales_tools/notebook_purchase/form.asp?pn=503430-601"><IMG SRC="images/tag.gif" BORDER=0></A><BR><%=RealPartPrice("503430-601", "1", 0.93)%></FONT></CENTER></TD>
<TD ALIGN="CENTER"><FONT SIZE=-1><A HREF="../../../sales_tools/notebook_purchase/form.asp?pn=503432-901"><IMG SRC="images/tag.gif" BORDER=0></A><BR><%=RealPartPrice("503432-901", "1", 0.93)%></FONT></CENTER></TD>
<TD ALIGN="CENTER"><FONT SIZE=-1><A HREF="../../../sales_tools/notebook_purchase/form.asp?pn=503433-M01"><IMG SRC="images/tag.gif" BORDER=0></A><BR><%=RealPartPrice("503433-M01", "1", 0.93)%></FONT></CENTER></TD></TR>

<% end if %>

<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="84" BGCOLOR="#fffee8"><P ALIGN=LEFT>Intel<FONT SIZE=-1>&REG;</FONT> Pentium<FONT SIZE=-1>&REG;</FONT>
processor with MMX Technology</TH>
<TD ALIGN="CENTER"><FONT SIZE=-1>133 MHz</FONT></TD>
<TD ALIGN="CENTER"><FONT SIZE=-1>166 MHz</FONT></TD>
<TD><P><CENTER><FONT SIZE=-1><A HREF="../tech_overview/tech_overview.html#pentium"
>&nbsp;200 MHz</A></FONT></CENTER></TD>
<TD COLSPAN="2"><P><CENTER>&nbsp;<FONT SIZE=-1>&nbsp;<A HREF="../tech_overview/tech_overview.html#pentium"
>233 MHz</A></FONT></CENTER></TD></TR>
<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="59" BGCOLOR="#fffee8"><P ALIGN=LEFT>Color LCD Size &amp; Type</TH>
<TD ALIGN="CENTER">&nbsp;<FONT SIZE=-1>12.1&quot; SVGA DS-STN</FONT></TD>
<TD COLSPAN="3"><P><CENTER><FONT SIZE=-1>12.1&quot; SVGA TFT</FONT>&nbsp;</CENTER></TD>
<TD><P><CENTER>&nbsp;<FONT SIZE=-1>13.3&quot; </FONT><A HREF="../tech_overview/tech_overview.html#xga"
><FONT SIZE=-1>XGA TFT</FONT></A></CENTER></TD></TR>
<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="34" BGCOLOR="#fffee8"><P ALIGN=LEFT>Hard Drive</TH>
<TD COLSPAN="2" ALIGN="CENTER">&nbsp;<FONT SIZE=-1>1.6 GB</FONT></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;2.1 GB</FONT></CENTER></TD>
<TD><P><CENTER>&nbsp;<FONT SIZE=-1>&nbsp;3.3 GB</FONT></CENTER></TD>
<TD><P><CENTER>&nbsp;<FONT SIZE=-1>4.0 GB</FONT></CENTER></TD></TR>
<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="35" BGCOLOR="#fffee8"><P ALIGN=LEFT>Standard RAM</TH>
<TD COLSPAN="4"><P><CENTER><FONT SIZE=-1>32 MB</FONT>&nbsp;</CENTER></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;64 MB</FONT></CENTER></TD></TR>
<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="35" BGCOLOR="#fffee8"><P ALIGN=LEFT>CD-ROM Drive</TH>
<TD COLSPAN="5"><P><CENTER><FONT SIZE=-1>20x maximum</FONT>&nbsp;</CENTER></TD></TR>
<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="35" BGCOLOR="#fffee8"><P ALIGN=LEFT>Operating System</TH>
<TD COLSPAN="5"><P><CENTER><FONT SIZE=-1>Windows NT</FONT>&nbsp;</CENTER></TD></TR>
</TABLE>
</P>

<P>&nbsp;</P>

<P><B><I><FONT SIZE=+1>Windows 95 Systems</FONT></I></B><BR>
<TABLE BORDER="2" CELLSPACING="2" CELLPADDING="2" HEIGHT="373" WIDTH="593">
<TR>
<TH HEIGHT="34" BGCOLOR="#fffee8">Model No.</TH>
<TH BGCOLOR="#cbae0e"><FONT COLOR="#ffffff">M5130S</FONT></TH>
<TH BGCOLOR="#cbae0e"><FONT COLOR="#ffffff">M5160T</FONT></TH>
<TD BGCOLOR="#cbae0e"><P><CENTER><B>&nbsp;<FONT COLOR="#ffffff">M5160X</FONT></B></CENTER></TD>
<TD BGCOLOR="#cbae0e">&nbsp;<B>&nbsp;<FONT COLOR="#ffffff">M5200T</FONT></B></TD>
<TD BGCOLOR="#cbae0e">&nbsp;<B><FONT COLOR="#ffffff">M5230T</FONT></B></TD>
<TD BGCOLOR="#cbae0e"><P><CENTER><B><FONT COLOR="#ffffff">&nbsp;M5230X</FONT></B></CENTER></TD></TR>

<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="34" BGCOLOR="#fffee8"><P ALIGN=LEFT>Part&nbsp;# 503XXX-XXX</TH>
<TD ALIGN="CENTER"><FONT SIZE=-1>428-201</FONT></TD>
<TD ALIGN="CENTER"><FONT SIZE=-1>429-201</FONT></TD>
<TD>&nbsp;<FONT SIZE=-1>&nbsp;431-501</FONT></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;430-501</FONT></CENTER></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;432-801</FONT></CENTER></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;433-L01</FONT></CENTER></TD></TR>

<% if session("source") = "ast" then %>

<% PriceLevelCode = "1" %>

<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="34" BGCOLOR="#fffee8"><P ALIGN=LEFT>Level 1</TH>
<TD ALIGN="CENTER"><FONT SIZE=-1><%=PartPrice("503428-201")%></FONT></TD>
<TD ALIGN="CENTER"><FONT SIZE=-1><%=PartPrice("503429-201")%></FONT></TD>
<TD>&nbsp;<FONT SIZE=-1>&nbsp;<%=PartPrice("503431-501")%></FONT></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;<%=PartPrice("503430-501")%></FONT></CENTER></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;<%=PartPrice("503432-801")%></FONT></CENTER></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;<%=PartPrice("503433-L01")%></FONT></CENTER></TD></TR>

<% PriceLevelCode = "C" %>

<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="34" BGCOLOR="#fffee8"><P ALIGN=LEFT>Level C</TH>
<TD ALIGN="CENTER"><FONT SIZE=-1><%=PartPrice("503428-201")%></FONT></TD>
<TD ALIGN="CENTER"><FONT SIZE=-1><%=PartPrice("503429-201")%></FONT></TD>
<TD>&nbsp;<FONT SIZE=-1>&nbsp;<%=PartPrice("503431-501")%></FONT></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;<%=PartPrice("503430-501")%></FONT></CENTER></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;<%=PartPrice("503432-801")%></FONT></CENTER></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;<%=PartPrice("503433-L01")%></FONT></CENTER></TD></TR>

<% PriceLevelCode = "G" %>

<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="34" BGCOLOR="#fffee8"><P ALIGN=LEFT>Est. Street Price</TH>
<TD ALIGN="CENTER"><FONT SIZE=-1><%=PartPrice("503428-201")%></FONT></TD>
<TD ALIGN="CENTER"><FONT SIZE=-1><%=PartPrice("503429-201")%></FONT></TD>
<TD>&nbsp;<FONT SIZE=-1>&nbsp;<%=PartPrice("503431-501")%></FONT></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;<%=PartPrice("503430-501")%></FONT></CENTER></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;<%=PartPrice("503432-801")%></FONT></CENTER></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;<%=PartPrice("503433-L01")%></FONT></CENTER></TD></TR>

<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="34" BGCOLOR="#fffee8"><P ALIGN=LEFT>Employee Purchase Price</TH>
<TD ALIGN="CENTER"><FONT SIZE=-1><%=EmployeePurchasePrice("503428-201")%></FONT></TD>
<TD ALIGN="CENTER"><FONT SIZE=-1><%=EmployeePurchasePrice("503429-201")%></FONT></TD>
<TD>&nbsp;<FONT SIZE=-1>&nbsp;<%=EmployeePurchasePrice("503431-501")%></FONT></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;<%=EmployeePurchasePrice("503430-501")%></FONT></CENTER></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;<%=EmployeePurchasePrice("503432-801")%></FONT></CENTER></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;<%=EmployeePurchasePrice("503433-L01")%></FONT></CENTER></TD></TR>

<% elseif session("source") = "ovation" then %>

<% call GetPriceLevel %>

<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="34" BGCOLOR="#fffee8"><P ALIGN=LEFT><%=PriceLevelName%></TH>
<TD ALIGN="CENTER"><FONT SIZE=-1><%=PartPrice("503428-201")%></FONT></TD>
<TD ALIGN="CENTER"><FONT SIZE=-1><%=PartPrice("503429-201")%></FONT></TD>
<TD>&nbsp;<FONT SIZE=-1>&nbsp;<%=PartPrice("503431-501")%></FONT></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;<%=PartPrice("503430-501")%></FONT></CENTER></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;<%=PartPrice("503432-801")%></FONT></CENTER></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;<%=PartPrice("503433-L01")%></FONT></CENTER></TD></TR>

<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="34" BGCOLOR="#fffee8"><P ALIGN=LEFT>Government/Educational Rebate</TH>
<TD ALIGN="CENTER"><FONT SIZE=-1><%=PartRebate("503428-201")%></FONT></TD>
<TD ALIGN="CENTER"><FONT SIZE=-1><%=PartRebate("503429-201")%></FONT></TD>
<TD>&nbsp;<FONT SIZE=-1>&nbsp;<%=PartRebate("503431-501")%></FONT></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;<%=PartRebate("503430-501")%></FONT></CENTER></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;<%=PartRebate("503432-801")%></FONT></CENTER></TD>
<TD><P><CENTER><FONT SIZE=-1>&nbsp;<%=PartRebate("503433-L01")%></FONT></CENTER></TD></TR>

<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="34" BGCOLOR="#fffee8"><P ALIGN=LEFT>Demo Unit Purchase Price</TH>
<TD ALIGN="CENTER"><FONT SIZE=-1><A HREF="../../../sales_tools/demo_units/form.asp?pn=503428-201"><IMG SRC="images/tag.gif" BORDER=0></A><BR><%=RealPartPrice("503428-201", "C", 0.90)%></FONT></TD>
<TD ALIGN="CENTER"><FONT SIZE=-1><A HREF="../../../sales_tools/demo_units/form.asp?pn=503429-201"><IMG SRC="images/tag.gif" BORDER=0></A><BR><%=RealPartPrice("503429-201", "C", 0.90)%></FONT></TD>
<TD ALIGN="CENTER"><FONT SIZE=-1><A HREF="../../../sales_tools/demo_units/form.asp?pn=503431-501"><IMG SRC="images/tag.gif" BORDER=0></A><BR><%=RealPartPrice("503431-501", "C", 0.90)%></FONT></TD>
<TD ALIGN="CENTER"><FONT SIZE=-1><A HREF="../../../sales_tools/demo_units/form.asp?pn=503430-501"><IMG SRC="images/tag.gif" BORDER=0></A><BR><%=RealPartPrice("503430-501", "C", 0.90)%></FONT></CENTER></TD>
<TD ALIGN="CENTER"><FONT SIZE=-1><A HREF="../../../sales_tools/demo_units/form.asp?pn=503432-801"><IMG SRC="images/tag.gif" BORDER=0></A><BR><%=RealPartPrice("503432-801", "C", 0.90)%></FONT></CENTER></TD>
<TD ALIGN="CENTER"><FONT SIZE=-1><A HREF="../../../sales_tools/demo_units/form.asp?pn=503433-L01"><IMG SRC="images/tag.gif" BORDER=0></A><BR><%=RealPartPrice("503433-L01", "C", 0.90)%></FONT></CENTER></TD></TR>

<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="34" BGCOLOR="#fffee8"><P ALIGN=LEFT>Notebook Purchase Price</TH>
<TD ALIGN="CENTER"><FONT SIZE=-1><A HREF="../../../sales_tools/notebook_purchase/form.asp?pn=503428-201"><IMG SRC="images/tag.gif" BORDER=0></A><BR><%=RealPartPrice("503428-201", "1", 0.93)%></FONT></TD>
<TD ALIGN="CENTER"><FONT SIZE=-1><A HREF="../../../sales_tools/notebook_purchase/form.asp?pn=503429-201"><IMG SRC="images/tag.gif" BORDER=0></A><BR><%=RealPartPrice("503429-201", "1", 0.93)%></FONT></TD>
<TD ALIGN="CENTER"><FONT SIZE=-1><A HREF="../../../sales_tools/notebook_purchase/form.asp?pn=503431-501"><IMG SRC="images/tag.gif" BORDER=0></A><BR><%=RealPartPrice("503431-501", "1", 0.93)%></FONT></TD>
<TD ALIGN="CENTER"><FONT SIZE=-1><A HREF="../../../sales_tools/notebook_purchase/form.asp?pn=503430-501"><IMG SRC="images/tag.gif" BORDER=0></A><BR><%=RealPartPrice("503430-501", "1", 0.93)%></FONT></TD>
<TD ALIGN="CENTER"><FONT SIZE=-1><A HREF="../../../sales_tools/notebook_purchase/form.asp?pn=503432-801"><IMG SRC="images/tag.gif" BORDER=0></A><BR><%=RealPartPrice("503432-801", "1", 0.93)%></FONT></TD>
<TD ALIGN="CENTER"><FONT SIZE=-1><A HREF="../../../sales_tools/notebook_purchase/form.asp?pn=503433-L01"><IMG SRC="images/tag.gif" BORDER=0></A><BR><%=RealPartPrice("503433-L01", "1", 0.93)%></FONT></TD></TR>

<% end if %>

<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="84" BGCOLOR="#fffee8"><P ALIGN=LEFT>Intel<FONT SIZE=-1>&REG;</FONT> Pentium<FONT SIZE=-1>&REG;</FONT>
processor with MMX Technology</TH>
<TD ALIGN="CENTER"><FONT SIZE=-1>133 MHz</FONT></TD>
<TD COLSPAN="2"><P><CENTER><FONT SIZE=-1>166 MHz</FONT></CENTER></TD>
<TD>&nbsp;<FONT SIZE=-1><A HREF="../tech_overview/tech_overview.html#pentium"
>200 MHz</A></FONT></TD>
<TD COLSPAN="2"><P><CENTER>&nbsp;<FONT SIZE=-1>&nbsp;<A HREF="../tech_overview/tech_overview.html#pentium"
>233 MHz</A></FONT></CENTER></TD></TR>
<TR>
<TD BGCOLOR="#fffee8"><B>Color LCD Size &amp; Type</B></TD>
<TD><P><CENTER>&nbsp;&nbsp;<FONT SIZE=-1>12.1&quot; SVGA DS-STN</FONT></CENTER></TD>
<TD><P><CENTER>&nbsp;<FONT SIZE=-1>12.1&quot; SVGA TFT</FONT>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</CENTER></TD>
<TD><P><CENTER>&nbsp;&nbsp;<FONT SIZE=-1>13.3&quot; XGA TFT</FONT></CENTER></TD>
<TD><P><CENTER>&nbsp;<FONT SIZE=-1>12.1&quot; SVGA TFT</FONT>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</CENTER></TD>
<TD COLSPAN="2"><P><CENTER><FONT SIZE=-1>13.3&quot; <A HREF="../tech_overview/tech_overview.html#xga"
>XGA TFT</A></FONT></CENTER></TD></TR>
<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="34" BGCOLOR="#fffee8"><P ALIGN=LEFT>Hard Drive</TH>
<TD COLSPAN="2" ALIGN="CENTER">&nbsp;<FONT SIZE=-1>1.6 GB</FONT></TD>
<TD COLSPAN="2"><P><CENTER><FONT SIZE=-1>&nbsp;2.1 GB</FONT></CENTER></TD>
<TD><P><CENTER>&nbsp;<FONT SIZE=-1>&nbsp;3.3 GB</FONT></CENTER></TD>
<TD><P><CENTER>&nbsp;&nbsp;<FONT SIZE=-1>4.0 GB</FONT></CENTER></TD></TR>
<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="35" BGCOLOR="#fffee8"><P ALIGN=LEFT>Standard RAM</TH>
<TD COLSPAN="5"><P><CENTER><FONT SIZE=-1>32 MB</FONT>&nbsp;</CENTER></TD>
<TD><P><CENTER>&nbsp;<FONT SIZE=-1>&nbsp;64 MB</FONT></CENTER></TD></TR>
<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="35" BGCOLOR="#fffee8"><P ALIGN=LEFT>CD-ROM Drive</TH>
<TD COLSPAN="6"><P><CENTER><FONT SIZE=-1>20x maximum</FONT>&nbsp;</CENTER></TD></TR>
<TR ALIGN="CENTER">
<TH ALIGN="LEFT" HEIGHT="35" BGCOLOR="#fffee8"><P ALIGN=LEFT>Operating System</TH>
<TD COLSPAN="6"><P><CENTER><FONT SIZE=-1>Windows 95</FONT>&nbsp;</CENTER></TD></TR>
</TABLE>
</TD></TR>
</TABLE>
</P>

<P><CENTER>&nbsp;</CENTER></P>

<P>&nbsp;
</BODY>
</HTML>
