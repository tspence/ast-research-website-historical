<!--#include file="../../../basic.inc"-->
<%

server.scripttimeout=60

'******************************************************************************
'*
'* This function renames the file directory
'*
'******************************************************************************
function PR(byval filename)
  do while instr(filename,"\")
    filename = mid(filename,instr(filename,"\") + 1)
  loop
  
  PR = "releases/" + filename
end function

%>