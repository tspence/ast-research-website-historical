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

FormID = 4
FormSubmitter = session("contact_id") 

'''****************************************
'''REQUIRED/VALIDATED FIELDS

scriptstart
required 95,"Name"
required 1,"Company"
required 3,"Street Address"
required 5,"City"
required 6,"State"
required 7,"Zip Code"
required 8,"Phone"
required 89,"Reseller#"
required 56,"Company Message"
scriptstop


'''****************************************
'''FORM BODY
%>

<%
if session("source") <> "ast" then
  set conn = NewConnection()
  set rs = conn.Execute("sp_Get_Contact " + session("contact_id"))
end if

function get(byval field)
  if session("source") <> "ast" then
    get = rs(field)
  else
    get = ""
  end if
end function

%>
<HTML>
  <BODY BGCOLOR="#ffffff">
    <TABLE WIDTH=570><TR><TD>
    
    <FORM METHOD=post ACTION="submit.asp" NAME="Template" ONSUBMIT="return validate(Template)">
    
    <P><CENTER><TABLE WIDTH="90%" BORDER="0" CELLSPACING="0" CELLPADDING="0">
    <TR>
    <TD WIDTH="618%"><P><IMG SRC="images/page_heading_sm.GIF" WIDTH="100" HEIGHT="100" ALIGN=
    "BOTTOM" NATURALSIZEFLAG="3" BORDER="0"><BR>
    <H2><I>Marketing Template Program</I></H2>
    </P>
    
    <H3><I>Ordering Instructions:</I></H3>
    
    <OL>
      <LI>Select the Marketing Template you would like to use and mark your selection
      on the order form below.
      <LI>Complete your company message (up to 100 words) on the order form below.
      Please state your message exactly as you would like it to appear on your
      selected template. <B><I>Note:</I></B> Your order cannot be completed without
      this information.
      <LI>Provide us with your mailing labels. Or, AST will provide a list of
      prospective end-users for you.
      <LI>Submit or mail your completed order form along with your payment and
      company logo in black to:AST Fulfillment Center, AST Ovation! Program,
      P.O. Box 3028, Santa Fe Springs, CA 90670
    </OL>
    
    <P><CENTER><I><SMALL>Note: Your logo must be sent electronically in any
    of the following Macintosh formats: Freehand, Adobe Illustrator or QuarkXpress.
    Please include a printed copy and clearly state the format of your file
    on your diskette.</SMALL></I></CENTER></P>
    
    <P>You will receive a confirmation E-mail from AST within 24 hours of receipt
    of your order at the AST Fulfillment Center.</P>
    
    <P><B><I><BIG>Available Materials:</BIG></I></B> <TABLE BORDER="1" CELLSPACING=
    "0" CELLPADDING="0" WIDTH="100%">
    <TR ALIGN="TOP">
    <TD ALIGN="CENTER" HEIGHT="40"><B>Item #</B></TD>
    <TD><B>&nbsp;&nbsp;Description</B></TD>
    <TD ALIGN="CENTER"><B>Special Price</B></TD>
    <TD ALIGN="CENTER"><B>Order Qty.</B></TD>
    <TR>
    <TD HEIGHT="40" ALIGN="CENTER">752</TD>
    <TD><FONT SIZE=2>&nbsp;&nbsp;Ascentia A Direct Mail Template (500 pcs.)</TD>
    <TD ALIGN="CENTER">$700.00</TD>
    <TD ALIGN="CENTER"><%FormTxtInput 22,6,"",6%></TD>
    <TR>
    <TD HEIGHT="40" ALIGN="CENTER">754</TD>
    <TD><FONT SIZE=2>&nbsp;&nbsp;Bravo Direct Mail Template (500 pcs.)</TD>
    <TD ALIGN="CENTER">$700.00</TD>
    <TD ALIGN="CENTER"><%FormTxtInput 24,6,"",6%></TD>
    <TR>
    <TD HEIGHT="40" ALIGN="CENTER">&nbsp;</TD>
    <TD><FONT SIZE=2>&nbsp;&nbsp;Provide 500 Name List from National Business Database</TD>
    <TD ALIGN="CENTER">N/C</TD>
    <TD ALIGN="CENTER"><%FormTxtInput 25,6,"",6%></TD>
    </TABLE>
    </P>
    
    <P>&nbsp;</P>
    
    <H3><I>Your Information:</I></H3>
    
    <TABLE BORDER=
    "0" CELLSPACING="0" CELLPADDING="0" WIDTH="100%">
    <TR>
    <TD HEIGHT="30" ALIGN="RIGHT">Name:&nbsp;&nbsp;</TD>
    <TD COLSPAN="3"><%FormTxtInput 95,40,get("first_name") + " " + get("last_name"),40%></TD></TR>
    <TR>
    <TD HEIGHT="30" ALIGN="RIGHT">Title:&nbsp;&nbsp;</TD>
    <TD COLSPAN="3"><%FormTxtInput 96,40,get("title"),40%></TD></TR>
    <TR>
    <TD HEIGHT="30" ALIGN="RIGHT">Company:&nbsp;&nbsp;</TD>
    <TD COLSPAN="3"><%FormTxtInput 1,40,get("location_name"),40%></TD></TR>
    <TR>
    <TD HEIGHT="30" ALIGN="RIGHT">Street Address:&nbsp;&nbsp;</TD>
    <TD COLSPAN="3"><%FormTxtInput 3,40,get("addr1"),40%></TD></TR>
    <TR>
    <TD HEIGHT="30" ALIGN="RIGHT">City:&nbsp;&nbsp;</TD>
    <TD COLSPAN="3"><%FormTxtInput 5,40,get("city"),40%></TD></TR>
    <TR>
    <TD HEIGHT="30" ALIGN="RIGHT">State:&nbsp;&nbsp;</TD>
    <TD COLSPAN="3"><%FormTxtInput 6,2,get("state_region_abbrv"),2%></TD></TR>
    <TR>
    <TR>
    <TD HEIGHT="30" ALIGN="RIGHT">Zip Code:&nbsp;&nbsp;</TD>
    <TD COLSPAN="3"><%FormTxtInput 7,11,get("postal_code"),11%></TD></TR>
    <TR>
    <TD HEIGHT="30" ALIGN="RIGHT">Phone:&nbsp;&nbsp;</TD>
    <TD COLSPAN="3"><%FormTxtInput 8,20,get("main_phone"),20%></TD></TR>
    <TR>
    <TD HEIGHT="30" ALIGN="RIGHT">Fax:&nbsp;&nbsp;</TD>
    <TD COLSPAN="3"><%FormTxtInput 9,20,get("main_fax"),20%></TD></TR>
    <TR>
    <TD HEIGHT="30" ALIGN="RIGHT">E-mail:&nbsp;&nbsp;</TD>
    <TD COLSPAN="3"><%FormTxtInput 10,40,get("email_addr"),40%></TD></TR>
    <TR>
    <TD HEIGHT="30" ALIGN="RIGHT">Reseller #:&nbsp;&nbsp;</TD>
<%
if len(trim(nstr(get("reg_ext")))) > 0 then
resellernumber = get("reg_no") + "-" + get("reg_ext")
else
resellernumber = get("reg_no")
end if

%>
    <TD COLSPAN="3"><%FormTxtInput 89,40,resellernumber,40%></TD></TR>
    <TR>
    <TD HEIGHT="30" ALIGN="RIGHT">Reseller Web Site:&nbsp;&nbsp;</TD>
    <TD COLSPAN="3"><%FormTxtInput 103,40,get("web_page"),40%></TD></TR>    
    <TR>
    <TD ALIGN="Right"><%FormRdoInput 163,"No","Prepare Logo","Yes"%>&nbsp;&nbsp;</TD>
    <TD COLSPAN="3" HEIGHT="30" ALIGN="Left">I would like you to prepare a logo using a standard font.</TD></TR>
    <TR>
    <TD ALIGN="Right"><%FormRdoInput 163,"No","Supply Logo","No"%>&nbsp;&nbsp;</TD>
    <TD COLSPAN ="3" HEIGHT="30" ALIGN="Left">I will send you my own logo in a Macintosh file format.</TD></TR>    
    </TABLE>
    </P>
    
    <H3><I>Method of Payment:</I></H3>
    
    <DL>
      <DD><%FormRdoInput 85,"No","FlexFunds","Yes"%>Deduct from AST FlexFunds account<BR>
        <DL><DD><FONT SIZE=2><I>(Your available AST FlexFunds will be verified and the total automatically deducted.)</I></FONT></DL><BR>

      <DD><%FormRdoInput 85,"No","Check or Money Order","No"%>Cashier's check or money order.<BR>
        <DL><DD><FONT SIZE=2><I>Complete check and mail to:</I><BR>
          <DL><DD>AST Research, Inc<BR>
          <DD>Customer Sales Administration<BR>
          <DD>P.O. Box 57005 (M/S 3-54)<BR>
          <DD>Irvine, CA  92619-7005</DL></FONT></DL><BR>

      <DD><%FormRdoInput 85,"No","American Express","No"%> American Express
      <DD><%FormRdoInput 85,"No","Mastercard","No"%>MasterCard
      <DD><%FormRdoInput 85,"No","Visa","No"%>VISA
      
      <DL>
        <DD> Card Number <%FormTxtInput 86,20,"",20%>&nbsp;&nbsp;&nbsp; Exp. Date <%FormTxtInput 87,7,"",10%>
      </DL>
    </DL>
    <BR>
    
    <P><B><I><BIG>Company Message:</BIG></I></B><BR>
    <DD><%FormTxtareaInput 56,10,50,""%></P>
    
    <P>&nbsp;</P>
    
    <P><CENTER><%FormButton 13%>&nbsp;&nbsp<%FormButton 15%></CENTER></P>
    
    <P><CENTER><IMG SRC="images/border.GIF" WIDTH="428" HEIGHT="5" ALIGN="BOTTOM"
    NATURALSIZEFLAG="3" BORDER="0"></CENTER></P>
    
    <P><I><SMALL>AST is a registered trademark and AST Computer, the AST logo
    and Ascentia, are trademarks of AST Research, Inc. AST Research, Inc. shall
    not be liable for technical or editorial errors or omissions contained herein;
    nor for incidental or consequential damages resulting from the furnishing,
    performance or use of this material. <BR>
    Copyright&COPY; 1997, AST Research, Inc. All rights reserved.</SMALL></I></P>
    
    <P ALIGN=RIGHT><IMG SRC="images/logo-white.gif" WIDTH="150" HEIGHT="79"
    ALIGN="BOTTOM" NATURALSIZEFLAG="3" BORDER="0"></TD></TR>
    </TABLE>
    </CENTER>
<%
FormHdnInput 11, formID
FormHdnInput 12, formSubmitter
%>
  </FORM>
    </TD></TR></TABLE>
  </BODY>
</HTML>
