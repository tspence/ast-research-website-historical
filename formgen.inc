<%
'''****************************************
'''*           FormGen.inc                *
'''****************************************
'''eD97

'''****************************************
'''DECLARE VARIABLES/SET CONNECTION       *
'''****************************************

dim FormConn
set formconn = server.createobject("ADODB.Connection")
formconn.Open "interchange","wwwuser","***REDACTED***"


'''****************************************
'''DB FUNCTIONS                           *
'''****************************************

function GetFieldID (ID)
  set GetFieldID = formconn.Execute("frm_Get_Field_ID " + cstr(ID))
end function


'''****************************************
'''FORM OBJECTS                           *
'''****************************************

Sub FormTxtInput(ID, size, value, maxlength)
%>
<INPUT TYPE="<%=GetFieldID(ID)("fldmas_type")%>" NAME="<%=GetFieldID(ID)("fldmas_name")%>" SIZE="<%=size%>" VALUE="<%=value%>" MAXLENGTH="<%=maxlength%>">
<%
end sub

'''****************************************
Sub FormTxtAreaInput(ID, rows, cols, value)
%>
<TEXTAREA NAME="<%=GetFieldID(ID)("fldmas_name")%>" ROWS="<%=rows%>" COLS="<%=cols%>"><%=value%></TEXTAREA>
<%
end sub

'''****************************************
Sub FormSelInput(ID, size, formID)
%>
<SELECT NAME="<%=GetFieldID(ID)("fldmas_name")%>" SIZE=<%=size%>>
<%
set rs2 = FormConn.Execute("Select * from form_selector_data where frmmas_ID =" & formID & "AND fldmas_ID =" & ID)
do while not rs2.eof
%>
<OPTION><%=rs2("frmsel_value")%>
<%
rs2.movenext
loop
%>
</SELECT>
<%
end sub


'''****************************************
Sub FormRdoInput(ID, usedefault, value, checked)
%>
<INPUT TYPE="<%=GetFieldID(ID)("fldmas_type")%>" NAME="<%=GetFieldID(ID)("fldmas_name")%>" <%If usedefault = "Yes" then%>VALUE="<%=GetFieldID(ID)("fldmas_default")%>"<%else%>VALUE="<%=value%>"<%end if%><%if checked = "Yes" then%> CHECKED<%end if%>>
<%
end sub

'''****************************************
Sub FormChkInput(ID, usedefault, value)
%>
<INPUT TYPE="<%=GetFieldID(ID)("fldmas_type")%>" NAME="<%=GetFieldID(ID)("fldmas_name")%>" <%If usedefault = "Yes" then%>VALUE="<%=GetFieldID(ID)("fldmas_default")%>"<%else%>VALUE="<%=value%>"<%end if%>>
<%
end sub

'''****************************************
Sub FormHdnInput(ID, value)
%>
<INPUT TYPE="<%=GetFieldID(ID)("fldmas_type")%>" NAME="<%=GetFieldID(ID)("fldmas_name")%>" VALUE="<%=value%>">
<%
end sub

'''****************************************
Sub FormButton(ID)
%>
<INPUT TYPE="<%=GetFieldID(ID)("fldmas_type")%>" NAME="<%=GetFieldID(ID)("fldmas_name")%>" VALUE="<%=GetFieldID(ID)("fldmas_default")%>">
<%
end sub


'''****************************************
'''JAVASCRIPT VALIDATION BUILDER
'''****************************************

Sub scriptstart()
%>
<SCRIPT LANGUAGE="javascript">

function validate(theform)
	{
<%
end sub

'''****************************************

Sub scriptstop()
%>
	}
</SCRIPT>
<%
end sub

'''****************************************
'''FOR TEXT OBJECTS

Sub required(ID, value)		
%>
         if (theform.<%=GetFieldID(ID)("fldmas_name")%>.value == "")
            {
            alert("You must enter a valid value in the \"<%=value%>\" field.");
            return (false);
            }

<%
end sub

'''****************************************
'''FOR SELECT BOXES

Sub requiredselect(ID, value)
%>
	if (theform.<%=GetFieldID(ID)("fldmas_name")%>.selectedIndex == 0)
            {
            alert("Please select one of the \"<%=value%>\" options.");
            return (false);
            }
<%
end sub

'''****************************************
'''FOR CHECK BOXES

Sub requiredcheck(ID, value)
%>
	if (theform.<%=GetFieldID(ID)("fldmas_name")%>.checked == 0)
            {
            alert("Please check one of the \"<%=value%>\" options.");
            return (false);
            }
<%
end sub
%>