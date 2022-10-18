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

FormID = 2 
FormSubmitter = session("contact_id") 

'''****************************************
'''REQUIRED/VALIDATED FIELDS

scriptstart
required 1,"Bill To"
required 2,"Main Contact"
required 56,"Address"
required 8,"Telephone"
required 70,"Product Description"
required 75,"Part Number"
required 80,"Unit Price"
required 88,"Authorizing Name"
required 89,"Reseller/Diamond Number"
required 42,"Date"
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
    
    <FORM METHOD=post ACTION="submit.asp" NAME="DemoUnit" ONSUBMIT="return validate(DemoUnit)">
    <CENTER><TABLE WIDTH="90%" BORDER="0" CELLSPACING="0" CELLPADDING="0"><TR><TD>
    
    <B><I><BIG><BIG>Demo Unit Request Form</BIG></BIG></I></B>
    
    <BR><BR><BR>
    
    <P><CENTER><IMG SRC="images/border.gif" WIDTH=428 HEIGHT=5></CENTER></P>
    
    <P>
    
    <H3>BILLING ADDRESS</H3>
    
    <TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0">
    <TR>
    <TD></TD>
    <TD ALIGN=right VALIGN=top><B>Bill To:&nbsp;&nbsp;</B></TD>
    <TD><%FormTxtInput 1,50,Get("location_name"),50%></TD></TR>
    <TR>
    <TD WIDTH=10%>&nbsp;</TD>
    <TD ALIGN=right><B>Main Contact:&nbsp;&nbsp;</B></TD>
    <TD><%FormTxtInput 2,50,trim(Get("first_name") + " " + get("last_name")),50%></TD></TR>
    <TR>
    <TD></TD>
    <TD ALIGN=right VALIGN=top><B>Address:&nbsp;&nbsp;</B></TD>
    <TD>
<%
addr = Get("addr1")
if len(trim(addr)) > 0 then
  address = addr + newline
end if
addr = Get("addr2")
if len(trim(addr)) > 0 then
  address = address + addr + newline
end if
addr = Get("city") + ", " + Get("state_region_abbrv") + " " + Get("postal_code")
if len(trim(addr)) > 1 then
  address = address + addr + newline
end if
%>
    <%FormTxtAreaInput 56,5,40,address%></TD></TR>
    <TR>
    <TD></TD>
    <TD ALIGN=right><B>Telephone:&nbsp;&nbsp;</B></TD>
    <TD><%FormTxtInput 8,20,Get("main_phone"),20%></TD>    </TR>
    <TR>
    <TD></TD>
    <TD ALIGN=right><B>Fax:&nbsp;&nbsp;</B></TD>
    <TD COLSPAN=3><%FormTxtInput 9,20,Get("main_fax"),20%></TD>
    </TABLE>
    </CENTER></P>
    
    <H3>SHIPPING ADDRESS</H3>
    
    <TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0">
    <TR>
    <TD></TD>
    <TD ALIGN=right><B>Ship To:&nbsp;&nbsp;</B></TD>
    <TD><%FormTxtInput 91,50,Get("location_name"),50%></TD></TR>
    <TR>
    <TD WIDTH=10%>&nbsp;</TD>
    <TD ALIGN=right><B>Main Contact:&nbsp;&nbsp;</B></TD>
    <TD><%FormTxtInput 90,50,trim(Get("first_name") + " " + get("last_name")),50%></TD></TR>
    <TR>
    <TD></TD>
    <TD ALIGN=right VALIGN=top><B>Address:&nbsp;&nbsp;</B></TD>
    <TD>
<%
addr = Get("addr1")
if len(trim(addr)) > 0 then
  address = addr + newline
end if
addr = Get("addr2")
if len(trim(addr)) > 0 then
  address = address + addr + newline
end if
addr = Get("city") + ", " + Get("state_region_abbrv") + " " + Get("postal_code")
if len(trim(addr)) > 1 then
  address = address + addr + newline
end if
%>
<%FormTxtAreaInput 57,5,40,address%></TD></TR>
    <TR>
    <TD></TD>
    <TD ALIGN=right><B>Telephone:&nbsp;&nbsp;</B></TD>
    <TD><%FormTxtInput 92,20,Get("main_phone"),20%></TD></TR>
    <TR>
    <TD></TD>
    <TD ALIGN=right><B>Fax:&nbsp;&nbsp;</B></TD>
    <TD COLSPAN=3><%FormTxtInput 93,20,Get("main_fax"),20%></TD>
    </TABLE>
    </CENTER></P>
    
    <H3>DEMO UNIT ORDER</H3>
    
    <DL>
    <DD>Please indicate the Demo Units you wish to request below.  If you do not know
    the AST Part Number of the product you are interested in, consult the 
    <A HREF="../../products/main.html" TARGET="body">Products pages</A>.
    </DL>
    
    <BR>
    
    <CENTER><TABLE BORDER="0" CELLSPACING="2" CELLPADDING="2">
    <TR>
    <TH>Product Description</TH>
    <TH>Part Number<BR>(e.g. 501171-301)</TH>
    <TH>Unit Price ($)</TH></TR>
<% 
  if len(Request("pn")) > 0 then 
    set blender = NewBlender()
    set rs = blender.Execute("SELECT * FROM data WHERE pn=" + sql(Request("pn")))
    Product = Request("pn")
    if not rs.EOF then
      Desc    = rs("data")
      
      if instr(desc,"Bravo") then
        Price = RealPartPrice(Product, "C", 0.85)
      elseif instr(desc,"Ascen") then
        Price = RealPartPrice(Product, "C", 0.90)
      elseif instr(desc,"Manha") or instr(desc,"Premium") then
        Price = RealPartPrice(Product, "C", 0.70)
      elseif instr(desc,"Vision") then
        Price = RealPartPrice(Product, "C", 0.85)
      end if
    end if
  end if
%>
    <TR>
    <TD ALIGN="CENTER"><%FormTxtInput 70,30,Desc,""%></TD>
    <TD ALIGN="CENTER"><%FormTxtInput 75,15,Product,""%></TD>
    <TD ALIGN="CENTER"><%FormTxtInput 80,10,Price,""%></TD>
    </TR>
    <TR>
    <TD ALIGN="CENTER"><%FormTxtInput 71,30,"",""%></TD>
    <TD ALIGN="CENTER"><%FormTxtInput 76,15,"",""%></TD>
    <TD ALIGN="CENTER"><%FormTxtInput 81,10,"",""%></TD>
    </TR>
    <TR>
    <TD ALIGN="CENTER"><%FormTxtInput 72,30,"",""%></TD>
    <TD ALIGN="CENTER"><%FormTxtInput 77,15,"",""%></TD>
    <TD ALIGN="CENTER"><%FormTxtInput 82,10,"",""%></TD>
    </TR>
    <TR>
    <TD ALIGN="CENTER"><%FormTxtInput 73,30,"",""%></TD>
    <TD ALIGN="CENTER"><%FormTxtInput 78,15,"",""%></TD>
    <TD ALIGN="CENTER"><%FormTxtInput 83,10,"",""%></TD>
    </TR>
    <TR>
    <TD ALIGN="CENTER"><%FormTxtInput 74,30,"",""%></TD>
    <TD ALIGN="CENTER"><%FormTxtInput 79,15,"",""%></TD>
    <TD ALIGN="CENTER"><%FormTxtInput 84,10,"",""%></TD>
    </TR>
    </TABLE>
    </CENTER></P>
    
    <H3>METHOD OF PAYMENT</H3>
    
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
    
    <H3>AUTHORIZING RESELLER</H3>
    
    <DL>
      <DD><FONT FACE="Arial" SIZE=2><I>I certify that the product(s) purchased by my company through the AST Demo Unit 
      Program will be kept within my sales location for four months.  I understand that 
      the AST product(s) may not be resold, rented, leased or transferred in any manner 
      during the four month period.  I understand that AST products purchased through the 
      AST Demo Unit Program are not eligible for Price Protection or Stock Rotation.  I 
      understand failure to comply with the guidelines of this program may result in 
      termination of my participation in the AST Demo Unit Program for a period of 12 
      months.</I></FONT><P>
      
      <DD><TABLE>
        <TR>
          <TD ALIGN=right>Authorizing Name&nbsp;&nbsp;</TD>
          <TD><%FormTxtInput 88,30,"",""%></TD>
        </TR>
        <TR>
          <TD ALIGN=right>Reseller Registration Number&nbsp;&nbsp;</TD>
          <TD><%FormTxtInput 89,15,"",10%></TD>
        </TR>
        <TR>
          <TD ALIGN=right>Date&nbsp;&nbsp;</TD>
          <TD><%FormTxtInput 42,15,"",10%></TD>
        </TR>
      </TABLE>
      
    </DL>
      
    <BR><BR>
    
    <P><CENTER><%FormButton 13%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%FormButton 15%></CENTER></P>
    
    <P>&nbsp;</P>
    
    <P><CENTER><IMG SRC="images/border.gif" WIDTH=428 HEIGHT=5></CENTER></P>
    
    <P><I><SMALL>AST is a registered trademark and AST Computer, the AST logo
    and Ascentia, are trademarks of AST Research, Inc. Microsoft, Windows and
    Windows NT are registered trademarks of Microsoft Corporation. AST Research,
    Inc. shall not be liable for technical or editorial errors or omissions
    contained herein; nor for incidental or consequential damages resulting
    from the furnishing, performance or use of this material. <BR>
    Copyright&COPY; 1997, AST Research, Inc. All rights reserved.</SMALL></I>
    
    <P ALIGN=RIGHT><IMG SRC="images/logo-white.gif" WIDTH="150" HEIGHT="79"
    ALIGN="BOTTOM" NATURALSIZEFLAG="3" BORDER="0"></TD></TR>

    </TD></TR>
    </TABLE></CENTER>
<%
FormHdnInput 11, formID
FormHdnInput 12, formSubmitter
%>
  </FORM>
  </BODY>
</HTML>
