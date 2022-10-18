<!--#include file="../cpanel.inc"-->
<%

session("java") = "no"

%>

<HTML>

  <BODY BGCOLOR=#000000 BACKGROUND="images/control_back.GIF">

<% if InOtherSite then %>
    <A HREF="logout.asp" TARGET="_top"><IMG SRC="cpanel/logo.gif" WIDTH="122" HEIGHT="55" NATURALSIZEFLAG="0" ALIGN="TOP" BORDER="0"></A><BR>
<% else %>
    <A HREF="welcome/main.html" TARGET="body"><IMG SRC="cpanel/logo.gif" WIDTH="122" HEIGHT="55" NATURALSIZEFLAG="0" ALIGN="TOP" BORDER="0"></A><BR>
<% end if %>
    
    <% if session("java") = "no" then %>
      <% call image_panel() %>
    <% else %>
      <APPLET CODE="cpanel.class" CODEBASE="./" NAME="cpanel" WIDTH="121" HEIGHT="350" ALIGN="TOP">
        <PARAM NAME="icon_url" VALUE="welcome/main.html">
        <% call applet() %>
      </APPLET>
    <% end if %>
    
  </BODY>
</HTML>

