<!--#include file="../../../ovation.inc"--> 

<%
set conn = NewConnection()
set rs = conn.Execute("SELECT * FROM contact INNER JOIN location ON location.location_id=contact.location_id INNER JOIN company ON company.company_id=location.company_id WHERE contact.contact_id=" + session("contact_id"))
%>

<HTML>
  <<BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">
<% if Request("good") = "1" then %>
    <DD><B>Thank you!</B> We appreciate your input.
<% else %>
    <DD>Please take a few moments to update your address and contact information so that
    we may better serve you.<P>
<% end if %>
    
    <FORM METHOD=post ACTION="send_profile.asp">
    
      <DD><TABLE BORDER=0>
        <TR BGCOLOR=#000000>
          <TD COLSPAN=2><FONT FACE="Arial" COLOR=#FFFFFF>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>1) Your Company's Mailing Address</B></FONT></TD>
        </TR>
        <TR>
          <TD ALIGN=RIGHT>Company Name&nbsp;&nbsp;</TD>
          <TD><INPUT TYPE=text NAME="location_name" VALUE="<%=nstr(rs("location_name"))%>" SIZE=50 MAXLENGTH=250></TD>
        </TR>
        <TR>
          <TD ALIGN=RIGHT>DBA&nbsp;&nbsp;</TD>
          <TD><INPUT TYPE=text NAME="dba" VALUE="<%=nstr(rs("dba"))%>" SIZE=50 MAXLENGTH=250></TD>
        </TR>
        <TR>
          <TD ALIGN=RIGHT>Address&nbsp;&nbsp;</TD>
          <TD><INPUT TYPE=text NAME="addr1" VALUE="<%=nstr(rs("addr1"))%>" SIZE=50 MAXLENGTH=80></TD>
        </TR>
        <TR>
          <TD></TD>
          <TD><INPUT TYPE=text NAME="addr2" VALUE="<%=nstr(rs("addr2"))%>" SIZE=50 MAXLENGTH=80></TD>
        </TR>
        <TR>
          <TD ALIGN=RIGHT>City&nbsp;&nbsp;</TD>
          <TD><INPUT TYPE=text NAME="city" VALUE="<%=nstr(rs("city"))%>" SIZE=50 MAXLENGTH=80></TD>
        </TR>
        <TR>
          <TD ALIGN=RIGHT>State&nbsp;&nbsp;</TD>
          <TD><% call StateRegionSelect(rs("state_region_id")) %></TD>
        </TR>
        <TR>
          <TD ALIGN=RIGHT>Postal Code&nbsp;&nbsp;</TD>
          <TD><INPUT TYPE=text NAME="postal_code" VALUE="<%=nstr(rs("postal_code"))%>" SIZE=50 MAXLENGTH=40></TD>
        </TR>
        <TR>
          <TD>&nbsp;</TD>
        </TR>
        <TR BGCOLOR=#000000>
          <TD COLSPAN=2><FONT FACE="Arial" COLOR=#FFFFFF>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>2) Your Company's Contact Information</B></FONT></TD>
        </TR>
        <TR>
          <TD ALIGN=RIGHT>Phone Number&nbsp;&nbsp;</TD>
          <TD><INPUT TYPE=text NAME="main_phone" VALUE="<%=nstr(rs("main_phone"))%>" SIZE=50 MAXLENGTH=20></TD>
        </TR>
        <TR>
          <TD ALIGN=RIGHT>Fax Number&nbsp;&nbsp;</TD>
          <TD><INPUT TYPE=text NAME="main_fax" VALUE="<%=nstr(rs("main_fax"))%>" SIZE=50 MAXLENGTH=20></TD>
        </TR>
        <TR>
          <TD ALIGN=RIGHT>Web Page Address&nbsp;&nbsp;</TD>
          <TD><INPUT TYPE=text NAME="web_page" VALUE="<%=nstr(rs("web_page"))%>" SIZE=50 MAXLENGTH=80></TD>
        </TR>
        <TR>
          <TD>&nbsp;</TD>
        </TR>
        <TR BGCOLOR=#000000>
          <TD COLSPAN=2><FONT FACE="Arial" COLOR=#FFFFFF>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>3) Your Personal Contact Information</B></FONT></TD>
        </TR>
        <TR>
          <TD ALIGN=RIGHT>Salutation&nbsp;&nbsp;</TD>
          <TD><INPUT TYPE=text NAME="salutation" VALUE="<%=nstr(rs("salutation"))%>" SIZE=50 MAXLENGTH=10></TD>
        </TR>
        <TR>
          <TD ALIGN=RIGHT>First Name&nbsp;&nbsp;</TD>
          <TD><INPUT TYPE=text NAME="first_name" VALUE="<%=nstr(rs("first_name"))%>" SIZE=50 MAXLENGTH=80></TD>
        </TR>
        <TR>
          <TD ALIGN=RIGHT>Middle Initial&nbsp;&nbsp;</TD>
          <TD><INPUT TYPE=text NAME="middle_initial" VALUE="<%=nstr(rs("middle_initial"))%>" SIZE=50 MAXLENGTH=5></TD>
        </TR>
        <TR>
          <TD ALIGN=RIGHT>Last Name&nbsp;&nbsp;</TD>
          <TD><INPUT TYPE=text NAME="last_name" VALUE="<%=nstr(rs("last_name"))%>" SIZE=50 MAXLENGTH=80></TD>
        </TR>
        <TR>
          <TD ALIGN=RIGHT>Job Title&nbsp;&nbsp;</TD>
          <TD><INPUT TYPE=text NAME="title" VALUE="<%=nstr(rs("title"))%>" SIZE=50 MAXLENGTH=50></TD>
        </TR>
        <TR>
          <TD ALIGN=RIGHT>Direct Phone Number&nbsp;&nbsp;</TD>
          <TD><INPUT TYPE=text NAME="direct_phone" VALUE="<%=nstr(rs("direct_phone"))%>" SIZE=50 MAXLENGTH=20></TD>
        </TR>
        <TR>
          <TD ALIGN=RIGHT>Direct Fax Number&nbsp;&nbsp;</TD>
          <TD><INPUT TYPE=text NAME="direct_fax" VALUE="<%=nstr(rs("direct_fax"))%>" SIZE=50 MAXLENGTH=20></TD>
        </TR>
        <TR>
          <TD ALIGN=RIGHT>Email Address&nbsp;&nbsp;</TD>
          <TD><INPUT TYPE=text NAME="email_addr" VALUE="<%=nstr(rs("email_addr"))%>" SIZE=50 MAXLENGTH=40></TD>
        </TR>
        <TR>
          <TD>&nbsp;</TD>
        </TR>
        <TR BGCOLOR=#000000>
          <TD COLSPAN=2><FONT FACE="Arial" COLOR=#FFFFFF>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>4) (information only) Your AST Reseller Information</B></FONT></TD>
        </TR>
<% if len(trim(rs("reg_no") + rs("reg_ext"))) > 0 then %>
        <TR>
          <TD ALIGN=RIGHT>Reseller Registration Number&nbsp;&nbsp;</TD>
          <TD><% 
            if len(trim(rs("reg_ext"))) > 0 then
              Response.Write(trim(rs("reg_no")) + "-" + trim(rs("reg_ext")))
            else
              Response.Write(trim(rs("reg_no")))
            end if
          %></TD>
        </TR>
<% end if %>
<% if len(trim(rs("asc_no"))) > 0 then %>
        <TR>
          <TD ALIGN=RIGHT>ASC Number&nbsp;&nbsp;</TD>
          <TD><%=nstr(rs("asc_no"))%></TD>
        </TR>
<% end if %>
<% if len(trim(rs("assc_no"))) > 0 then %>
        <TR>
          <TD ALIGN=RIGHT>ASSC Number&nbsp;&nbsp;</TD>
          <TD><%=nstr(rs("assc_no"))%></TD>
        </TR>
<% end if %>
<% if len(trim(rs("cust_no"))) > 0 then %>
        <TR>
          <TD ALIGN=RIGHT>Customer Number&nbsp;&nbsp;</TD>
          <TD><%=nstr(rs("cust_no"))%></TD>
        </TR>
<% end if %>
        <TR>
          <TD>&nbsp;</TD>
        </TR>
        <TR BGCOLOR=#000000>
          <TD COLSPAN=2><FONT FACE="Arial" COLOR=#FFFFFF>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>5) Update this information</B></FONT></TD>
        </TR>
        <TR>
          <TD COLSPAN=2 ALIGN=right>
            <INPUT TYPE=submit VALUE="Update">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <INPUT TYPE=reset VALUE="Reset">
          </TD>
        </TR>
      </TABLE>
      
<%
rs.Close

%>
    </FORM>
    
    <BR><BR>

    <P>
    <HR NOSHADE>
    <FONT SIZE=2>Copyright &copy; 1997, AST Research, Inc.</FONT>
  </BODY>
</HTML>

