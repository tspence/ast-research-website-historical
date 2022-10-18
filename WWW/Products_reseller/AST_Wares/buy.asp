<!--#include file="astwares.inc"-->

<%

on error resume next

head =        "This is an automatically generated ASTWares order form, sent by the " + newline
head = head + "Ovation! Interchange web site.  Please forward this message to the " + newline 
head = head + "person responsible for fulfilling orders from the ASTWares catalog." + newline + newline

po = po + "----------------------------------------" + newline
po = po + "  Billing Information" + newline
po = po + "----------------------------------------" + newline

po = po + "BILL TO: " + Request("billto") + newline
po = po + "CONTACT: " + Request("billcontact") + newline
po = po + "  PHONE: " + Request("billphone") + newline
po = po + "    FAX: " + Request("billfax") + newline
po = po + "  EMAIL: " + Request("billemail") + newline
po = po + "ADDRESS:" + newline
po = po + Request("billtoaddress") + newline + newline
po = po + "COMMENTS:" + newline
po = po + Request("comments") + newline + newline

if Request("Flex") = "on" then
  po = po + "This is an AST Flex Funds purchase for customer #" + Request("custno") + ", authorized by '" + Request("authname") + "'." + newline + newline
end if
if Request("VISA") = "on" then
  po = po + "This purchase is to be made on VISA #" + Request("account") + ", under cardholder '" + Request("cardname") + "', with expiration date " + Request("expir") + "." + newline + newline
end if
if Request("MC") = "on" then
  po = po + "This purchase is to be made on Mastercard #" + Request("account") + ", under cardholder '" + Request("cardname") + "', with expiration date " + Request("expir") + "." + newline + newline
end if

po = po + "----------------------------------------" + newline
po = po + "  Shipping Information" + newline
po = po + "----------------------------------------" + newline

po = po + "SHIP TO: " + Request("shipto") + newline
po = po + "CONTACT: " + Request("shipcontact") + newline
po = po + "  PHONE: " + Request("shipphone") + newline
po = po + "ADDRESS:" + newline
po = po + Request("shiptoaddress") + newline + newline

po = po + "----------------------------------------" + newline
po = po + "  Order Form" + newline
po = po + "----------------------------------------" + newline

for i = 0 to UBound(awProductList)

  amtstr = Request("qty" + awProductList(i)(1))
  if len(amtstr) > 0 then
    amt  = cint(amtstr)
    cost = ccur(awPrice(i))
    if amt > 0 then
      po = po + Pad("Item #" + awProductList(i)(1),20) + "Qty. " + amtstr + newline
    end if
  end if
next

tax = ccur(0)
tax = ccur(request("tax"))
subtotal = ccur(0)
subtotal = ccur(request("subtotal"))
freight = ccur(0)
freight = ccur(request("freight"))

total = subtotal + tax + freight
po = po + newline

po = po + "     SUBTOTAL: " + FormatCurrency(subtotal) + newline
po = po + "      CA. TAX: " + FormatCurrency(tax) + newline
po = po + "      FREIGHT: " + FormatCurrency(freight) + newline + newline
po = po + "        TOTAL: " + FormatCurrency(total)

call SendMail("jp.internet@ast.com", "ovation@ast.com", "ASTWares Order Form", head + po, 1, "")
call SendMail("ovation@ast.com", "ovation@ast.com", "(SAVE) ASTWares Order Form", head + po, 1, "")

session("order") = ""

%>

<HTML>
  <HEAD>
    <TITLE>Thank you for your purchase!</TITLE>
  </HEAD>
  <BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">
    <BR><BR>
    <CENTER><B>Thank you for your purchase!</B></CENTER>
    <BR><BR>
    Thank you for purchasing ASTWares products.  Your order has been submitted for processing.<P>
    
    <BR><BR>Your order has been submitted as:<P>
    <CENTER><HR NOSHADE WIDTH=80%></CENTER>
    <PRE><%=po%></PRE>
    <CENTER><HR NOSHADE WIDTH=80%></CENTER>
      
    <B>Additional Ordering Information:</B><P>
    
    In addition to this Internet site, you can place orders through:<P>
    
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