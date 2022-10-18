<!--#include file="../../basic.inc"-->
<%

'******************************************************************************
'*
'* This function renames the file directory
'*
'******************************************************************************
function PR(byval filename)
  do while instr(filename,"\")
    filename = mid(filename,instr(filename,"\") + 1)
  loop
  
  PR = "../ast/newsroom/releases/" + filename
end function

%>

<HTML>
<HEAD>
  <TITLE>AST Ovation! Welcome</TITLE>
</HEAD>
<BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">

<P><TABLE WIDTH="500" BORDER="0" CELLSPACING="0" CELLPADDING="0">
<TR>
<TD><P><TABLE WIDTH="475" BORDER="0" CELLSPACING="0" CELLPADDING="0">
<TR>
<TD><P><CENTER><B><I><BIG><BR>
Welcome, <%=session("name")%>, to AST Ovation! </BIG></I></B></CENTER></TD></TR>
</TABLE>
<BR>
<TABLE WIDTH="475" BORDER="0" CELLSPACING="2" CELLPADDING="3">
<TR>
<TD ROWSPAN="2" VALIGN="TOP"><P><IMG SRC="images/ovation_welcome.gif" WIDTH="310" HEIGHT="263"
ALIGN="BOTTOM"></P>

<P><TABLE WIDTH="250" BORDER="0" CELLSPACING="8" CELLPADDING="3" HEIGHT=
"511">
<TR>
<TD COLSPAN="2" VALIGN="TOP"><P><IMG SRC="images/whats_new.JPG" WIDTH="100" HEIGHT="76" ALIGN=
"BOTTOM" BORDER="0"></P>

<P ALIGN=RIGHT><TABLE WIDTH="200" BORDER="0" CELLSPACING="0" CELLPADDING=
"0">
<TR>
<TD BGCOLOR="#fffee8"><P><B><I><BIG>What's New:</BIG></I></B></P>

<UL>
<%
set conn = NewConnection()
set rs = conn.Execute("sp_List_Ovation_Releases")
do while not rs.EOF
%>
  <LI><FONT SIZE=2><A HREF="<%=PR(rs("SourceFileLoc"))%>"><%=rs("ShortDescription")%></A><BR>
<%
  rs.MoveNext
loop
rs.Close
%>
</UL>

</TD></TR>
</TABLE>
</TD></TR>
<TR>
<TD COLSPAN="2"><P><IMG SRC="images/profile.JPG" WIDTH="100" HEIGHT="74" ALIGN="BOTTOM"
NATURALSIZEFLAG="3" BORDER="0"></P>

<P ALIGN=RIGHT><TABLE WIDTH="200" BORDER="0" CELLSPACING="0" CELLPADDING="2">
<TR>
<TD BGCOLOR="#fffee8"><P><B><I><BIG>Profile Adjustments:</BIG></I></B></P>

<UL>
  <LI><SMALL><A HREF="profile/password.asp">Change my password</A></SMALL>
  <LI><SMALL><A HREF="profile/page.asp?page=REG">Update my company profile</A></SMALL>
  <LI><SMALL><A HREF="profile/profile.asp">Change my address</A></SMALL>
<!----  <LI><SMALL>Get an Ovation! account for a co-worker</SMALL> ---->
</UL>
</TD></TR>
</TABLE>
</TD></TR>
</TABLE>
</P>

<P><CENTER><TABLE WIDTH="275" BORDER="0" CELLSPACING="4" CELLPADDING="2">
<TR>
<TD WIDTH="47%">&nbsp;</TD>
<TD WIDTH="53%">&nbsp;</TD></TR>
<TR>
<TD COLSPAN="2">
<P>
	
		<P ALIGN="CENTER"><FONT SIZE="2"><B><A HREF="../servicecenter_newsletter/news.pdf">Read the <BR> AST Authorized Service Center Newsletter</A></B></FONT><B></B></P>


<P>
<CENTER>&nbsp;&nbsp;<IMG SRC="../Resellers/log_in/images/OVATIONMAN.GIF"
WIDTH="122" HEIGHT="200" ALIGN="BOTTOM"></CENTER></TD></TR>
</TABLE>
</CENTER></TD>
<TD HEIGHT="118" VALIGN="TOP"><P><CENTER>&nbsp;</CENTER></P>

<P><CENTER><IMG SRC="images/in_news.JPG" WIDTH="100" HEIGHT="60"
ALIGN="BOTTOM" BORDER="0"></CENTER></TD></TR>
<TR>
<TD VALIGN="TOP" BGCOLOR="#fffee8"><P><CENTER><B>AST in the News</B><SMALL><BR>
See AST featured in the following publications<BR>
</SMALL><IMG SRC="images/dots_ovation_welcome.GIF" WIDTH="63" HEIGHT=
"13" ALIGN="BOTTOM" BORDER="0"></CENTER></P>

<P><B><SMALL>Windows Magazine</SMALL></B><SMALL><BR>
11/97<BR>
Ascentia M is a rock-solid notebook.</SMALL></P>

<P><B><SMALL>PC Portables</SMALL></B><SMALL><BR>
11/97<BR>
Ascentia M receives rave reviews. </SMALL></P>

<P><B><SMALL>VARBusiness</SMALL></B><SMALL><BR>
10/15<BR>
Ascentia included in notebook roundup.</SMALL></P>

<P><B><SMALL>CRN and CRN online</SMALL></B><SMALL><BR>
10/6<BR>
Notebooks performing on same level as desktops; AST notebook security mentioned.</SMALL></P>

<P><B><SMALL>CRN</SMALL></B><SMALL><BR>
10/6<BR>
Best-selling notebooks, AST listed.</SMALL></P>

<P><B><SMALL>Windows Magazine</SMALL></B><SMALL><BR>
11/97<BR>
Bravo MS bundled with voice recognition software.</SMALL></P>

<P><B><SMALL>VARBusiness</SMALL></B><SMALL><BR>
10/15<BR>
Bravo included in desktop roundup.</SMALL></P>

<P><B><SMALL>Internet Week</SMALL></B><SMALL><BR>
10/27<BR>
Improved PC based servers; Premium HS.</SMALL></P>

<P><B><SMALL>InfoWorld Electric</SMALL></B><SMALL><BR>
10/20<BR>
AST announces high-performance server line.</SMALL></P>

<P><B><SMALL>PC Week Online</SMALL></B><SMALL><BR>
10/20<BR>
New AST servers with flex-chassis.</SMALL></P></TD></TR>

<TR>
<TD VALIGN="TOP" HEIGHT="34">&nbsp;</TD>
<TD VALIGN="TOP">&nbsp;</TD></TR>
<TR>
<TD COLSPAN="2" VALIGN="TOP"><P><CENTER><B><SMALL>[ <A HREF="../AST/main.html" TARGET="body">AST</A>
| <A HREF="../Products_reseller/main.html" TARGET="body">Products</A> |
<A HREF="../services/main.html" TARGET="body">Services</A> | <A HREF="../support/main.html"
TARGET="body">Support</A> ] <BR>
[
<% if session("ovation_level") <> "B" then %>
  <A HREF="../marketing_tools/main.html" TARGET="body">Marketing Tools</A> |
<% end if %>
<A HREF="../sales_tools/main.html" TARGET="body">Sales Tools</A> 
<% if session("ovation_level") = "G" then %>
  | <A HREF="../training/main.html" TARGET="body">Training</A> 
<% end if %>
| <A HREF="../search/main.html" TARGET="body">Search AST</A> 
	  | </B></FONT><A HREF="legal_body.html"><B><FONT SIZE="-1">Legal Information</B></FONT></A><B><FONT SIZE="-1"> 
]</SMALL></B></CENTER></TD></TR>
</TABLE>
</P>

<P><CENTER><IMG SRC="images/border_lines_3.GIF" HEIGHT="13" WIDTH=
"470" BORDER="0" ALT="Picture" ALIGN="BOTTOM"></CENTER></TD></TR>
</TABLE>
</P>

<P><TABLE WIDTH="550" BORDER="0" CELLSPACING="4" CELLPADDING="2">
  <TR>
<% if session("java") = "no" then %>
    <TD WIDTH="45%"><P><CENTER><A HREF="java.asp?java=yes" TARGET="_top"><IMG SRC="images/java.GIF"
    HEIGHT="75" WIDTH="75" BORDER="0" ALT="Java-Enabled Site" NATURALSIZEFLAG=
    "0" ALIGN="BOTTOM"></A><BR>
    <SMALL><SMALL><A HREF="java.asp?java=yes" TARGET="_top">Java-Enabled Site</A></SMALL></SMALL></CENTER></TD>
<% else %>
    <TD WIDTH="45%"><P><CENTER><A HREF="java.asp?java=no" TARGET="_top"><IMG SRC="images/no_java.GIF"
    HEIGHT="75" WIDTH="75" BORDER="0" ALT="Non-Java Site"
    ALIGN="BOTTOM"></A><BR>
    <SMALL><SMALL><A HREF="java.asp?java=no" TARGET="_top">Non-Java Site</A></SMALL></SMALL></CENTER></TD>
<% end if %>
    
    <TD WIDTH=10%>&nbsp;</TD>
    <TD ALIGN="CENTER" VALIGN="CENTER">&nbsp;<A HREF="/channel/channel.cdf"><IMG SRC="images/channel.GIF"
    HEIGHT="31" WIDTH="110" BORDER="0" ALT="AST Channel for Internet Explorer 4"
    ALIGN="BOTTOM"><BR>
    <SMALL><SMALL>subscribe to the AST Channel</SMALL></SMALL></A></TD>
    <TD WIDTH=10%>&nbsp;</TD>
  </TR>
  <TR>
    <TD COLSPAN="4">&nbsp;<BR><CENTER>&nbsp;<SMALL><FONT COLOR="#000000">Copyright &COPY; 1995, 1996,
    1997 AST Research, Inc. 16215 Alton Parkway, Irvine, California 92718, United
    States of America. All Rights not specifically granted are Expressly Reserved.</FONT></SMALL></CENTER></TD>
  </TR>
</TABLE>
</BODY>
</HTML>
