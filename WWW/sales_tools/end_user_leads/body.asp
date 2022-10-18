<!--#include file="../../../basic.inc"-->
<HTML>
<HEAD>
  <TITLE>End-User Lead Match</TITLE>
</HEAD>
<BODY BGCOLOR="#ffffff" TEXT="#0b0b0b">

  <TABLE WIDTH="570" BORDER="0" CELLSPACING="0" CELLPADDING="0">
  <TR>
  <TD><TABLE WIDTH="500" BORDER="0" CELLSPACING="4" CELLPADDING="0">
  <TR>
  <TD VALIGN="TOP" WIDTH="212"><IMG SRC="assets/images/hands.JPG" WIDTH="200" HEIGHT="137" ALIGN="BOTTOM"
  NATURALSIZEFLAG="3" BORDER="0"></TD>
  <TD VALIGN="TOP" WIDTH="288"><P>You've seen AST advertisements in national computer periodicals, as well
  as major trade shows. Now there's a way for you to derive sales leads directly
  from AST corporate marketing activities through a unique, closed loop process
  that matches qualified prospects with appropriate AST Ovation! Resellers.</P>
  
  <P>
<% 

set conn = NewConnection() 
set rs = conn.Execute("SELECT * FROM ResellerLeads WHERE matched_to=" + session("location_id") + " ORDER BY date DESC") 
if rs.EOF then 

%>
  </P>
  
  <P>Through the End User Lead Match Program, all end user responses generated
  by AST's promotional efforts are profiled. Leads are then matched and distributed
  to the appropriate reseller for contact and follow-up. Leads are distributed
  electronically within 24 hours of receipt by AST, so you get them while
  they are still hot. Leads are matched to an Ovation! Reseller based on the
  information provided in the reseller registration form, including:</P>
  
  <BLOCKQUOTE>
    <UL>
      <LI>Geography
      <LI>Size of end user business
      <LI>Purchase size
      <LI>Vertical market
      <LI>Applications installed
    </UL>
  </BLOCKQUOTE>
  
  <P>As an Ovation! Reseller you have priority access to all AST leads.
  You will also participate in other special AST demand generation programs
  designed to increase your business. From special direct mail campaigns to
  trade shows and other unique marketing programs, AST is continually working
  to increase end user demand.</P>
  
  <P>We want to make sure that we always have the most up to the minute information
  on your company so that you receive the most appropriate leads every day.
  To make sure we have the right information, check your company profile right
  here on the Ovation! web site.</TD></TR>
  </TABLE>
  </TD></TR>
  </TABLE>
  
<% else %> 

  </TD></TR></TABLE><BR>
  
  <TABLE WIDTH="100%" BORDER="0" CELLSPACING="0" CELLPADDING="0">
  <% do while not rs.EOF %> 
    <TR>
  <TD COLSPAN="3" BGCOLOR="#8C8CAD" HEIGHT="25"><FONT COLOR=#FFFFFF><B>&nbsp;&nbsp;&nbsp;&nbsp;
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

</B></TD>
  <TD ALIGN="RIGHT" BGCOLOR="#8C8CAD" HEIGHT="25"><FONT COLOR=#FFFFFF><B><%=Response.Write(FormatDateTime(cdate(nstr(rs("date"))),vbShortDate))%>&nbsp;&nbsp;&nbsp;&nbsp;</B></TD></TR>
  <TR>
  <TD COLSPAN="4" HEIGHT="10">&nbsp;</TD></TR>
  <TR>
  <TD WIDTH="40">&nbsp;&nbsp;</TD>
  <TD VALIGN="TOP"><FONT SIZE=-1><%=rs("first_name") + " " + rs("last_name")%>
  <% if len(trim(rs("title"))) > 0 then Response.Write(", " + rs("title")) end if %> <BR>
  <% if len(trim(rs("company_name"))) > 0 then Response.Write(rs("company_name") + "<BR>") end if %> 
  <% if InStr(rs("email_addr"),"@") > 0 then Response.Write("<A HREF=""./"">" + rs("email_addr") + "</A><BR>") end if %> 
  <% if len(trim(rs("addr1"))) > 0 then Response.Write(rs("addr1") + "<BR>") end if %> 
  <% if len(trim(rs("addr2"))) > 0 then Response.Write(rs("addr2") + "<BR>") end if %> 
  <%=rs("city") + ", " + rs("state") + " " + rs("postal_code") + "<BR>" %> 
  <%="Phone: " + rs("phone") + "<BR>"%> 
  <%="Fax: " + rs("fax") + "<BR>"%>
  </FONT></TD>
  <TD>&nbsp;&nbsp;</TD>
  <TD VALIGN="TOP"><FONT SIZE=-1><% if len(rs("inquiry")) > 0 then %> <%=SpacesToBR(rs("inquiry"))%><BR>
  <% end if %> 
  <% if rs("comment_length") > 1 then %>
    <B>Comments:</B><BR>
    <%=Replace(rs("extra_comments"),newline,"<BR>")%> 
  <% end if %>
  </FONT></TD></TR>
  <TR>
  <TD COLSPAN="2" ALIGN="CENTER"><HR WIDTH=150><B><FONT SIZE=-1><A HREF="lead_detail.asp?lead_id=<%=nstr(rs("lead_id"))%>">Current Status</A></FONT></B></TD>
  <TD>&nbsp;</TD>
  <TD>&nbsp;</TD></TR>
  <TR>
  <TD COLSPAN="4" HEIGHT="20">&nbsp;</TD></TR>
<% 
    rs.MoveNext 
  loop 
  rs.Close
%>
  </TABLE>
<%
end if 
%>
</BODY>
</HTML>
