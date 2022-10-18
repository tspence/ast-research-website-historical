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
  
    <FORM ACTION="send.asp" METHOD="post">
    
      
    <TABLE WIDTH=500><TR><TD>
    
<% if Request("ee") = "1" then %>
  <!-- start navigation -->
  <img src="/images/misc/transpixel.gif" height=1 width=1 alt="" border=0 hspace=0 vspace=0><p>
  <table cellspacing=1 cellpadding=0 border=0 width=475 height=57>
  <tr>
  	<td rowspan=2 width=9 height=37 valign=top><img src="http://www.inc.com/custom_publishing/ast/images/tab_left.gif" width=9 height=37 alt="lefthand tab" border=0 align=top></td>
  	<td width=75 height=18 valign=top><a href="http://www.inc.com/custom_publishing/ast/index.html"><img src="http://www.inc.com/custom_publishing/ast/images/0_eedge_home.gif" width=75 height=18 alt="EEdge Home" border=0 align=top></a></td>
  	<td width=75 height=18 valign=top><a href="http://www.inc.com/custom_publishing/ast/programs.html"><img src="http://www.inc.com/custom_publishing/ast/images/0_eedge_programs.gif" width=75 height=18 alt="EEdge Programs" border=0 align=top></a></td>
  	<td width=75 height=18 valign=top><a href="http://www.inc.com/custom_publishing/ast/histories.html"><img src="http://www.inc.com/custom_publishing/ast/images/0_case_histories.gif" width=75 height=18 alt="Case Histories" border=0 align=top></a></td>
  	<td width=75 height=18 valign=top><a href="http://www.inc.com/custom_publishing/ast/technologies.html"><img src="http://www.inc.com/custom_publishing/ast/images/0_new_technologies.gif" width=75 height=18 alt="New Technologies" border=0 align=top></a></td>
  	<td width=75 height=18 valign=top><a href="http://www.inc.com/bbs/list/51"><img src="http://www.inc.com/custom_publishing/ast/images/1_qa.gif" width=75 height=18 alt="AST Q&A" border=0 align=top></a></td>
  	<td width=75 height=18 valign=top><a href="http://www.ast.com" target="top"><img src="http://www.inc.com/custom_publishing/ast/images/0_ast_home.gif" width=75 height=18 alt="AST Home" border=0 align=top></a></td>
  	<td rowspan=2 width=9 height=37 valign=top><img src="http://www.inc.com/custom_publishing/ast/images/tab_right.gif" width=9 height=37 alt="righthand tab" border=0 align=top></td>
  </tr>
  <tr>
  	<td width=75 height=18 valign=top><a href="http://www.inc.com/custom_publishing/ast/weekly.html"><img src="http://www.inc.com/custom_publishing/ast/images/0_weekly_features.gif" width=75 height=18 alt="Weekly Features" border=0 align=top></a></td>
  	<td width=75 height=18 valign=top><a href="http://www.inc.com/custom_publishing/ast/cgi/module_inc.cgi"><img src="http://www.inc.com/custom_publishing/ast/images/0_articles_inc.gif" width=75 height=18 alt="Articles from Inc." border=0 align=top></a></td>
  	<td width=75 height=18 valign=top><a href="http://www.inc.com/custom_publishing/ast/cgi/module_301.cgi?collection=marketing"><img src="http://www.inc.com/custom_publishing/ast/images/0_marketing_ideas.gif" width=75 height=18 alt="Marketing Ideas" border=0 align=top></a></td>
  	<td width=75 height=18 valign=top><a href="http://www.inc.com/custom_publishing/ast/cgi/module_301.cgi?collection=management"><img src="http://www.inc.com/custom_publishing/ast/images/0_management_ideas.gif" width=75 height=18 alt="Management Ideas" border=0 align=top></a></td>
  	<td width=75 height=18 valign=top><a href="http://www.inc.com/custom_publishing/ast/tools.html"><img src="http://www.inc.com/custom_publishing/ast/images/0_online_tools.gif" width=75 height=18 alt="Online Tools" border=0 align=top></a></td>
  	<td width=75 height=18 valign=top><a href="http://www.inc.com/custom_publishing/ast/cgi/module_web.cgi"><img src="http://www.inc.com/custom_publishing/ast/images/0_online_resources.gif" width=75 height=18 alt="Online Resources" border=0 align=top></a></td>
  </tr>
  <tr>
  	<td colspan=8 width=475 height=20 valign=bottom><img src="http://www.inc.com/custom_publishing/ast/images/header_qanda.gif" width=475 height=20 alt="AST Q&A" border=0 align=bottom></td>
  </table>
  <P>
  <!-- end navigation -->
<% end if %>

      <B><FONT SIZE=4><EM>Talk Back to AST!</EM></B></FONT>

    <BR><BR>
    <STRONG>AST is the responsive computer company.</STRONG>  We know that communication is the most
    important aspect of a strong relationship between a manufacturer and its customers.  <EM>AST is 
    dedicated to surpassing your expectations</EM> - we want to know
    how we can make our computers more useful to <I>you.</I><P>
    
    If you have a technical question about AST computers, or you are searching for
    service & support information, please review our 
    <A HREF="../../support/main.html" TARGET=body>on-line support pages</A>,
    where 24-hour comprehensive technical support is only a mouse-click away.  You can also submit
    your technical questions directly to our service representatives through our 
    <A HREF="../../support/web_forum/main.html" TARGET=body>E-Mail support page</A>.<P>
    
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
        <TD ALIGN=right><STRONG>Company</STRONG>&nbsp;&nbsp;</TD>
        <TD><INPUT NAME="company" SIZE=50 VALUE="<%=session("name")%>"></TD>
      </TR>
<%   else %>
      <TR>
        <TD ALIGN=right><STRONG>Company</STRONG>&nbsp;&nbsp;</TD>
        <TD><INPUT NAME="company" SIZE=50 VALUE="<%=Get("location_name")%>"></TD>
      </TR>
<%   end if %>
<% end if %>
<% if session("source") = "ovation" or session("source") = "interchange" then %>
      <TR>
        <TD ALIGN=right><STRONG>Reseller&nbsp;&nbsp;<BR>Registration&nbsp;&nbsp;<BR>Number</STRONG>&nbsp;&nbsp;</TD>
        <TD VALIGN=top><INPUT NAME="regno" SIZE=10 VALUE="<% if len(Get("reg_ext")) > 0 then Response.Write(Get("reg_no") + "-" + Get("reg_ext")) else Response.Write(Get("reg_no")) end if %>"></TD>
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