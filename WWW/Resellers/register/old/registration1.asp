<!--#include file="../../register.inc"--> 

<HTML>
  <HEAD>
    <TITLE>Ovation! Reseller Registration - Step 1</TITLE>
  </HEAD>

  <BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">

    <BR>
    <BR>
    <CENTER>
      <H1>Ovation! Reseller Registration - Step 1</H1>
      <H4>United States only</H4>
    </CENTER>

    <HR SIZE=5 WIDTH=20% ALIGN=CENTER>
    <P>

    <CENTER>
      <B>Step 1. - Enter an overview of your sales organization.</B><BR>
      Step 2. - Enter information about your current sales activities.<BR>
      Step 3. - Select the metropolitan areas your organization services.
    </CENTER>

    <P>
    <HR SIZE=5 WIDTH=20% ALIGN=CENTER>
    <P>
    Please submit the following information.

    <P>

    <DL>
    <FONT SIZE=2><B>COMPANY INFORMATION:</B></FONT>

    <FORM METHOD="POST" ACTION="registration2.asp">

    <DD><TABLE>
      <TR>
        <TD WIDTH=240 NOWRAP>Main Contact - First Name</TD>
      	<TD><INPUT NAME="conname1" SIZE=40></TD>
      </TR>
      <TR>
      	<TD>Main Contact - Last Name</TD>
      	<TD><INPUT NAME="conname2" SIZE=40></TD>
      </TR>
      <TR>
        <TD>Company Name</TD>
        <TD><INPUT NAME="coname" SIZE=40></TD>
      </TR>
      <TR>
      	<TD>DBA</TD>
      	<TD><INPUT NAME="dba" SIZE=40></TD>
      </TR>
      <TR>
      	<TD>Street Address</TD>
      	<TD><INPUT NAME="addr1" SIZE=40></TD>
      </TR>
      <TR>
      	<TD>City</TD>
      	<TD><INPUT NAME="city" SIZE=40></TD>
      </TR>
      <TR>
      	<TD>State</TD>
      	<TD><% call StateRegionSelect(-1) %></TD>
      </TR>
      <TR>
      	<TD>Zip Code</TD>
      	<TD><INPUT NAME="postal_code" SIZE=40></TD>
      </TR>
      <TR>
      	<TD>Telephone Number</TD>
      	<TD><INPUT NAME="phone" SIZE=40></TD>
      </TR>
      <TR>
      	<TD>Fax Number</TD>
      	<TD><INPUT NAME="fax" SIZE=40></TD>
      </TR>
      <TR>
      	<TD>Web Page</TD>
      	<TD><INPUT NAME="web_page" SIZE=40></TD>
      </TR>
      <TR>
      	<TD>E-mail Address</TD>
      	<TD><INPUT NAME="email" SIZE=40></TD>
      </TR>
      <TR>
      	<TD>Tax ID Number</TD>
      	<TD><INPUT NAME="taxidno" SIZE=40></TD>
      </TR>
    </TABLE>
    </DL>

    <HR SIZE=5 WIDTH=20% ALIGN=CENTER>
    <P>

<%

call BuildPage("R1")

%>

    <CENTER>
      <INPUT TYPE=submit VALUE="Proceed to Step 2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <INPUT TYPE=reset VALUE="Clear and Begin Again"> </CENTER>
    </FORM>

    <HR SIZE=5 WIDTH=20% ALIGN=CENTER>
    <P>
    <CENTER>
      <FONT SIZE=2>
      	<I>The AST Indirect Reseller Registration Form may not be duplicated without
      	written permission from AST. AST is a registered trademark and AST Computer and
      	the AST logo are trademarks of AST Research, Inc. All other products or services
      	are trademarks or registered trademarks of their respective owners. Information
      	is subject to change without notice. AST is not liable for technical or
      	editorial errors or omissions contained herein; nor for incidental or
      	consequential damages resulting from the furnishing, performance, or use of this
      	material. Copyright 1997 &copy; AST Research, Inc. All rights reserved.</I>
      </FONT>
    </CENTER>

    <P>
    <HR SIZE=5 WIDTH=20% ALIGN=CENTER>
    <P>
    <CENTER>
      <I>For further information, call AST Research, Inc. at 1-800-876-4278;<BR>
      international inquiries call (+1) (714) 727-9292.</I>
    </CENTER>

    <P>
    <HR SIZE=5 WIDTH=20% ALIGN=CENTER>
    <P>

    <CENTER>
      <A HREF="http://www.ast.com/" TARGET=_top>Return to AST Home Page</A>
    </CENTER>

    <P>
    &copy; Copyright 1997 AST Research, Inc.

  </BODY>
</HTML>