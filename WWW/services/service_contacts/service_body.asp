<!--#include file="../../../basic.inc"--> 

<HTML>
  <BODY BGCOLOR="#FFFFFF">
    <CENTER><TABLE WIDTH=90%><TR><TD>
<%

set conn = NewCAM()
set rs = conn.Execute("sp_List_Contacts " + session("account_id") + ",'Y'")
do while not rs.EOF

  if color = "F8F0D0" then
    color = "E0E0FF"
  else
    color = "F8F0D0"
  end if

%>
    <BR>
    <CENTER><I><B><%=rs("name")%></B></I><BR>
      <TABLE CELLSPACING=0 BORDER=0 CELLPADDING=0 BGCOLOR=F0F0F0>
        <TR>
          <TD WIDTH=15 BGCOLOR=004070>&nbsp;</TD>
          <TD WIDTH=200 VALIGN=CENTER>&nbsp;&nbsp;<IMG SRC="images/card.gif"></TD>
          <TD WIDTH=200 VALIGN=CENTER>
            <BR>
            <B><A HREF="contact.asp?accid=<%=accid%>&contid=<%=nstr(rs("contact_id"))%>"><%=rs("first_name") + " " + rs("last_name")%></A></B><BR>
            <%=rs("title")%><BR>
            <%=rs("direct_phone")%><BR>
            <FONT FACE="Arial" SIZE=2><BR>
            <%=Replace(rs("addr"),chr(10),"<BR>")%><BR>
            <%=rs("direct_phone")%><BR>
            Fax: <%=rs("direct_fax")%><BR>
            Internet: <A HREF="mailto:<%=rs("email_addr")%>"><%=rs("email_addr")%></A></FONT><BR>
            &nbsp;<BR>
          </TD>
        </TR>
      </TABLE>
    </CENTER>
    <BR>
<%  
  rs.MoveNext
loop
rs.Close
%>
    </TD></TR></TABLE></CENTER>
    
  </BODY>
</HTML>