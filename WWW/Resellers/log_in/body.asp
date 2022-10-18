<HTML>
<HEAD>
  <META NAME="GENERATOR" CONTENT="Adobe PageMill 2.0 Win">
</HEAD>
<BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">

<FORM METHOD="POST" ACTION="login2.asp" TARGET="_top" ENCTYPE="x-www-form-urlencoded">
<TABLE WIDTH="570" BORDER="0" CELLSPACING="2" CELLPADDING="0" HEIGHT="435">
<% if session("bad_login_attempt") = "1" then %>
<TR>
<TD COLSPAN="2" ALIGN="CENTER"><B><I><SMALL><FONT FACE="Arial">You could not be logged in to the AST Ovation!
reseller site. If you have forgotten your password, click <A HREF="forget.asp">here</A>.</FONT></SMALL></I></B></TD></TR>
<TR>
<TD HEIGHT="29" WIDTH="27%">&nbsp;</TD>
<TD>&nbsp;</TD></TR>
<% end if %>
<TR>
<TD ALIGN="CENTER" VALIGN="TOP" HEIGHT="356"><IMG SRC="images/OVATIONMAN.GIF" WIDTH="122" HEIGHT="200" ALIGN="BOTTOM"
NATURALSIZEFLAG="3"></TD>
<TD WIDTH="73%"><TABLE BORDER="0" CELLSPACING="2" CELLPADDING="0" WIDTH="73%" HEIGHT="345">
<TR>
<TD COLSPAN="2"><B><I><BIG>Reseller Log in:</BIG></I></B></TD></TR>
<TR>
<TD COLSPAN="2">&nbsp;</TD></TR>
<TR>
<TD ALIGN="RIGHT" HEIGHT="32"><B>Username:</B></TD>
<TD><INPUT TYPE="text" SIZE="20" MAX="50" NAME="username"></TD></TR>
<TR>
<TD ALIGN="RIGHT" HEIGHT="32"><B>Password:</B></TD>
<TD><INPUT TYPE="password" SIZE="20" MAX="50" NAME="password"></TD></TR>
<TR>
<TD COLSPAN="2">&nbsp;</TD></TR>
<TR>
<TD HEIGHT="32"></TD>
<TD ALIGN="CENTER"><INPUT TYPE="submit" VALUE="Enter Ovation"></TD></TR>
<TR>
<TD COLSPAN="2">&nbsp;</TD></TR>
<TR>
<TD COLSPAN="2">&nbsp;</TD></TR>
<TR>
<TD COLSPAN="2" ALIGN="CENTER"><A HREF="../register/main.html" TARGET="body"><IMG SRC="../images/register.GIF" WIDTH=
"91" HEIGHT="43" ALIGN="BOTTOM" NATURALSIZEFLAG="3" BORDER="0"></A><BR>
for AST's Ovation! Program</TD></TR>
<TR>
<TD COLSPAN="2" ALIGN="CENTER"><LI><B><A HREF="forget.asp">Password Services</A></B></TD></TR>
</TABLE>
</TD></TR>
</TABLE>
</FORM>
</BODY>
</HTML>
