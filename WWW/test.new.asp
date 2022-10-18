<%

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


<% if LatinAmerica = 1 then Response.Write("Latin America!") else Response.Write("America.") end if %>