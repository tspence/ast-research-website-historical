<!--#include file="astwares.inc"-->
<%

for each item in Request.Form
  Response.Write(item + "=" + Request(item) + "<BR>") 
next
%>
<BR><BR><BR><BR>
<%

for i = lbound(awCat) to ubound(awCat)
  Response.Write(awCat(i) + " " + awProd(i) + " " + awDesc(i) + "<BR>")
next
%>