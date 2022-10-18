<!--#include file="../../../basic.inc"--> 
<% 

'*************** Get this lead's brief overview info
set conn = NewConnection()
set rs = conn.Execute("SELECT * FROM ResellerLeads WHERE lead_id=" + Request("lead_id"))

%>

<HTML>
  <BODY BGCOLOR="#FFFFFF" LINK="#000099" VLINK="#000000">

    <TABLE WIDTH=570><TR><TD>
    
<% if Request("thanks") = "1" then %>
    <BR>
    
    <H3><I>Thanks for the feedback!</I></H3><P>
    
    Thank you for helping AST provide the best possible customer service.  We look forward to
    working with you to ensure increase our business together.  Please feel free to come back
    here at any time and submit more follow-up information on your leads.<P>
    
    The information you provided about this lead will be available to you at any time.  We
    encourage you to use this web page as a contact-system for your sales force to increase
    your business!<P> 
    
<% end if %>

    <BR>
    
    <H3><I>Prospective Customer Detail</I></H3><P>
    
    <TABLE WIDTH=100% BORDER=0 CELLSPACING=0 CELLPADDING=0>
      <TR>
        <TD COLSPAN=3 BGCOLOR=#8C8CAD HEIGHT=25><FONT COLOR=#ffffff>
          <B>&nbsp;&nbsp;&nbsp;&nbsp;
          <%
            '*********** Figure out what brand this lead requested
            brand = ""
            if rs("advantage") = "Y" then
              brand = brand + "Advantage "
            end if
            if rs("ascentia") = "Y" then
              brand = brand + "Ascentia "
            end if
            if rs("bravo") = "Y" then
              brand = brand + "Bravo "
            end if
            if rs("manhattan") = "Y" then
              brand = brand + "Manhattan/Premium "
            end if
            if len(trim(brand)) = 0 then
              brand = "Units"
            end if
            
            if rs("qty") = "n/a" or rs("qty") = "decline" then
              Response.Write(brand)
            else
              Response.Write(rs("qty") + " " + brand)
            end if
          %>
        </TD>
        <TD ALIGN=right BGCOLOR=#8C8CAD HEIGHT=25><FONT COLOR=#ffffff>
          <B>
          <%=Response.Write(FormatDateTime(cdate(nstr(rs("date"))),vbShortDate))%>&nbsp;&nbsp;&nbsp;&nbsp;
        </TD>
      </TR>
      <TR><TD COLSPAN=4 HEIGHT=10>&nbsp;</TD></TR>
      <TR>
        <TD WIDTH=40>&nbsp;&nbsp;</TD>
        <TD VALIGN=top><FONT SIZE=2>
          <%=rs("first_name") + " " + rs("last_name")%>
          <% if len(trim(rs("title"))) > 0 then Response.Write(", " + rs("title")) end if %>
          <BR>
          <% if len(trim(rs("company_name"))) > 0 then Response.Write(rs("company_name") + "<BR>") end if %>
          <%
            if InStr(rs("email_addr"),"@") > 0 then
              Response.Write("<A HREF=""mailto:" + rs("email_addr") + """>" + rs("email_addr") + "</A><BR>")
            end if
          %>
          <% if len(trim(rs("addr1"))) > 0 then Response.Write(rs("addr1") + "<BR>") end if %>
          <% if len(trim(rs("addr2"))) > 0 then Response.Write(rs("addr2") + "<BR>") end if %>
          <%=rs("city") + ", " + rs("state") + " " + rs("postal_code") + "<BR>"%>
          <%="Phone: " + rs("phone") + "<BR>"%>
          <%="Fax: " + rs("fax") + "<BR>"%>
        </TD>
        <TD>&nbsp;&nbsp;</TD>
        <TD VALIGN=top><FONT SIZE=2>
          <% if len(rs("inquiry")) > 0 then %>
            <%=SpacesToBR(rs("inquiry"))%><BR>
          <% end if %>
          <% if rs("comment_length") > 1 then %>
            <B>Comments:</B><BR>
            <%=Replace(rs("extra_comments"),newline,"<BR>")%>
          <% end if %>
        </TD>
      </TR>
    </TABLE>

    <BR>
    
    <DIV ALIGN=right><A HREF="body.asp"><B>Back to list</B></A></DIV>
    
    <BR>

<%
rs.Close
set rs = conn.Execute("SELECT short, date, long FROM comment WHERE lead_id=" + Request("lead_id") + " AND badge_num IS NULL")
do while not rs.EOF
%>
    <CENTER><TABLE WIDTH=90% CELLPADDING=3 CELLSPACING=3 BORDER=1>
      <TR>
        <TD><B><%=rs("short")%>:</B></TD>
        <TD BGCOLOR=C0C0E0 ALIGN=center><%=rs("date")%></TD>
      </TR>
      <TR>
        <TD COLSPAN=2>
          <DL>
          <DD><%=rs("long")%>
          </DL>
        </TD>
      </TR>
    </TABLE></CENTER>
    <P>
<%
  rs.MoveNext
loop
rs.Close
%>
    <BR>
    
    <H3><I>Prospective Customer Follow-Up</I></H3><P>
    
    Your AST Sales Rep is working to provide you with quality business sales leads.  To help
    AST provide the best possible customer service, please fill out a brief summary of 
    your conversation with this prospective customer.<P>
    
    <FORM ACTION="submit_comment.asp" METHOD=post>
      <CENTER><TABLE><TR><TD>

        <TEXTAREA NAME="comment" COLS=40 ROWS=10 WRAP=soft>Please describe your conversation with this prospective customer here.</TEXTAREA>
        <INPUT TYPE=hidden NAME=lead_id VALUE=<%=Request("lead_id")%>>
        
        <BR><BR>
        
        <DIV ALIGN=right>
          <INPUT TYPE=submit VALUE=" Post this text ">
        </DIV>

      </TD></TR></TABLE></CENTER>
      
    </FORM>
    
    <P>
    
<%

'*************** Get this lead's status
set rs = conn.Execute("sp_Get_Lead_Detail " + Request("lead_id"))

%>

<% if not IsNull(rs("r_status")) or not IsNull(rs("p_status")) then %>

    <BR>
    
    <H3><I>Customer Service Questionnaires</I></H3><P>
    
    For your reference, the following questionnaires can be viewed online:<P>
    
<% end if %>

<% if not IsNull(rs("r_status")) then %>

      <DD><TABLE VALIGN=middle BGCOLOR=#BFBFBF BORDERCOLORLIGHT=#DFDFDF BORDERCOLORDARK=#9F9F9F BORDER=1>
        <TR>
          <TD BGCOLOR=#00007F HEIGHT=20 VALIGN=middle>
            &nbsp;&nbsp;<FONT SIZE=1 FACE="MS sans serif" COLOR=#FFFFFF><B>Reseller Follow-Up Questionnaire</B></FONT>
          </TD>
        </TR>
        <TR>
          <TD>
            <TABLE BGCOLOR=#BFBFBF BORDER=0 CELLSPACING=0>
              <TR>
                <TD>&nbsp;&nbsp;</TD>
                <TD></TD>
                <TD>&nbsp;&nbsp;</TD>
                <TD></TD>
                <TD>&nbsp;&nbsp;</TD>
              </TR>
              <TR>
                <TD></TD>
                <TD><FONT SIZE=2><B>1)</B> Has the reseller received this lead?</FONT></TD>
                <TD></TD>
                <TD><FONT SIZE=2><% 
                      if rs("r_recv") = "Y" then
                        Response.Write("Yes")
                      elseif rs("r_recv") = "N" then
                        Response.Write("No")
                      else
                        Response.Write("(not answered)")
                      end if
                    %></TD>
                <TD></TD>
              </TR>
              <TR>
                <TD></TD>
                <TD><FONT SIZE=2><B>2)</B> Has the reseller contacted this prospect?</FONT></TD>
                <TD></TD>
                <TD><FONT SIZE=2><% 
                      if rs("r_contacted") = "Y" then
                        Response.Write("Yes")
                      elseif rs("r_contacted") = "N" then
                        Response.Write("No")
                      else
                        Response.Write("(not answered)")
                      end if
                    %></TD>
                <TD></TD>
              </TR>
              <TR>
                <TD></TD>
                <TD><FONT SIZE=2><B>3)</B> What is the reseller's status regarding this lead?</FONT></TD>
                <TD></TD>
                <TD><FONT SIZE=2><%=rs("r_status")%></TD>
                <TD></TD>
              </TR>
              <TR>
                <TD></TD>
                <TD><FONT SIZE=2><B>4)</B> If this lead generated AST sales, how many units?</FONT></TD>
                <TD></TD>
                <TD><FONT SIZE=2><%=rs("r_sale_units")%></TD>
                <TD></TD>
              </TR>
              <TR>
                <TD></TD>
                <TD><FONT SIZE=2><B>5)</B> If this lead generated AST sales, how much revenue?</FONT></TD>
                <TD></TD>
                <TD><FONT SIZE=2><%=rs("r_sale_value")%></TD>
                <TD></TD>
              </TR>
              <TR>
                <TD>&nbsp;&nbsp;</TD>
                <TD></TD>
                <TD>&nbsp;&nbsp;</TD>
                <TD></TD>
                <TD>&nbsp;&nbsp;</TD>
              </TR>
            </TABLE>
          </TD>
        </TR>
      </TABLE>
      
      <BR><BR><BR>

<% end if %>

<% if not IsNull(rs("p_status")) then %>

      <DD><TABLE VALIGN=middle BGCOLOR=#BFBFBF BORDERCOLORLIGHT=#DFDFDF BORDERCOLORDARK=#9F9F9F BORDER=1>
        <TR>
          <TD BGCOLOR=#00007F HEIGHT=20 VALIGN=middle>
            &nbsp;&nbsp;<FONT SIZE=1 FACE="MS sans serif" COLOR=#FFFFFF><B>Prospect Follow-Up Questionnaire</B></FONT>
          </TD>
        </TR>
        <TR>
          <TD>
            <TABLE BGCOLOR=#BFBFBF BORDER=0 CELLSPACING=0>
              <TR>
                <TD>&nbsp;&nbsp;</TD>
                <TD></TD>
                <TD>&nbsp;&nbsp;</TD>
                <TD></TD>
                <TD>&nbsp;&nbsp;</TD>
              </TR>
              <TR>
                <TD></TD>
                <TD><FONT SIZE=2><B>1)</B> Has the prospect received confirmation of this lead?</FONT></TD>
                <TD></TD>
                <TD><FONT SIZE=2><% 
                      if rs("p_confirm") = "Y" then
                        Response.Write("Yes")
                      elseif rs("p_confirm") = "N" then
                        Response.Write("No")
                      else
                        Response.Write("(not answered)")
                      end if
                    %></TD>
                <TD></TD>
              </TR>
              <TR>
                <TD></TD>
                <TD><FONT SIZE=2><B>2)</B> Has the reseller contacted this prospect?</FONT></TD>
                <TD></TD>
                <TD><FONT SIZE=2><% 
                      if rs("p_contacted") = "Y" then
                        Response.Write("Yes")
                      elseif rs("p_contacted") = "N" then
                        Response.Write("No")
                      else
                        Response.Write("(not answered)")
                      end if
                    %></TD>
                <TD></TD>
              </TR>
              <TR>
                <TD></TD>
                <TD><FONT SIZE=2><B>3)</B> Did the reseller represent AST products?</FONT></TD>
                <TD></TD>
                <TD><FONT SIZE=2><% 
                      if rs("p_represented") = "Y" then
                        Response.Write("Yes")
                      elseif rs("p_represented") = "N" then
                        Response.Write("No")
                      else
                        Response.Write("(not answered)")
                      end if
                    %></TD>
                <TD></TD>
              </TR>
              <TR>
                <TD></TD>
                <TD><FONT SIZE=2><B>4)</B> What is the prospect's status regarding this lead?</FONT></TD>
                <TD></TD>
                <TD><FONT SIZE=2><%=rs("p_status")%></TD>
                <TD></TD>
              </TR>
              <TR>
                <TD></TD>
                <TD><FONT SIZE=2><B>5)</B> If this lead generated AST sales, how many units?</FONT></TD>
                <TD></TD>
                <TD><FONT SIZE=2><%=rs("p_sale_units")%></TD>
                <TD></TD>
              </TR>
              <TR>
                <TD></TD>
                <TD><FONT SIZE=2><B>6)</B> If this prospect bought another brand, what was it?</FONT></TD>
                <TD></TD>
                <TD><FONT SIZE=2><%=rs("p_brand")%></TD>
                <TD></TD>
              </TR>
              <TR>
                <TD></TD>
                <TD><FONT SIZE=2><B>7)</B> If this prospect bought another brand, how many units?</FONT></TD>
                <TD></TD>
                <TD><FONT SIZE=2><%=rs("p_brand_units")%></TD>
                <TD></TD>
              </TR>
              <TR>
                <TD>&nbsp;&nbsp;</TD>
                <TD></TD>
                <TD>&nbsp;&nbsp;</TD>
                <TD></TD>
                <TD>&nbsp;&nbsp;</TD>
              </TR>
            </TABLE>
          </TD>
        </TR>
      </TABLE>

<% end if %>

    </TD></TR></TABLE>
  </BODY>
</HTML>