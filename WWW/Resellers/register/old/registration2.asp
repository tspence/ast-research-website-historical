<!--#include file="../../register.inc"--> 

<%

'*********************************************************************
'THIS IS THE VERIFICATION THAT ALL ESSENTIAL DATA WAS FILLED IN
'*********************************************************************

ok = 1

if Request("conname1")    = "" then ok = 0 end if
if Request("conname2")    = "" then ok = 0 end if
if Request("coname")      = "" then ok = 0 end if
if Request("addr1")       = "" then ok = 0 end if
if Request("city")        = "" then ok = 0 end if
if Request("postal_code") = "" then ok = 0 end if
if Request("phone")       = "" then ok = 0 end if
if Request("fax")         = "" then ok = 0 end if
if Request("email")       = "" then ok = 0 end if
if Request("taxidno")     = "" then ok = 0 end if

if ok = 0 then
  Response.Redirect("bad.html")
end if

'*********************************************************************
'THIS IS THE BEGINNING OF THE REAL PAGE
'*********************************************************************

%>

<HTML>
  <HEAD>
    <TITLE>Ovation! Reseller Registration - Step 2</TITLE>
  </HEAD>

  <BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">
    <BR>
    <BR>
    <BR>
    <BR>
    <CENTER>
      <H1>Ovation! Reseller Registration - Step 2</H1>
      <H4>United States only</H4>
    </CENTER>

    <HR SIZE=5 WIDTH=20% ALIGN=CENTER>
    <P>

    <CENTER>
      Step 1. - Enter an overview of your sales organization.<BR>
      <B>Step 2. - Enter information about your current sales activities.</B><BR>
      Step 3. - Select the metropolitan areas your organization services.
    </CENTER><P>

    <HR SIZE=5 WIDTH=20% ALIGN=CENTER>
    <P>

    <FORM METHOD="POST" ACTION="registration3.asp">

<%

call BuildPage("R2")

%>

<% call PassHidden() %>

    <CENTER><INPUT TYPE=submit VALUE="Proceed to Step 3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT
    TYPE=reset VALUE="Clear and Begin Again"> </CENTER>
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
    <A HREF="#top"><FONT SIZE=-1><U><DIV ALIGN=RIGHT>Top of Page</DIV></U></FONT></A>
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

    </FORM>
  </BODY>
</HTML>