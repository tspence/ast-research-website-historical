<!--#include file="../../../basic.inc"--> 
<%
if session("source") = "ovation" or session("source") = "interchange" then
  set conn = NewConnection()
  set rs = conn.Execute("sp_Get_Contact " + session("contact_id"))
end if

function get(byval field)
  if IsEmpty(rs) then
    get = ""
  else
    get = rs(field)
  end if
end function

%>

<HTML>
  <BODY BGCOLOR="#FFFFFF">

    <BR>
    <BR>
  
    <FORM ACTION="send.asp" METHOD="post">
    
      
    <LEFT><TABLE WIDTH=500><TR><TD>
    
    <LEFT>
      <B><FONT SIZE=4><EM>Talk Back to AST!</EM></B></FONT>
    </LEFT>
    <BR><BR>
    <STRONG>AST is the responsive computer company.</STRONG>  We know that communication is the most
    important aspect of a strong relationship between a manufacturer and its customers.  <EM>AST is 
    dedicated to surpassing your expectations</EM> - we want to know
    how we can make our computers more useful to <I>you.</I><P>
    
    <TABLE BORDER=0 CELLPADDING=3 CELLSPACING=3>
      <TR>
        <TD ALIGN=right><STRONG>Name</STRONG>&nbsp;&nbsp;</TD>
        <TD><INPUT NAME="name" SIZE=50 VALUE="<%=trim(Get("first_name") + " " + Get("last_name"))%>"></TD>
      </TR>
      <TR>
        <TD ALIGN=right><STRONG>Email</STRONG>&nbsp;&nbsp;</TD>
        <TD><INPUT NAME="email" SIZE=50 VALUE="<%=Get("email_addr")%>"></TD>
      </TR>
<% if session("source") = "ast" then %>
        <INPUT TYPE=hidden NAME="company" VALUE="Internal AST Employee #<%=session("acl_badge_num")%>">
<% else %>
<%   if session("source") = "kare" then %>
      <TR>
        <TD ALIGN=right><STRONG>Company Name</STRONG>&nbsp;&nbsp;</TD>
        <TD><INPUT NAME="company" SIZE=50 VALUE="<%=session("name")%>"></TD>
      </TR>
<%   else %>
      <TR>
        <TD ALIGN=right><STRONG>Company Name</STRONG>&nbsp;&nbsp;</TD>
        <TD><INPUT NAME="company" SIZE=50 VALUE="<%=Get("location_name")%>"></TD>
      </TR>
<%   end if %>
<% end if %>
<% if session("source") = "ovation" or session("source") = "interchange" then %>
      <TR>
        <TD ALIGN=right><STRONG>Reseller Registration Number</STRONG>&nbsp;&nbsp;</TD>
        <TD><INPUT NAME="regno" SIZE=10 VALUE="<% if len(Get("reg_ext")) > 0 then Response.Write(Get("reg_no") + "-" + Get("reg_ext")) else Response.Write(Get("reg_no")) end if %>"></TD>
      </TR>
<% end if %>
      <TR>
        <TD COLSPAN=2 ALIGN=center>
          <TEXTAREA COLS=50 ROWS=10 NAME="comment">Type your comment or suggestion here.</TEXTAREA>
          <BR><BR>
          <INPUT TYPE=hidden NAME="isr" VALUE="<%=Get("inside_sales_rep")%>">
          <INPUT TYPE=checkbox CHECKED NAME="Request Reply" VALUE="Yes">&nbsp;&nbsp;Please have an AST representative contact me as soon as possible.
        </TD>
      </TR>
      <TR>
        <TD COLSPAN=2 ALIGN=center>
          <BR><BR>
          <INPUT TYPE=submit NAME="IGNORE" VALUE="Send Feedback">&nbsp;&nbsp;&nbsp;<INPUT TYPE=reset NAME="IGNORE" VALUE="Clear Form">
        </TD>
      </TR>
    </TABLE>
    
    </TD></TR></TABLE></CENTER>

    </FORM>
    
  </BODY>
</HTML>