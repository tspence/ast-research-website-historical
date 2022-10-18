<HTML>
  <HEAD>
    <TITLE>AST Interchange</TITLE>
  </HEAD>
  <BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">
    <TABLE WIDTH=95% HEIGHT=92% BORDER=0>
      <TR>
        <TD ALIGN=middle>
<% if Request("source") = "interchange" then %>
          <IMG SRC="images/ovationman.gif" BORDER=0 ALT="Interchange">
<% else %>
          <IMG SRC="images/ovationman.gif" BORDER=0 ALT="OVATION">
<% end if %>
        </TD>
        <TD ALIGN=right>
        
          Can't remember your password?  Type in your email address below and as long 
          as you are in our database, we'll send you an automatic reply with your 
          username and password.<P>

          If we do not have your email address or you are not listed in our database, 
          contact your Inside Sales Representative for assistance.<P>
          
          
      	  <FORM METHOD=post ACTION="forget2.asp">
      	    <B>Email Address:</B> <INPUT TYPE=TEXT SIZE=20 MAX=50 NAME="email"><BR>
      	    <INPUT TYPE=hidden NAME=source VALUE=<%=Request("source")%>>
            <INPUT TYPE=submit VALUE="I've forgotten my password.">
          </FORM>
	
  	      <BR><BR><BR><A HREF="../register/main.html" TARGET="body"><IMG SRC="../images/register.GIF" WIDTH=
"91" HEIGHT="43" ALIGN="BOTTOM" NATURALSIZEFLAG="3" BORDER="0"></A><BR>for AST's Ovation! Program
        </TD>
      </TR>
    </TABLE>
  </BODY>
</HTML>
