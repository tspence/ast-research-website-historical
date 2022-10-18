<!--#include file="../../../ovation.inc"--> 

<HTML>
  <BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">
    <FORM METHOD="POST" ACTION="send_page.asp">

    You may use the following fields to revise and otherwise update the profile
    information for the selected company.<P>
    
    <P>
    <HR SIZE=5 WIDTH=20% ALIGN=CENTER>
    <P>

<%

call BuildPage(Request("page"))

%>

    <INPUT TYPE=HIDDEN NAME="locid" Value=<%=Request("location_id")%>>
    <INPUT TYPE=HIDDEN NAME="page" Value=<%=Request("page")%>>

    <CENTER>
      <INPUT TYPE=submit VALUE="Update">
      </FORM>
    </CENTER>

    <HR NOSHADE>
  
    &copy; Copyright 1997 AST Research, Inc.
  </BODY>
</HTML>