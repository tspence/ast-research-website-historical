<!--#include file="astwares.inc"-->

<%

if len(trim(Request("product"))) > 0 then
  
  '************** Remove this product if it's already in the shopping cart
  p = instr(session("order"),Request("product") + ":")
  if p > 0 then
    session("order") = left(session("order"),p - 1) + Mid(session("order"),instr(p,session("order"),",") + 1)
  end if
  
  '************** Add the new order to the cart
  session("order") = session("order") + Request("product") + ":" + Request("quantity") + ","
end if

if Request("clear") = "1" then
  session("order") = ""
  Response.Redirect(Request("continue"))
end if

%>

<HTML>
  <HEAD>
    <TITLE>Your Shopping Cart</TITLE>
  </HEAD>

  <BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">
    <CENTER>
      <font size=+2><B>Your Shopping Cart</B></FONT>
    </CENTER>

    <BR>
    <FORM METHOD=post ACTION=order.asp>
    
    <CENTER>
    <TABLE WIDTH=95% CELLSPACING=3 CELLPADDING=3 BORDER=1>
      
      <TR>
        <TH WIDTH=10%>
          <B>Item No.</B>
        </TH>
        <TH WIDTH=55%>
          <B>Description</B>
        </TH>
        <TH WIDTH=10%>
          <B>Qty.</B>
        </TH>
        <TH WIDTH=15%>
          <B>Price Each</B>
        </TH>
      </TR>
      
<% 

for i = 0 to UBound(awProductList)

  p = instr(session("order"),awProductList(i)(1))
  if p > 0 then 
%>
      <TR>
        <TD>
          <a href="<%=awProductList(i)(0)%>#<%=awProductList(i)(1)%>"><%=awProductList(i)(1)%></A>
        </TD>
        <TD>
          <%=awProductList(i)(2)%>
        </TD>
        <TD>
          <% 
            p = p + len(awProductList(i)(1)) + 1
            qty = Mid(session("order"),p,instr(p,session("order"),",") - p)
            Response.Write(qty)
            Response.Write("<INPUT TYPE=hidden NAME=""qty" + awProductList(i)(1) + """ VALUE=""" + qty + """>")
          %>
        </TD>
        <TD>
          <%=awProductList(i)(3)%>
        </TD>
      </TR>
<% 
  end if
next

%>
      
    </TABLE>
    </CENTER>
    
    <BR><BR>

    <DIV ALIGN=right>
      <INPUT TYPE=submit VALUE="Purchase These Items">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </DIV>
    
    </FORM>
    
    <BR><BR>
    
    <DL><DL><DL><UL>
      <LI><A HREF="<%=Request("continue")%>">Continue shopping</A>
      <LI><A HREF="shop.asp?clear=1&continue=<%=Request("continue")%>">Empty out your shopping cart</A>
    </UL></DL></DL></DL>

    <BR><BR>      
      
    <B>Important Ordering Information:</B><P>
    
    ASTWares products can also be purchased through:<P>
    
    <UL>
      <LI>Order by phone: 1-800-GET-AST1 (1-800-438-2781).  Please have your credit card ready or
      your AST account number.  Please have this form completed for easy ordering.<P>
      
      <LI>Order by fax: Print out your order form and fax it to 1-310-944-1045.<P>
      
      <LI>Order by mail:  Print out your order form and mail it to:<P>
      AST Fulfillment Center<BR>
      P.O. Box 3028<BR>
      Santa Fe Springs, CA  90670<P>
      
      <LI>Delivery is available outside the U.S.  Please contact us by phone to arrange shipping,
      at USA 1-310-944-5568, or fax us at USA 1-310-944-1045.<P>
      
      <LI>All orders will be shipped UPS Ground unless otherwise indicated.  Appropriate freight
      and handling charges will be applied.<P>
    </UL>

  </BODY>
</HTML>
