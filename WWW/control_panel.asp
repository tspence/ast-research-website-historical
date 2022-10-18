<%

if session("latin") = "1" then
  LatinAmerica = 1
end if
if left(Request.ServerVariables("SERVER_NAME"),9) = "www.latin" then
  LatinAmerica = 1
end if
if left(Request.ServerVariables("SERVER_NAME"),6) = "www.la" then
  LatinAmerica = 1
end if
if left(Request.ServerVariables("SERVER_NAME"),5) = "latin" then
  LatinAmerica = 1
end if
if left(Request.ServerVariables("SERVER_NAME"),2) = "la" then
  LatinAmerica = 1
end if
if left(Request.ServerVariables("SERVER_NAME"),13) = "165.164.20.21" then
  LatinAmerica = 1
end if

%>
<!--#include file="../cpanel.inc"-->
<%

if Request.Cookies("java") = "no" then
  session("java") = "no"
end if

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
<% if LatinAmerica = 1 then %>
        <PARAM NAME="icon_url" VALUE="welcome/spanish.html">
<% else %>
        <PARAM NAME="icon_url" VALUE="welcome/main.html">
<% end if %>
        <% call applet() %>
      </APPLET>
    <% end if %>
    
  </BODY>
</HTML>

