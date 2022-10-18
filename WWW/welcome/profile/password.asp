<!--#include file="../../../ovation.inc"--> 

<HTML>
  <BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">
    <TABLE WIDTH=570><TR><TD>
    
    <CENTER>
      <H2>Password Change</H2>
    </CENTER>
    
<%
select case Request("bad")
  case "0"
%>
    <P>
    <B><I>Your password has been changed.</I></B><P>
    You can click <A HREF="../ovation_body.asp">here</A> to return to the welcome page.
    <P>
<%
  case "1"
%>
    <P>
    <B><I>You must fill out all four fields in order to change your password.</I></B>
    Please try again.  Enter your username, old password, and your new password twice
    for confirmation.
    <P>
<%
  case "2"
%>
    <P>
    <B><I>Your passwords did not match.</I></B>  Please make sure you typed your new
    password identically in both fields.
    <P>
<%
  case "3"
%>
    <P>
    <B><I>Your user information could not be verified.</I></B>  Did you mistype your
    username or previous password?  Please make sure the information here is correct.
    <P>
<%
  case else
%>
    <P>
    You may use this page to change your password. Please remember it, because it 
    will be permanently changed after pressing the &quot;Change Password Now&quot;
    button.
    <P>
<%
end select 
%>
    <FORM METHOD="POST" ACTION="send_password.asp">
      <CENTER><TABLE CELLSPACING=3 CELLPADDING=3>
        <TR>
          <TD VALIGN=TOP WIDTH=320><I>Enter your User ID here:</I></TD>
          <TD><INPUT NAME="userid" TYPE="text" SIZE=40 VALUE=""></TD>
        </TR>
        
        <TR>
          <TD VALIGN=TOP><I>Enter your old password here:</I></TD>
          <TD><INPUT NAME="oldpassword" TYPE="password" SIZE=40 VALUE=""></TD>
        </TR>
        
        <TR>
          <TD VALIGN=TOP><I>Enter your new password here:</I></TD>
          <TD><INPUT NAME="newpassword" TYPE="password" SIZE=40 VALUE=""></TD>
        </TR>
        
        <TR>
          <TD VALIGN=TOP><I>Confirm your new password by retyping it here:</I></TD>
          <TD><INPUT NAME="confirm" TYPE="password" SIZE=40 VALUE=""></TD>
        </TR>
        
        <TR>
          <TD COLSPAN=2 ALIGN=right>
            <INPUT TYPE=submit NAME="submit" VALUE="Change Password">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <INPUT TYPE=submit NAME="submit" VALUE="Cancel"> 
          </TD>
        </TR>
      </TABLE></CENTER>
      
    <P>
    <HR NOSHADE>

    </TD></TR></TABLE>
  </BODY>
</HTML>