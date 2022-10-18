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
'* This is the generic select box function
'*
'******************************************************************************
function SelectBox(byval title, byval sqlcmd, byval choice)
  dim conn
  dim rs
  
  Print("<SELECT NAME=" + title + ">")
  
  set conn = NewConnection()
  set rs = conn.Execute(sqlcmd)
  do while not rs.EOF
  
    Response.Write("  <OPTION VALUE=" + cstr(rs("id")))
    if rs("id") = choice then
      Response.Write(" SELECTED")
    end if
    Response.Write("> " + rs("name") + newline)
    
    rs.MoveNext
  loop
  rs.Close
  conn.Close
  
  Print("</SELECT>")
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
'* Draw the New MSA entry page
'*
'******************************************************************************
function BuildMSA()
  dim conn, rs, TextCol(3), curcolumn, i, MSACount, oldstate, counter
  
  set conn = NewConnection()
  
  if len(coid) = 0 then coid = "NULL"
  if len(locid) = 0 then locid = "NULL"

  '************ Begin the next segment - actually building the page
  curcolumn = 0
  i = 0
  
  set rs = conn.Execute("SELECT msacount=count(msa_id) FROM msa")
  MSACount = rs("msacount") + 100
  rs.Close
  
  set rs = conn.Execute("sp_MSA_Status " + locid)
  do while not rs.EOF
  
    if oldstate <> rs("state") then
    
      if not IsEmpty(oldstate) then
        TextCol(curcolumn) = Replace(TextCol(curcolumn),"fleem",cstr(counter + 1))
        TextCol(curcolumn) = TextCol(curcolumn) + "</SELECT></CENTER>"
      end if
      
      i = i + 2
      if i > msacount / 3 then
        if curcolumn < 2 then
          curcolumn = curcolumn + 1
        end if
        i = 0
      end if
      
      TextCol(curcolumn) = TextCol(curcolumn) + "<BR><CENTER><B>" + rs("state") + "</B><BR>"
      TextCol(curcolumn) = TextCol(curcolumn) + "<SELECT NAME=msaid SIZE=fleem MULTIPLE>"
      TextCol(curcolumn) = TextCol(curcolumn) + "<OPTION VALUE=0>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(none)"
      counter = 0
      
      oldstate = rs("state")
    end if
    
    i = i + 1
    
    TextCol(curcolumn) = TextCol(curcolumn) + "<OPTION VALUE=x" + CSTR(rs("msa_id")) + "x"
    if Request("override") = "1" then
      if InStr(Request("msaid"),"x" + cstr(rs("msa_id")) + "x") or not IsEmpty(Request(rs("state"))) then
        TextCol(curcolumn) = TextCol(curcolumn) + " SELECTED"
      end if
    else
      if rs("status") = rs("msa_id") then
        TextCol(curcolumn) = TextCol(curcolumn) + " SELECTED"
      end if
    end if
    
    counter = counter + 1
    
    TextCol(curcolumn) = TextCol(curcolumn) + "> [" + cstr(rs("msa_id")) + "] " + rs("region")
    
    rs.MoveNext
  loop
  rs.Close
  
  TextCol(curcolumn) = Replace(TextCol(curcolumn),"fleem",cstr(counter + 1))
  TextCol(curcolumn) = TextCol(curcolumn) + "</SELECT></CENTER>"

  Print("Please select the metropolitan areas your company services.  Hold down the 'Ctrl' key to select multiple areas within a state.<P>")
  
  Print("<TABLE><TR><TD VALIGN=TOP><FONT SIZE=2>")
  Print(TextCol(0))
  Print("</FONT></TD><TD VALIGN=TOP><FONT SIZE=2>")
  Print(TextCol(1))
  Print("</FONT></TD><TD VALIGN=TOP><FONT SIZE=2>")
  Print(TextCol(2))
  Print("</FONT></TD></TR></TABLE>")
  
  conn.Close

end function


'******************************************************************************
'*
'* Draw an entire page of the questionnaire
'*
'******************************************************************************
function BuildPage(byval Page)
  dim conn, conn2, rsPage, rsQuestion
  dim col, counter, style, htmltemp, question, last

  if len(coid) = 0 then coid = "NULL"
  if len(locid) = 0 then locid = "NULL"

  '***** Skip on over to the MSA function if necessary
  if page = "M1" or page = "R3" then
    call BuildMSA()
    exit function
  end if
  
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
'* Verify the New MSA page
'*
'******************************************************************************
function VerifyMSA()
  dim thiscolumn, oldstate, conn, rs
  
  thiscolumn = 1
  oldstate = 0
  
  set conn = NewConnection()
  
  Print("<TABLE><TR>")
  
  set rs = conn.Execute("SELECT msa_id, region, state FROM msa ORDER BY state, region")
  do while not rs.EOF
  
    '*************** Display
    if InStr(Request("msaid"),"x" + cstr(rs("msa_id")) + "x") then
      Response.Write("<TD><LI>" + rs("region") + "</TD>")
      if thiscolumn = 3 then
        Response.Write("</TR><TR>")
        thiscolumn = 1
      else
        thiscolumn = thiscolumn + 1
      end if
    end if
  
    rs.MoveNext
  loop
  rs.Close

  Print("</TR></TABLE>")
  
  conn.Close
  
end function


'******************************************************************************
'*
'* Draw an entire page of the questionnaire for verification
'*
'******************************************************************************
function VerifyPage(byval Page)
  dim conn, conn2, rsPage, rsQuestion
  dim col, style, counter

  '***** Skip on over to the MSA function if necessary
  if page = "M1" or page = "R3" then
    call VerifyMSA()
    exit function
  end if
  
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
'* Send a completed MSA page into the SQL database
'*
'******************************************************************************
function SendMSA()
  dim conn, rs, conn2
  
  set conn  = NewConnection()
  set conn2 = NewConnection()
  
  conn.Execute("DELETE FROM profile_msa WHERE location_id=" + locid)
  
  set rs = conn.Execute("SELECT msa_id, region, state FROM msa ORDER BY state, region")
  do while not rs.EOF
    if InStr(Request("msaid"),"x" + cstr(rs("msa_id")) + "x") then
      conn2.Execute("INSERT INTO profile_msa VALUES (" + locid + "," + cstr(rs("msa_id")) + ")")
    end if
    rs.MoveNext
  loop
  rs.Close
  
  conn.Execute("UPDATE location SET update_msa='N' WHERE location_id=" + locid)
  
  conn.Close
  conn2.Close
  
end function


'******************************************************************************
'*
'* Send a completed page into the SQL database
'*
'******************************************************************************
function SendPage(byval page)
  dim conn, conn2, conn3, rs, rs2
  dim name, p, line, update_profile

  if len(coid) = 0 then coid = "NULL"
  if len(locid) = 0 then locid = "NULL"

  '***** Skip on over to the MSA function if necessary
  if page = "M1" or page = "R3" then
    call SendMSA()
    exit function
  end if
  
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
'* Add or update a location in the database
'*
'******************************************************************************
function SendLocation()
  dim conn, rs
  dim line, item, service, ivr, tele, lead

  set conn = NewConnection()
  
  if Request("bad_mail") = "" then
    bm="N"
  else
    bm="Y"
  end if
  
  if Request("lead_match") = "" then
    lead="N"
  else
    lead="Y"
  end if
  
  if Request("sell_advantage") = "" then
    adv="N"
  else
    adv="Y"
  end if
  
  '************** Add A New Location
  if action = "new" then
    line = "sp_Populate_Location " + coid + ","
    line = line + sql(Request("location_name")) + ","
    line = line + sql(Request("addr1")) + ","
    line = line + sql(Request("addr2")) + ","
    line = line + sql(Request("city")) + ","
    line = line + Request("state_region_id") + ","
    line = line + sql(Request("postal_code")) + ","
    line = line + sql(Request("main_phone")) + ","
    line = line + sql(Request("main_fax")) + ","
    line = line + sql(Request("web_page")) + ","
    line = line + sql(Request("auth_ext")) + ","
    line = line + Request("ltype") + ","
    line = line + sql(Request("cust_no")) + ","
    line = line + sql(Request("asc_no")) + ","
    line = line + sql(Request("assc_no")) + ","
    line = line + sql(Request("dba")) + ","
    line = line + sql(Request("tax_id")) + ","
    line = line + sql(bm) + ","
    line = line + sql(adv) + ","
    line = line + sql(lead)
    
    set rs = conn.Execute(line)
    locid = cstr(rs("location_id"))
    rs.Close
    
  '************** Update An Existing Location
  else
    line = "sp_Update_Location " + locid + ","
    line = line + sql(Request("location_name")) + ","
    line = line + sql(Request("addr1")) + ","
    line = line + sql(Request("addr2")) + ","
    line = line + sql(Request("city")) + ","
    line = line + Request("state_region_id") + ","
    line = line + sql(Request("postal_code")) + ","
    line = line + sql(Request("main_phone")) + ","
    line = line + sql(Request("main_fax")) + ","
    line = line + sql(Request("web_page")) + ","
    line = line + sql(Request("auth_ext")) + ","
    line = line + Request("ltype") + ","
    line = line + sql(Request("cust_no")) + ","
    line = line + sql(Request("asc_no")) + ","
    line = line + sql(Request("assc_no")) + ","
    line = line + sql(Request("dba")) + ","
    line = line + sql(Request("tax_id")) + ","
    line = line + sql(bm) + ","
    line = line + sql(adv) + ","
    line = line + sql(lead) + ","
    line = line + Request("country")
    
    conn.Execute(line)
  end if
  
  '*********** Only change the price level with the utmost safety
  if len(Request("price_level")) > 0 then
    conn.Execute("UPDATE location SET price_level=" + Request("price_level") + " WHERE location_id=" + locid)
  end if
  
  for each item in Request("removelink")
    conn.Execute("sp_Remove_Link " + item + "," + locid)
  next
  
  for each item in Request("attach")
    if item <> "-1" then
      conn.Execute("sp_Add_To_CL_Link " + item + "," + locid)
    end if
  next
  
  conn.Close
  
end function



'******************************************************************************
'*
'* Build the location browser
'*
'******************************************************************************
function BrowseLocation(byval field, byval criteria)
  dim conn, rs
  dim counter, color

  Print("<CENTER><TABLE CELLSPACING=3 CELLPADDING=3>")

  set conn = NewConnection()
  
  counter = 1
  color = "F8F0D0"
  
  set rs = conn.Execute("sp_Search_Location " + coid + ",'" + field + "','" + criteria + "'")
  do while not rs.EOF
  
    if counter = 1 then
      Print("<TR>")
      Print("<TD" + "></TD>")
      Print("<TD" + "></TD>")
      Print("<TD ALIGN=CENTER VALIGN=BOTTOM><B>Location Name</B></TD>")
      Print("<TD ALIGN=CENTER VALIGN=BOTTOM><B>Address</B></TD>")
      Print("<TD ALIGN=CENTER VALIGN=BOTTOM><B>City</B></TD>")
      Print("</TR>")
    end if
    
    counter = counter + 1
  
    Print("<TR BGCOLOR=" + color + ">")
    Print("<TD ALIGN=CENTER><A HREF=""location_del.asp?coid=" + coid + "&locid=" + cstr(rs("location_id")) + "&Action=update""><B>DELETE</B></A></TD>")
    Print("<TD ALIGN=CENTER><A HREF=""location.asp?coid=" + coid + "&locid=" + cstr(rs("location_id")) + "&Action=update""><B>EDIT</B></A></TD>")
    Print("<TD>&nbsp;" + rs("location_name") + "</TD>")
    Print("<TD>&nbsp;" + rs("addr1") + "</TD>")
    Print("<TD>&nbsp;" + rs("city") + "</TD>")
    Print("</TR>")
    
    if color = "F8F0D0" then
      color = "E0E0FF"
    else
      color = "F8F0D0"
    end if
  
    rs.MoveNext
  loop
  rs.Close
  
  if counter = 0 then
    Print("<TR>")
    Print("<TD>&nbsp;</TD>")
    Print("<TD>&nbsp;</TD>")
    Print("<TD COLSPAN=3><B>No locations could be found with the criteria you specified.</B></TD>")
    Print("</TR>")
  end if
  
  Print("<TR BGCOLOR=" + color + ">")
  Print("<TD>&nbsp;</TD>")
  Print("<TD>&nbsp;</TD>")
  Print("<TD COLSPAN=3><A HREF=""location.asp?coid=" + coid + "&Action=new""><B><I>Add a new location...</I></B></A></TD>")
  Print("</TR>")
  Print("</TABLE></CENTER><P>")
  
  conn.Close

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
'* Return the price of a product by its part number and your price level
'*
'**********************************************************************
function PartPrice(byval strPartNum)
  if IsEmpty(PriceConn) then
    set PriceConn = NewPriceConn()
  end if
  
  dim rs
  dim thisdate
  
  thisdate = FormatDateTime(Now,vbShortDate)

  '************ Locate this person's price level
  if IsEmpty(PriceLevelCode) then
    GetPriceLevel()
  end if

  '************ Get the pricing for this product
  set rs = PriceConn.Execute("select * from part_price inner join part_price_type on part_price_type.part_price_type_id=part_price.part_price_type_id where part_num=" + sql(strPartNum) + " and price_code=" + sql(PriceLevelCode) + " AND eff_date <= " + sql(thisdate) + " AND exp_date >= " + sql(thisdate))
  if not rs.EOF then
    PartPrice = FormatCurrency(cdbl(nstr(rs("price"))))
  end if
  rs.Close
end function


'**********************************************************************
'*
'* Return the rebate of a product by its part number
'*
'**********************************************************************
function PartRebate(byval strPartNum)
  if IsEmpty(PriceConn) then
    set PriceConn = NewPriceConn()
  end if
  
  dim sqlquery, rs
  dim thisdate
  
  thisdate = FormatDateTime(Now,vbShortDate)

  '************ Get the pricing for this product
  set rs = PriceConn.Execute("select * from part_price inner join part_price_type on part_price_type.part_price_type_id=part_price.part_price_type_id where part_num=" + sql(strPartNum) + " and price_code='1' AND eff_date <= " + sql(thisdate) + " AND exp_date >= " + sql(thisdate))
  if not rs.EOF then
    PartRebate = FormatCurrency(cdbl(nstr(rs("price"))) * 0.03)
  end if
  rs.Close
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
    EmployeePurchasePrice = FormatCurrency(cdbl(nstr(rs("std_cost"))) * 1.10)
  end if
  rs.Close
end function


'******************************************************************************
'*
'* Print a new business card for a badge number
'*
'******************************************************************************
function PrintBusinessCard(byval badge, byval Comment)
  dim cw, rs

  set cw = NewWebster()
  set rs = cw.Execute("SELECT * FROM acl WHERE acl_badge_num=" + sql(badge))
  
  if not rs.EOF then
    name = rs("acl_first_name") + " " + rs("acl_last_name")
    email = lcase(rs("acl_first_name") + "." + rs("acl_last_name") + "@ast.com")
    phone = "(714) 727-" + rs("acl_direct_line")
%>
    <CENTER><%=comment%><BR>
      <TABLE CELLSPACING=0 BORDER=0 CELLPADDING=0 BGCOLOR=F0F0F0>
        <TR>
          <TD WIDTH=15 BGCOLOR=004070>&nbsp;</TD>
          <TD WIDTH=200 VALIGN=CENTER>&nbsp;&nbsp;<IMG SRC="images/card.gif"></TD>
          <TD WIDTH=200 VALIGN=CENTER>
            <BR>
            <B><%=name%></B><BR>
            <%=rs("acl_title")%><BR>
            <%=phone%><BR>
            <FONT FACE="Arial" SIZE=2><BR>
            AST Research, Inc.<BR>
            16215 Alton Parkway<BR>
            Irvine, California 92618<BR>
            <%=rs("acl_main_line")%><BR>
            Fax: <%=rs("acl_fax_line")%><BR>
            Internet: <A HREF="mailto:<%=email%>"><%=email%></A></FONT><BR>
            &nbsp;<BR>
          </TD>
        </TR>
      </TABLE>
    </CENTER>
<%
  end if
  
  cw.Close
end function


%>
