<HTML>
<HEAD>
<TITLE>New Page</TITLE>
</HEAD>
<BODY>
<% 
request.form = ("choose")
If ("choose") = ("AST") then response.write "I am AST" 
If ("choose") = ("Microsoft")  then response.write "i am microsoft"
If ("choose") = ("Yahoo") then response.write  "i am yahoo"
If ("choose") = ("Omni") then response.write "i am omni"
If ("choose") = ("Webster") then response.write "i am webster"
%>
</BODY>
</HTML>