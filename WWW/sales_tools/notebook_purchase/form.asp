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
Dim conn

FormID = 1 
FormSubmitter = session("contact_id") 




'''****************************************
'''REQUIRED/VALIDATED FIELDS
scriptstart
required 1,"Bill To"
required 2,"Main Contact"
required 56,"Address"
required 8,"Phone"
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
    
    <FORM METHOD=post ACTION="submit.asp" NAME="notebook" ONSUBMIT="return validate(notebook)">
    <CENTER><TABLE WIDTH="90%" BORDER="0" CELLSPACING="0" CELLPADDING="0"><TR><TD>
    
    <B><I><BIG><BIG>Reseller/Diamond ASC</BIG><BR>
    Notebook Purchase Order Form</BIG></I></B>
    
    <BR><BR><BR>
    
    <P><CENTER><IMG SRC="images/border.gif" WIDTH=428 HEIGHT=5></CENTER></P>
    
    <P>
    
    <H3>ADDRESS</H3>
    
    <TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0">
    <TR>
    <TD></TD>
    <TD ALIGN=right VALIGN=top></TD>
    <TD><%FormRdoInput 69,"No","Reseller","Yes"%>AST Registered Reseller<BR>
        <%FormRdoInput 69,"No","Diamond ASC","No"%>Diamond Authorized Service Center
    </TD></TR>
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
end if%>

<%FormTxtAreaInput 56,5,40,address%></TD></TR>
    <TR>
    <TD></TD>
    <TD ALIGN=right><B>Telephone:&nbsp;&nbsp;</B></TD>
    <TD><%FormTxtInput 8,20,Get("main_phone"),20%><TD>    </TR>
    <TR>
    <TD></TD>
    <TD ALIGN=right><B>Fax:&nbsp;&nbsp;</B></TD>
    <TD COLSPAN=3><%FormTxtInput 9,20,Get("main_fax"),20%></TD>
    </TABLE>
    </CENTER></P>
    
    <H3>NOTEBOOK PURCHASE REQUEST</H3>
    
    <DL>
    <DD>Please indicate the Notebook products you wish to request below.  If you do not know
    the AST Part Number of the product you are interested in, consult the 
    <A HREF="/products/frame.html TARGET="mod">Products section</A>.
    </DL>
    
    <BR>
    
    <CENTER><TABLE BORDER="0" CELLSPACING="2" CELLPADDING="2">
    <TR>
    <TH>Product Description</TH>
    <TH>Part Number<BR>(e.g. 501171-301)</TH>
    <TH>Unit Price ($)</TH></TR>
    <TR>
<% 
  if len(Request("pn")) > 0 then 
    set blender = NewBlender()
    set rs = blender.Execute("SELECT * FROM data WHERE pn=" + sql(Request("pn")))
    Product = Request("pn")
    Desc    = rs("data")
    
    Price = RealPartPrice(Product, "1", 0.93)
  end if
%>
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
    </TABLE>
    </CENTER></P>
    
    <H3>METHOD OF PAYMENT</H3>
    
    <DL>
      <DD><%FormRdoInput 85,"No","FlexFunds","Yes"%> Deduct from AST FlexFunds account<BR>
        <DL><DD><FONT SIZE=2><I>(Your available AST FlexFunds will be verified and the total automatically deducted.)</I></FONT></DL><BR>

      <DD><%FormRdoInput 85,"No","Check or Money Order","No"%>Cashier's check or money order.<BR>
        <DL><DD><FONT SIZE=2><I>Complete check and mail to:</I><BR>
          <DL><DD>AST Research, Inc<BR>
          <DD>Customer Sales Administration<BR>
          <DD>P.O. Box 57005 (M/S 3-54)<BR>
          <DD>Irvine, CA  92619-7005</DL></FONT></DL><BR>

      <DD><%FormRdoInput 85,"No","American Express","No"%>American Express
      <DD><%FormRdoInput 85,"No","Mastercard","No"%>MasterCard
      <DD><%FormRdoInput 85,"No","Visa","No"%>VISA
      
      <DL>
        <DD> Card Number <%FormTxtInput 86,20,"",20%>&nbsp;&nbsp;&nbsp; Exp. Date <%FormTxtInput 87,7,"",7%>
      </DL>
    </DL>
    <BR>
    
    <H3>AUTHORIZING RESELLER</H3>
    
    <DL>
      <DD><FONT FACE="Arial" SIZE=2><I>I verify that I am currently a full-time <B>Reseller Rep</B> or <B>Diamond ASC Technician</B>
      properly trained and certified on all AST products.  I understand that I am responsible for all freight and 
      insurance charges and that purchases are not subject to tax exemption.  I also understand that notebooks 
      purchased through this program are not eligible for Price Protection or Stock Rotation.  I must retain ownership 
      of this product for a period of six (6) months.  During this period, this product may not be resold, donated, 
      rented, leased or transferred in any manner.</I></FONT><P>
      
      <DD><TABLE>
        <TR>
          <TD ALIGN=right>Authorizing Name&nbsp;&nbsp;</TD>
          <TD><%FormTxtInput 88,30,"",""%></TD>
        </TR>
        <TR>
          <TD ALIGN=right>Reseller Registration Number&nbsp;&nbsp;<BR>
          <I>or</I> Diamond ASC Number</TD>
          <TD><%FormTxtInput 89,15,"",15%></TD>
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
