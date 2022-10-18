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
<%

if session("java") = "no" and Request.Cookies("java") <> "no" then
  text = text + "java=no;"
end if
if session("java") = "yes" and Request.Cookies("java") <> "yes" then
  text = text + "java=yes;"
end if

%>

<% if len(text) > 0 then %>
  <SCRIPT>
     document.cookie = "<%=text%>expires=Wednesday, 09-Nov-99 23:12:40 GMT"
  </SCRIPT>
<% end if %>

<HTML>
  <HEAD>
    <TITLE>AST Research, Inc. - Corporate Web Site</TITLE>
  </HEAD>
  
  <FRAMESET COLS="130,100*" frameborder="NO" framespacing="0" BORDER="0">
    <FRAME SRC="control_panel.asp" NAME="control_panel" MARGINWIDTH=0 MARGINHEIGHT=0 SCROLLING=NO NORESIZE>
<% if LatinAmerica = 1 then %>
    <FRAME SRC="welcome/spanish.html" NAME="body" MARGINWIDTH=0 MARGINHEIGHT=0 SCROLLING=AUTO>
<% else %>
    <FRAME SRC="welcome/main.html" NAME="body" MARGINWIDTH=0 MARGINHEIGHT=0 SCROLLING=AUTO>
<% end if %>
  
    <NOFRAMES>
      <BODY>
        Viewing this page requires a browser capable of displaying frames.
      </BODY>
    </NOFRAMES>
  </FRAMESET>
</HTML>
