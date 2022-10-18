<PRE>
<%

for each item in request.form
  Response.Write(item + "=" + Request(item) + chr(13) + chr(10))
next
%>
</PRE>