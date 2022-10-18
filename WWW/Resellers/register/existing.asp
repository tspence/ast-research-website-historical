<!--#include file="../../../ovation.inc"-->
<!--#include file="../../../formgen.inc"-->
<%
'''****************************************
'''THIS IS A DATABASE DRIVEN/LINKED FORM CONTACT AARON COONEY
'''BEFORE MODIFICATIONS ARE MADE!

'''****************************************
'''REQUIRED FORM OPERATORS

'''VARIABLES
Dim formID, formSubmitter

FormID = 6 
FormSubmitter = "NULL"

'''****************************************
'''REQUIRED/VALIDATED FIELDS

scriptstart
required 95,"Your Name"
required 10,"E-Mail address"
required 1,"Company Name"
required 7,"Zip Code"
required 8,"Phone Number"
scriptstop

'''****************************************
'''FORM BODY
%>
 

<HTML>
  <HEAD>
    <TITLE>Existing Reseller Registration</TITLE>
  </HEAD>

  <BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">
  
    <TABLE WIDTH=570><TR><TD>

    <BR>
    <BR>

    Thank you for your interest in AST's Ovation! program.  As a recently registered reseller, you don't
    need to fill out our entire registration form to receive your Ovation! web site account.  Simply fill
    out this mini-form, and we'll contact you with your Ovation! web site account information.  Again,
    thanks for doing business with AST!<P>

    <DL>
    <B>Company Information:</B></FONT>

    <FORM METHOD="POST" NAME="Existing" ACTION="submit_existing.asp" ONSUBMIT="return validate(Existing)">

    <DD><TABLE>
      <TR>
        <TD WIDTH=240 NOWRAP>Your Name</TD>
      	<TD><% FormTxtInput 95,40,"",40 %></TD>
      </TR>
      <TR>
      	<TD>Your E-mail Address</TD>
      	<TD><% FormTxtInput 10,40,"",40 %></TD>
      </TR>
      <TR>
        <TD>Company Name</TD>
        <TD><% FormTxtInput 1,40,"",40 %></TD>
      </TR>
      <TR>
      	<TD>DBA (If Any)</TD>
      	<TD><% FormTxtInput 177,40,"",40 %></TD>
      </TR>
      <TR>
      	<TD>Address</TD>
      	<TD><% FormTxtInput 3,40,"",40 %></TD>
      </TR>
      <TR>
      	<TD>City</TD>
      	<TD><% FormTxtInput 5,40,"",40 %></TD>
      </TR>
      <TR>
      	<TD>State</TD>
      	<TD><% FormTxtInput 6,40,"",40 %></TD>
      </TR>
      <TR>
      	<TD>Zip Code</TD>
      	<TD><% FormTxtInput 7,40,"",40 %></TD>
      </TR>
      <TR>
      	<TD>Telephone Number</TD>
      	<TD><% FormTxtInput 8,40,"",40 %></TD>
      </TR>
      <TR>
      	<TD>Fax Number</TD>
      	<TD><% FormTxtInput 9,40,"",40 %></TD>
      </TR>
    </TABLE>
    </DL>

    <HR SIZE=5 WIDTH=20% ALIGN=CENTER>
    <P>


<%
FormHdnInput 11, formID
FormHdnInput 12, formSubmitter
%> 

    <CENTER>
      <INPUT TYPE=submit VALUE="  Request Ovation Account  ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <INPUT TYPE=reset VALUE="Reset Form"> </CENTER>
    </FORM>

    <HR SIZE=5 WIDTH=20% ALIGN=CENTER>
    <P>
    <CENTER>
      	<I>For further information on your AST Ovation! web site account, please contact your
      	sales representative, or contact AST at (800) 876 4278.</I>
    </CENTER>

    </TD></TR></TABLE>

  </BODY>
</HTML>