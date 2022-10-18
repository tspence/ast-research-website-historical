<!--#include file="global.inc"--> 
<%


dim Mailer


'******************************************************************************
'*
'* This performs the work of sending an email
'*
'******************************************************************************
function SendMail(byval email, byval from, byval subject, byval text)
  dim success
  
  if IsEmpty(mailer) then
    set mailer = Server.CreateObject("MS.clsWebMail")
  end if

  if len(trim(email)) > 0 and len(trim(from)) > 0 then
    success = mailer.SMTP("165.164.128.2", cstr(trim(email)),"",cstr(trim(from)),cstr(subject), "WebMail", cstr(text))
  end if
end function


'******************************************************************************
'*
'* Build the questionnaire page into the windows-style dialog box
'*
'******************************************************************************
function MatchLead(byval lead_id, byval locid, byval leadtext)
  dim rs, conn, rs2, conn2
  dim text, restext, locname, isr, fsr, body
  
  '************** Retrieve information on this reseller
  set conn2 = NewConnection()
  
  '************** Prepare the reseller text
  set conn = NewConnection()
  set rs = conn.Execute("sp_Get_Reseller " + locid)
  restext = restext + "  " + rs("location_name") + newline
  if len(trim(nstr(rs("web_page")))) > 0 then
    restext = restext + "  " + rs("web_page") + newline
  end if
  restext = restext + "  " + rs("addr1") + newline
  if len(trim(nstr(rs("addr2")))) > 0 then
    restext = restext + "  " + rs("addr2") + newline
  end if
  restext = restext + "  " + rs("city") + ", " + rs("state_region_abbrv") + " " + rs("postal_code") + newline + newline

  restext = restext + "  Phone  " + rs("main_phone") + newline
  restext = restext + "  Fax    " + rs("main_fax") + newline + newline
  
  locname = trim(nstr(rs("location_name")))
  isr = trim(nstr(rs("inside_sales_rep")))
  fsr = trim(nstr(rs("field_sales_rep")))
  conn2.Execute("UPDATE lead SET matched_to=" + locid + ", region_id=" + nstr(rs("region_id")) + ", territory_id=" + nstr(rs("territory_id")) + " WHERE lead_id=" + nstr(lead_id))
  rs.Close

  set rs2 = conn2.Execute("SELECT * FROM lead WHERE lead_id=" + nstr(lead_id))

  '************** First send a notification to the lead
  text =        "Dear " + rs2("first_name") + " " + rs2("last_name") + "," + newline + newline
  
  text = text + "Thank you for your interest in AST products.  We forwared your request " + newline     
  text = text + "to the following reseller to provide the serivces which you requested:" + newline + newline

  text = text + restext

  text = text + "We have notified " + locname + " to" + newline
  text = text + "contact you immediately." + newline + newline

  text = text + "We are pleased to have the opportunity to work for your business." + newline + newline

  text = text + "--AST Sales" + newline
  text = text + "sales.match@ast.com" + newline
  
  call SendMail(rs2("email_addr"),"sales.match@ast.com","AST Computers Request",text)
  rs2.Close
  conn2.Close

  '************** Next send a notification to the reseller
  set rs = conn.Execute("SELECT * FROM contact WHERE type=11 AND location_id=" + match)
  do while not rs.EOF
    if InStr(rs("email_addr"),"@") > 0 then

      text =        "Dear " + rs("first_name") + " " + rs("last_name") + "," + newline + newline
      
      text = text + "We are pleased to send you the following end user lead which has been " + newline
      text = text + "matched to your business through our dynamic lead match system." + newline + newline
      
      text = text + "-- AST Lead Match Project" + newline
      text = text + "sales.match@ast.com" + newline + newline
      
      text = text + "= = = = = = = = = = " + newline + newline + leadtext
      
      call SendMail(rs("email_addr"),"sales.match@ast.com","Web Lead",text)
      
    end if
    rs.MoveNext
  loop
  rs.Close
  
  body =        "The automated end user lead match system has matched the following lead in your " + newline
  body = body + "territory." + newline + newline
 
  body = body + "To record your followup communication with the reseller, log on to AST's Lead " + newline
  body = body + "Match Intranet at http://webster.ast.com" + newline + newline
 
  body = body + "If you are outside of the AST firewall, you will not be able to reach Webster. " + newline
  body = body + "Use AST's Extranet at http://interchange.ast.com/extranet" + newline + newline
 
  body = body + "-- AST Lead Match Project" + newline
  body = body + "sales.match@ast.com" + newline + newline
 
  body = body + "= = = = = = = = = = " + newline + newline + restext
 
  body = body + "= = = = = = = = = = " + newline + newline + leadtext
 
  '************** Next contact the ISR
  set conn2 = NewWebster()
  set rs2 = conn2.Execute("SELECT * FROM acl WHERE acl_badge_num=" + sql(isr))
  if not rs2.EOF then
  
    text =        "Dear " + rs2("acl_first_name") + " " + rs2("acl_last_name") + "," + newline + newline
    
    text = text + body
    
    call SendMail(rs2("acl_email"),"sales.match@ast.com","Web Lead",text)
      
  end if
  
  '************** Next contact the FSR
  set rs2 = conn2.Execute("SELECT * FROM acl WHERE acl_badge_num=" + sql("fsr"))
  if not rs2.EOF then

    text =        "Dear " + rs2("acl_first_name") + " " + rs2("acl_last_name") + "," + newline + newline
    
    text = text + body
    
    call SendMail(rs2("acl_email"),"sales.match@ast.com","Web Lead",text)

  end if
end function


'******************************************************************************
'*
'* Build the questionnaire page into the windows-style dialog box
'*
'******************************************************************************
function BuildLeadPage(byval lead, byval page)
  dim conn, conn2, rsPage, rsQuestion
  dim question, last, col, style, descr, counter, htmltemp

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
  
    set rsQuestion = conn2.Execute("sp_Lead_Status " + lead + "," + cstr(rsPage("category_id")))
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
'* Build the 'additional comments' segment of an HTML page
'*
'******************************************************************************
function BuildComments(byval leadid)
  dim conn, rs, conn2, rs2
  dim page, page2, name, comment, adminflag

  adminflag = VerifyAdmin("Interchange Administrators")
  
  page = "lead.asp?lead=" + leadid
  page2 = "lead.asp?insert=1&lead=" + leadid + "#comment"
  
  set conn = NewConnection()
  set conn2 = NewWebster()

  set rs = conn.Execute("sp_Read_Lead_Comments " + leadid)
  do while not rs.EOF
    comment = rs("long")
    name = "Interchange System"
    if rs("badge_num") <> "0" then
      set rs2 = conn2.Execute("SELECT * FROM acl WHERE acl_badge_num=" + sql(rs("badge_num")))
      if not rs2.EOF then
        name = rs2("acl_first_name") + " " + rs2("acl_last_name")
      else
        name = "Unknown user (" + rs("badge_num") + ")"
      end if
      rs2.Close
    end if
    
    if Request("edit") = cstr(rs("comment_id")) and (rs("badge_num") = trim(session("acl_badge_num")) or adminflag=1) then
%>
    <FORM ACTION=comment.asp METHOD=post>
    <INPUT TYPE=hidden NAME=action VALUE=update>
    <INPUT TYPE=hidden NAME=comment_id VALUE=<%=cstr(rs("comment_id"))%>>
    <INPUT TYPE=hidden NAME=page VALUE="<%=page%>">
  
    <CENTER><TABLE WIDTH=90% CELLPADDING=3 CELLSPACING=3 BORDER=1>
      <TR>
        <TD><INPUT TYPE=text NAME=short SIZE=50 VALUE="<%=rs("short")%>">:</TD>
        <TD BGCOLOR=F8F0D0 ALIGN=center><%=name%></TD>
        <TD BGCOLOR=C0C0E0 ALIGN=center><%=rs("date")%></TD>
      </TR>
      <TR>
        <TD COLSPAN=3>
          <DD><TEXTAREA WRAP=soft NAME=comment COLS=80 ROWS=4><%=unhtml(comment)%></TEXTAREA>
        </TD>
      </TR>
      <TR>
        <TD COLSPAN=3 ALIGN=right BGCOLOR=C0C0E0>
          <INPUT TYPE=submit VALUE="      OK      ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <INPUT TYPE=reset VALUE="  Cancel  ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </TD>
      </TR>
    </TABLE></CENTER>
    </FORM>
    <P>

<%
    else
%>
    <CENTER><TABLE WIDTH=90% CELLPADDING=3 CELLSPACING=3 BORDER=1>
      <TR>
<%    if (rs("badge_num") = trim(session("acl_badge_num")) or adminflag = 1) then %>
        <TD><A HREF="comment.asp?action=delete&comment_id=<%=nstr(rs("comment_id"))%>&page=<%=server.urlencode(page)%>">(del)</A> 
        <A HREF="<%=page%>&edit=<%=cstr(rs("comment_id"))%>"><B><%=rs("short")%>:</B></A></TD>
<%    else %>
        <TD><B><%=rs("short")%>:</B></TD>
<%    end if %>
        <TD BGCOLOR=F8F0D0 ALIGN=center><%=name%></TD>
        <TD BGCOLOR=C0C0E0 ALIGN=center><%=rs("date")%></TD>
      </TR>
      <TR>
        <TD COLSPAN=3>
          <DL>
          <DD><%=comment%>
          </DL>
        </TD>
      </TR>
    </TABLE></CENTER>
    <P>
<%
    end if
    
    rs.MoveNext
  loop
  
  rs.Close
  
  if Request("insert") = "1" then
    set rs2 = conn2.Execute("SELECT * FROM acl WHERE acl_badge_num=" + sql(session("acl_badge_num")))
    if not rs2.EOF then
      name = rs2("acl_first_name") + " " + rs2("acl_last_name")
    else
      name = "Unknown user (" + session("acl_badge_num") + ")"
    end if
    rs2.Close
%>
    <FORM ACTION=comment.asp METHOD=post>
    <INPUT TYPE=hidden NAME=action VALUE=add>
    <INPUT TYPE=hidden NAME=lead VALUE=<%=leadid%>>
    <INPUT TYPE=hidden NAME=page VALUE="<%=page%>">
    
    <CENTER><TABLE WIDTH=90% CELLPADDING=3 CELLSPACING=3 BORDER=1>
      <TR>
        <TD><A NAME="comment"><INPUT TYPE=text NAME=short SIZE=50>:</TD>
        <TD BGCOLOR=F8F0D0 ALIGN=center><%=name%></TD>
        <TD BGCOLOR=C0C0E0 ALIGN=center>Now</TD>
      </TR>
      <TR>
        <TD COLSPAN=3>
          <DD><TEXTAREA WRAP=soft NAME=comment COLS=80 ROWS=4></TEXTAREA>
        </TD>
      </TR>
      <TR>
        <TD COLSPAN=3 ALIGN=right BGCOLOR=C0C0E0>
          <INPUT TYPE=submit VALUE="      OK      ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <INPUT TYPE=reset VALUE="  Cancel  ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </TD>
      </TR>
    </TABLE></CENTER>
    </FORM>
    <P>
    
<%
  end if

%>    
    <P>
    
<% if len(Request("edit")) > 0 or len(Request("insert")) > 0 then %>
    <CENTER>[ <A HREF="<%=page%>">- Close Comments -</A> ]</CENTER>
<% else %>
    <CENTER>[ <A HREF="<%=page2%>">- New Comment -</A> ]</CENTER>
<% 
  end if
  
  conn.Close
  conn2.Close
  
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
function RStatusSelect(byval selected)
  call SelectBox("r_status","SELECT name, id=r_status_type_id FROM r_status_type",selected)
end function

function PStatusSelect(byval selected)
  call SelectBox("p_status","SELECT name, id=p_status_type_id FROM p_status_type",selected)
end function

function BrandSelect(byval selected)
  call SelectBox("p_brand","SELECT name, id=brand_type_id FROM brand_type",selected)
end function

%>