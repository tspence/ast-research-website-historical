<!--#include file="basic.inc"--> 

<%

dim PriceLevelName
dim PriceLevelCode
dim PriceConn


'******************************************************************************
'*
'* This function kicks the user out if they don't have Ovation! access
'*
'******************************************************************************
function OvationOnly
  if session("source") <> "ovation" and session("source") <> "ast" then
    Response.Redirect("/404.html")
  end if
end function


'******************************************************************************
'*
'* These are the selection box macros
'*
'******************************************************************************
function CountrySelect(byval selected)
  call SelectBox("country","SELECT name, id=country_id FROM country ORDER BY name",selected)
end function

function StateRegionSelect(byval selected)
  call SelectBox("state_region_id","SELECT name=state_region_name, id=state_region_id FROM state_region ORDER BY state_region_name",selected)
end function

function ContactTypeSelect(byval selected)
  call SelectBox("ctype","SELECT name, id=contact_type_id FROM contact_type",selected)
end function

function LocationTypeSelect(byval selected)
  call SelectBox("ltype","SELECT name, id=location_type_id FROM location_type",selected)
end function

function StatusSelect(byval selected)
  call SelectBox("ovation","SELECT name, id=ovation_type_id FROM ovation_type",selected)
end function

function ChannelSelect(byval selected)
  call SelectBox("channel","SELECT name, id=channel_type_id FROM channel_type",selected)
end function

function PricingSelect(byval selected)
  call SelectBox("price_level","SELECT name=short + ' - ' + name, id=pricing_type_id FROM pricing_type",selected)
end function


'******************************************************************************
'*
'* Draw an entire page of the questionnaire
'*
'******************************************************************************
function BuildPage(byval Page)
  dim conn, conn2, rsPage, rsQuestion
  dim col, counter, style, htmltemp, question, last

  if len(coid) = 0 then coid = session("company_id")
  if len(locid) = 0 then locid = session("location_id")

  set conn = NewConnection()
  set conn2 = NewConnection()

  set rsPage = conn.Execute("sp_Get_Page_Objects '" + page + "'")
  question = 0
  last = 0
  
  do while not rsPage.EOF
    col = rsPage("columns")
    style = rsPage("type")
    question = question + 1
    descr = rsPage("category_descr")

    if len(Trim(rsPage("text_before"))) > 0 then 
      if last = 1 then
        Print("</TABLE><BR><BR>")
      end if
      
      last = 0
      Print(rsPage("text_before") + "<BR>")
    end if
    
    '************ Checkbox
    if style = 1 then
      if last = 1 then
        Print("</TABLE><BR><BR>")
      end if
      
      last = 0
      
      Print("<B>" + cstr(question) + ")</B> " + descr + "<P>")
      
  		Response.Write("<CENTER><TABLE BORDER=2 CELLSPACING=3 CELLPADDING=3>")
  		counter = 1
  		
    '************ Drop-Down
    else
      if last = 1 then
        Print("<TR><TD><B>" + cstr(question) + ")</B> " + descr + "&nbsp;&nbsp;</TD>")
      else
        Print("<TABLE><TR><TD><B>" + cstr(question) + ")</B> " + descr + "&nbsp;&nbsp;</TD>")
      end if
      
      last = 1
      
  		Print("<TD><SELECT NAME=""" + page + "-" + CStr(rsPage("category_id")) + """>")
    end if
  
    set rsQuestion = conn2.Execute("sp_Category_Status " + locid + "," + cstr(rsPage("category_id")))
    do while not rsQuestion.EOF
  
      '************ Checkbox
      if style = 1 then
        if (counter > col) then
          counter = 1
          Response.Write("<TR>")
        end if
        
        Response.Write("<TD VALIGN=TOP>")
        
        if rsQuestion("code_choice") = "N" then
          if rsQuestion("code_html") = "Y" then
            Response.Write(rsQuestion("code_descr"))
          else
            Response.Write(Server.HTMLEncode(rsQuestion("code_descr")))
          end if
        else
          if rsQuestion("code_html") = "Y" then
            htmltemp = rsQuestion("code_descr")
          else
            htmltemp = "<FONT SIZE=2>" + Server.HTMLEncode(rsQuestion("code_descr")) + "</FONT>"
          end if
          
          Response.Write("<INPUT TYPE=checkbox NAME=""" + page + "-" + CSTR(rsPage("category_id")) + "-" + CSTR(rsQuestion("code_value")) + """ VALUE=1")
          if Request("override") = "1" then
            if not IsEmpty(Request(page + "-" + CSTR(rsPage("category_id")) + "-" + CSTR(rsQuestion("code_value")))) then
              Response.Write(" CHECKED")
            end if
          else
            if rsQuestion("status") = rsQuestion("code_value") then
              Response.Write(" CHECKED")
            end if
          end if
          Response.Write("> " + htmltemp)
        end if
        
        Response.Write("</TD>")
        
        counter = counter + 1
        
        if (counter > col) then
          Response.Write("</TR>")
        end if
      
      '************ Drop-Down
      else
        Response.Write("<OPTION VALUE=""" + CStr(rsQuestion("code_value")) + """")
        if Request("override") = "1" then
          if Request(page + "-" + CSTR(rsPage("category_id"))) = cstr(rsQuestion("code_value")) then
            Response.Write(" SELECTED")
          end if
        else
          if rsQuestion("status") = rsQuestion("code_value") then
            Response.Write(" SELECTED")
          end if
        end if
        Response.Write("> " + Server.HTMLEncode(rsQuestion("code_descr")))
      end if
      
      rsQuestion.MoveNext
    loop
    
    rsQuestion.Close
    
    '************ Checkbox
    if style = 1 then
      Print("</TABLE></CENTER>")

      if not IsEmpty(rsPage("text_after")) then
        Print(rsPage("text_after"))
      end if
  
      Print("<BR><BR>")

    '************ Drop-Down
    else
      Print("</SELECT></TD></TR>")
    end if
    
    rsPage.MoveNext
  loop
  
  rsPage.Close
  
  conn.Close
  conn2.Close
  
  '************ Clean up for a row of drop-down list boxes
  if last = 1 then
    Print("</TABLE><BR><BR>")
  end if
  
end function


'******************************************************************************
'*
'* Draw an entire page of the questionnaire for verification
'*
'******************************************************************************
function VerifyPage(byval Page)
  dim conn, conn2, rsPage, rsQuestion
  dim col, style, counter

  set conn = NewConnection()
  set conn2 = NewConnection()
  
  set rsPage = conn.Execute("sp_Get_Page_Objects '" + page + "'")
  
  do while not rsPage.EOF
    Response.Write(rsPage("text_before") + "<P>")
    Response.Write("<DIV ALIGN=LEFT><TABLE><TR><TD WIDTH=280 VALIGN=TOP NOWRAP>" + rsPage("category_descr") + "</TD>")
    
    col = rsPage("columns")
    style = rsPage("type")
    
    if style = 1 then
      Response.Write("</TR></TABLE></DIV>")
      Response.Write("<CENTER><TABLE BORDER=0 CELLSPACING=4 CELLPADDING=4><UL>")
      counter = 1
    else
      Response.Write("<TD VALIGN=TOP><B>")
    end if
    
    set rsQuestion = conn2.Execute("sp_Get_Category '" + page + "'," + CSTR(rsPage("category_id")))
    do while not rsQuestion.EOF
    
      '*************** Check Box
      if style = 1 then
        if counter > col then
          counter = 1
          Response.Write("<TR>")
        end if
        
        if not IsEmpty(Request(page + "-" + CSTR(rsPage("category_id")) + "-" + CSTR(rsQuestion("code_value")))) then
          Response.Write("<TD VALIGN=TOP>")
          if rsQuestion("code_html") = "Y" then
            Response.Write("<LI>" + rsQuestion("code_descr"))
          else
            Response.Write("<LI>" + Server.HTMLEncode(rsQuestion("code_descr")))
          end if
          Response.Write("</TD>")
          
          counter = counter + 1
        end if
        
        if counter > col then
          Response.Write("</TR>")
        end if
        
      '*************** Drop Down
      else
        if Request(page + "-" + CSTR(rsPage("category_id"))) = cstr(rsQuestion("code_value")) then
          if rsQuestion("code_html") = "Y" then
            Response.Write(rsQuestion("code_descr"))
          else
            Response.Write(Server.HTMLEncode(rsQuestion("code_descr")))
          end if
        end if
        
      end if
  
      rsQuestion.MoveNext
    loop
    rsQuestion.Close
    
    if style = 1 then
      Response.Write("</UL></TABLE></CENTER>")
    else
      Response.Write("</B></TD></TR></TABLE></DIV><BR><P>")
    end if
    
    Response.Write("<P>" + rsPage("text_after") + "<P>")
    
    rsPage.MoveNext
  loop
  
  rsPage.Close
  
  conn.Close
  conn2.Close
  
end function


'******************************************************************************
'*
'* Pass along all hidden fields
'*
'******************************************************************************
function PassHidden()
  for each item in Request.Form
    Response.Write("<INPUT TYPE=hidden NAME=""" + Server.HTMLEncode(item) + """ VALUE=""" + Server.HTMLEncode(Request(item)) + """>")
  next
end function


'******************************************************************************
'*
'* Send a completed page into the SQL database
'*
'******************************************************************************
function SendPage(byval page)
  dim conn, conn2, conn3, rs, rs2
  dim name, p, line, update_profile

  if len(coid) = 0 then coid = session("company_id")
  if len(locid) = 0 then locid = session("location_id")

  set conn = NewConnection()
  set conn2 = NewConnection()
  set conn3 = NewConnection()
  
  conn.Execute("sp_Del_Profile_Data " + locid + ",'" + page + "'")
  
  set rs = conn.Execute("sp_Get_Page_Objects '" + page + "'")
  do while not rs.EOF
  
    name = page + "-" + CSTR(rs("category_id"))
  
    set rs2 = conn2.Execute("sp_Get_Category '" + page + "'," + CSTR(rs("category_id")))
    do while not rs2.EOF
      if not IsEmpty(Request(name + "-" + CSTR(rs2("code_value")))) then
        line = "INSERT INTO profile_data (location_id, category_id, code_value) VALUES ("
        line = line + locid + "," + CSTR(rs("category_id")) + "," + CSTR(rs2("code_value")) + ")"
        conn3.Execute(line)
      end if
      
      rs2.MoveNext
    loop
  
    if not IsEmpty(Request(name)) then
      value = Request(name)
      
      p = InStr(value,",")
      if p <> 0 then
        value = Left(value,p - 1)
      end if
      
      line = "INSERT INTO profile_data (location_id, category_id, code_value) VALUES ("
      line = line + locid + "," + CSTR(rs("category_id")) + "," + CSTR(value) + ")"
      conn3.Execute(line)
    end if  
    
    rs.MoveNext  
  loop
  rs.Close
  
  '************ Remove this item from our update_profile
  if locid <> "NULL" then
    set rs = conn.Execute("SELECT update_profile FROM location WHERE location_id=" + locid)
    update_profile = rs("update_profile")
    rs.Close
    
    p = instr(update_profile,page)
    if (p > 0) then
      update_profile = trim(Replace(update_profile,page,""))
      set rs = conn.Execute("UPDATE location SET update_profile=" + sql(update_profile) + " WHERE location_id=" + locid)
    end if
  end if
  
  conn.Close
  conn2.Close
  conn3.Close
  
end function


'******************************************************************************
'*
'* Add or update a contact in the SQL database
'*
'******************************************************************************
function SendContact()
  dim conn, line, item, broadfax, broademail, rs

  set conn = NewConnection
  
  if Request("broadfax_flag") = "" then
    broadfax = "N"
  else
    broadfax = "Y"
  end if
  
  if Request("broademail_flag") = "" then
    broademail = "N"
  else
    broademail = "Y"
  end if
  
  if len(Request("username")) > 0 then
    username = sql(Request("username"))
    password = sql(Request("password"))
  else
    username = "NULL"
    password = "NULL"
  end if

  '************** Add A New Contact
  if Request("action") = "new" then
    line = "sp_Populate_Contact " + locid + ","
    line = line + sql(Request("salutation")) + ","
    line = line + sql(Request("first_name")) + ","
    line = line + sql(Request("middle_initial")) + ","
    line = line + sql(Request("last_name")) + ","
    line = line + sql(Request("title")) + ","
    line = line + sql(Request("phone")) + ","
    line = line + sql(Request("fax")) + ","
    line = line + sql(Request("email_addr")) + ","
    line = line + sql(broadfax) + ","
    line = line + sql(broademail) + ","
    line = line + Request("ctype")
    
    set rs = conn.Execute(line)
    contid = cstr(rs("contact_id"))
    rs.Close
  
  '************** Update An Existing Contact
  else
    line = "sp_Update_Contact " + contid + ","
    line = line + sql(Request("salutation")) + ","
    line = line + sql(Request("first_name")) + ","
    line = line + sql(Request("middle_initial")) + ","
    line = line + sql(Request("last_name")) + ","
    line = line + sql(Request("title")) + ","
    line = line + sql(Request("phone")) + ","
    line = line + sql(Request("fax")) + ","
    line = line + sql(Request("email_addr")) + ","
    line = line + sql(broadfax) + ","
    line = line + sql(broademail) + ","
    line = line + Request("ctype") + ","
    line = line + username + ","
    line = line + password
    
    conn.Execute(line)
  end if
  
  for each item in Request("removelink")
    conn.Execute("sp_Remove_Link " + contid + "," + item)
  next
  
  for each item in Request("attach")
    if item <> "-1" then
      conn.Execute("sp_Add_To_CL_Link " + contid + "," + item)
    end if
  next
  
  conn.Close
  
end function



'**********************************************************************
'*
'* Return the price of a product by its part number and your price level
'*
'**********************************************************************
function GetPriceLevel()
  dim rs, conn
  
  if session("source") <> "ovation" then
    PriceLevelName = "Est. Street Price"
    PriceLevelCode = "G"
    
  else
    set conn = NewConnection()
    set rs = conn.Execute("SELECT name, short FROM location, pricing_type WHERE location.location_id=" + nstr(session("location_id")) + " AND pricing_type.pricing_type_id=location.price_level")
    PriceLevelName = rs("name")
    if not rs.EOF then
      PriceLevelCode = rs("short")
    end if
    conn.Close

  end if
  
'*********** Because we weren't able to call this 'D' in the vax
  if PriceLevelCode <> "1" and PriceLevelCode <> "C" then
    PriceLevelCode = "G"
  end if
  
  GetPriceLevel = PriceLevelCode
  
end function


'**********************************************************************
'*
'* Return a calculated price from a modifier etc
'*
'**********************************************************************
function RealPartPrice(byval PartNum, byval PriceCode, byval Modifier)
  if IsEmpty(PriceConn) then
    set PriceConn = NewPriceConn()
  end if
  
  dim rs
  dim thisdate
  
  thisdate = FormatDateTime(Now,vbShortDate)

  '************ Get the pricing for this product
  set rs = PriceConn.Execute("select * from part_price inner join part_price_type on part_price_type.part_price_type_id=part_price.part_price_type_id where part_num=" + sql(PartNum) + " and price_code=" + sql(PriceCode) + " AND eff_date <= " + sql(thisdate) + " AND exp_date >= " + sql(thisdate))
  if not rs.EOF then
    RealPartPrice = FormatCurrency(Round(cdbl(nstr(rs("price"))) * Modifier))
  end if
  rs.Close
end function


'**********************************************************************
'*
'* Return the price of a product by its part number and your price level
'*
'**********************************************************************
function PartPrice(byval strPartNum)

  '************ Locate this person's price level
  if IsEmpty(PriceLevelCode) then
    GetPriceLevel()
  end if

  '************ Get the pricing for this product
  PartPrice = RealPartPrice(strPartNum, PriceLevelCode, 1.00)

end function


'**********************************************************************
'*
'* Return the rebate of a product by its part number
'*
'**********************************************************************
function PartRebate(byval strPartNum)
  PartRebate = RealPartPrice(strPartNum, "1", 0.03)
end function


'**********************************************************************
'*
'* Figure out how much an employee can buy this product for
'*
'**********************************************************************
function EmployeePurchasePrice(byval strPartNum)
  if IsEmpty(PriceConn) then
    set PriceConn = NewPriceConn()
  end if
  
  dim sqlquery, rs
  dim thisdate
  
  thisdate = FormatDateTime(Now,vbShortDate)

  '************ Get the pricing for this product
  set rs = PriceConn.Execute("select * from part_cost where part_num=" + sql(strPartNum) + " AND eff_date <= " + sql(thisdate) + " AND exp_date >= " + sql(thisdate))
  if not rs.EOF then
    EmployeePurchasePrice = FormatCurrency(Round(cdbl(nstr(rs("std_cost"))) * 1.02))
  end if
  rs.Close
end function

'**********************************************************************
'*
'* Figure out what prices to display based on global and passed values
'*
'**********************************************************************

function showprice (byval pricestr, byval empbool)

if empbool = 0 then
	response.write("<B>" & PartPrice(pricestr) & "</B>")
elseif empbool = 1 then
	PriceLevelName = "Level 1"
	PriceLevelCode = "1"
	response.write(PriceLevelName & ": <B>" & PartPrice(pricestr) & "</B><BR>")
	PriceLevelName = "Level C"
	PriceLevelCode = "C"
	response.write(PriceLevelName & ": <B>" & PartPrice(pricestr) & "</B><BR>")
	PriceLevelName = "Est. Street"
	PriceLevelCode = "G"
	response.write(PriceLevelName & ": <B>" & PartPrice(pricestr) & "</B><BR>")
end if

end function

%>
