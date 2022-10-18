<!--#include file="astwares.inc"-->
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
  <HEAD>
    <TITLE>AST Wares Catalog Order Form</TITLE>
  </HEAD>

  <BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">
    <CENTER>
      <font size=+2><B>AST Wares Catalog Order Form</B></FONT>
    </CENTER>
    
    <BR>
    <FORM METHOD=post ACTION=buy.asp>
    
    <CENTER>
    <TABLE WIDTH=95% CELLSPACING=3 CELLPADDING=3>
      
      <TR>
        <TH WIDTH=10%>
          <B>Item No.</B>
        </TH>
        <TH WIDTH=50%>
          <B>Description</B>
        </TH>
        <TH WIDTH=10%>
          <B>Qty.</B>
        </TH>
        <TH WIDTH=10%>
          <B>Price Each</B>
        </TH>
        <TH WIDTH=10%>
          <B>Total Price</B>
        </TH>
      </TR>
      
<% 

color = "#D8F0D8"

for i = 0 to UBound(awProductList)

  amtstr = nstr(Request("qty" + awProductList(i)(1)))
  if len(amtstr) > 0 then
    amt  = cint(amtstr)
    cost = ccur(awProductList(i)(3))
    if amt > 0 then 
%>
      <TR BGCOLOR=<%=color%>>
        <TD>
          &nbsp;&nbsp;<a href="<%=awProductList(i)(0)%>#<%=awProductList(i)(1)%>"><%=awProductList(i)(1)%></A>
        </TD>
        <TD>
          <%=awProductList(i)(2)%>
        </TD>
        <TD>
          <%=cstr(amt)%>
        </TD>
        <TD>
          <%=awProductList(i)(3)%>
        </TD>
        <TD>
          <%=FormatCurrency(cost * amt)%>
        </TD>
      </TR>
<% 
      total = total + (cost * amt)
      
      if color = "#D8F0D8" then
        color = "#F8F8F0"
      else
        color = "#D8F0D8"
      end if
      
    end if
  end if
next

if total <= 25.00 then
  freight = 6.00
elseif total <= 50.00 then
  freight = 7.00
elseif total <= 100.00 then
  freight = 8.50
elseif total <= 200.00 then
  freight = 12.00
elseif total <= 300.00 then
  freight = 16.00
else
  temp = total
  freight = 16.00
  do while temp > 300.00
    freight = freight + 4.85
    temp = temp - 100.00
  loop
end if

%>
      
      <TR>
        <TD rowspan=4></TD>
        <TD align=right colspan=3>Subtotal<BR></TD>
        <TD><%=FormatCurrency(total)%><INPUT TYPE=hidden NAME=subtotal VALUE=<%=total%>></TD>
      </TR>
      <TR>
        <TD align=right colspan=3>California residents please <BR>
        add your appropriate sales tax</TD>
        <TD><INPUT TYPE=text name=tax SIZE=7 MAXLENGTH=7></TD>
      </TR>      
      <TR>
        <TD align=right colspan=3>Freight<BR></TD>
        <TD>
          <%=FormatCurrency(freight)%><INPUT TYPE=hidden NAME=freight VALUE=<%=freight%>>
        </TD>
      </TR>
      <TR>
        <TD align=right colspan=3>TOTAL AMOUNT</TD>
        <TD>
          <%=FormatCurrency(freight + total)%>
        </TD>
      </TR>
    </TABLE>
    </CENTER>
    
    <% 
      for each item in Request.Form
        Response.Write("<INPUT TYPE=hidden NAME=""" + item + """ VALUE=""" + Request.Form(item) + """>")
      next
    %>
    
    <BR><BR>

    <CENTER><TABLE BORDER=0 CELLSPACING=3 CELLPADDING=3 WIDTH=90%>
      <TR>
        <TD COLSPAN=2>
          <B>Method of Payment</B><BR>
          <P>
          
          <INPUT TYPE=radio NAME="VISA"> VISA *<BR>
          <INPUT TYPE=radio NAME="MC"> Mastercard *
        </TD>
      </TR>
      <TR>
        <TD ALIGN=right>Name as it appears on card&nbsp;&nbsp;</TD><TD><INPUT TYPE=text name=cardname SIZE=40 MAXLENGTH=80></TD>
      </TR>
      <TR>
        <TD ALIGN=right>Account Number&nbsp;&nbsp;</TD><TD><INPUT TYPE=text name=account SIZE=40 MAXLENGTH=50></TD>
      </TR>
      <TR>
        <TD ALIGN=right>Exp. Date&nbsp;&nbsp;</TD><TD><INPUT TYPE=text name=expir SIZE=7 MAXLENGTH=10></TD>
      </TR>
      <TR>
        <TD COLSPAN=2>
          <INPUT TYPE=radio NAME="FLEX"> AST Flex Funds Account **
        </TD>
      </TR>
      <TR>
        <TD ALIGN=right>Customer Number&nbsp;&nbsp;</TD><TD><INPUT TYPE=text name=custno SIZE=40 MAXLENGTH=50 VALUE="<%=Get("cust_no")%>"></TD>
      </TR>
      <TR>
        <TD ALIGN=right>Authorizing Name&nbsp;&nbsp;</TD><TD><INPUT TYPE=text name=authname SIZE=40 MAXLENGTH=50></TD>
      </TR>
      <TR>
        <TD COLSPAN=2>
          <FONT SIZE=2>
          <BR>
          * Personal orders require pre-payment (check or charge).  Shipping and handling charges apply.  Personal orders cannot ship to AST location, must ship to home address.<BR><BR>
          ** Your available AST Flex Funds account will be verified and total merchandise cost will be automatically deducted.
          </FONT>
        </TD>
      </TR>
    </TABLE>
       
    <BR><BR>
    
    <TABLE BORDER=0 WIDTH=90%>
      <TR>
        <TD ALIGN=right><B>Bill To</B>&nbsp;&nbsp;</TD>
        <TD><INPUT TYPE=text name=billto SIZE=30 MAXLENGTH=50 VALUE="<%=Get("location_name")%>"></TD>
      </TR>
      <TR>
        <TD ALIGN=right>Contact Name&nbsp;&nbsp;</TD>
        <TD><INPUT TYPE=text name=billcontact SIZE=30 MAXLENGTH=50 VALUE="<%=trim(Get("first_name") + " " + Get("last_name"))%>"></TD>
      </TR>
      <TR>
        <TD ALIGN=right>Email Address&nbsp;&nbsp;</TD>
        <TD><INPUT TYPE=text name=billemail SIZE=30 MAXLENGTH=50 VALUE="<%=Get("email_addr")%>"></TD>
      </TR>
      <TR>
        <TD ALIGN=right>Daytime Phone&nbsp;&nbsp;</TD>
        <TD><INPUT TYPE=text name=billphone SIZE=30 MAXLENGTH=50 VALUE="<%=Get("main_phone")%>"></TD>
      </TR>
      <TR>
        <TD ALIGN=right>Fax&nbsp;&nbsp;</TD>
        <TD><INPUT TYPE=text name=billfax SIZE=30 MAXLENGTH=50 VALUE="<%=Get("main_fax")%>"></TD>
      </TR>
      <TR>
        <TD ALIGN=right VALIGN=top>Address *&nbsp;&nbsp;</TD>
        <TD><TEXTAREA NAME=billtoaddress ROWS=5 COLS=30><%
          line = Get("addr1")
          if len(trim(line)) > 0 then Response.Write(line + newline) end if
          line = Get("addr2")
          if len(trim(line)) > 0 then Response.Write(line + newline) end if
          line = Get("city") + ", " + Get("state_region_abbrv") + " " + Get("postal_code")
          if len(trim(Get("city"))) > 0 then Response.Write(line + newline) end if
        %></TEXTAREA></TD>
      </TR>
      
      <TR>
        <TD COLSPAN=2>&nbsp;</TD>
      </TR>
      
      <TR>
        <TD ALIGN=right><B>Ship To</B>&nbsp;&nbsp;</TD>
        <TD><INPUT TYPE=text name=shipto SIZE=30 MAXLENGTH=50 VALUE="<%=Get("location_name")%>"></TD>
      </TR>
      <TR>
        <TD ALIGN=right>Contact Name&nbsp;&nbsp;</TD>
        <TD><INPUT TYPE=text name=shipcontact SIZE=30 MAXLENGTH=50 VALUE="<%=trim(Get("first_name") + " " + Get("last_name"))%>"></TD>
      </TR>
      <TR>
        <TD ALIGN=right>Daytime Phone&nbsp;&nbsp;</TD>
        <TD><INPUT TYPE=text name=shipphone SIZE=30 MAXLENGTH=50 VALUE="<%=Get("main_phone")%>"></TD>
      </TR>
      <TR>
        <TD ALIGN=right VALIGN=top>Address *&nbsp;&nbsp;</TD>
        <TD><TEXTAREA NAME=shiptoaddress ROWS=5 COLS=30><%
          line = Get("addr1")
          if len(trim(line)) > 0 then Response.Write(line + newline) end if
          line = Get("addr2")
          if len(trim(line)) > 0 then Response.Write(line + newline) end if
          line = Get("city") + ", " + Get("state_region_abbrv") + " " + Get("postal_code")
          if len(trim(Get("city"))) > 0 then Response.Write(line + newline) end if
        %></TEXTAREA></TD>
      </TR>
      <TR>
        <TD COLSPAN=2><FONT SIZE=2>
          <BR>
          * We do not deliver to P.O. Boxes. Please provide your complete street address.
        </FONT></TD>
      </TR>
      <TR>
        <TD COLSPAN=2>&nbsp;</TD>
      </TR>
      <TR>
        <TD ALIGN=right VALIGN=top><B>Additional Comments</B>&nbsp;&nbsp;</TD>
        <TD><TEXTAREA NAME=comments ROWS=5 COLS=30></TEXTAREA></TD>
      </TR>
    </TABLE>
    </CENTER>
    
    <BR><BR>      
      
    <DIV ALIGN=right>
      <INPUT TYPE=submit VALUE="Purchase These Items">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <INPUT TYPE=reset VALUE="Reset">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </DIV>
    
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

    <BR><BR>      
      
    </FORM>
    
  </BODY>
</HTML>
