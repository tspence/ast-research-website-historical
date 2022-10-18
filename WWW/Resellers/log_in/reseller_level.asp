<%@ LANGUAGE="VBSCRIPT" %>

<HTML>
<HEAD>
<TITLE>Get Reseller Level</TITLE>
</HEAD>
<BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">

  <FORM NAME="reseller_level" METHOD=POST ACTION="set_reseller_level.asp">

    <CENTER>
      
      <BR><BR>
      
      <TABLE BGCOLOR=#BFBFBF BORDERCOLORLIGHT=#DFDFDF BORDERCOLORDARK=#9F9F9F BORDER=1>
        <TR>
          <TD BGCOLOR=#00007F HEIGHT=20 VALIGN=middle>
            <IMG SRC="images/pass_ico.gif" BORDER=0 ALIGN=top>
            <FONT SIZE=1 FACE="MS sans serif" COLOR=#FFFFFF><B>Select desired reseller level:</B></FONT>
          </TD>
        </TR>
        <TR>
          <TD>
            <TABLE BGCOLOR=#BFBFBF BORDER=0 CELLSPACING=0>
              <TR>
                <TD>&nbsp;&nbsp;</TD>
                <TD></TD>
                <TD></TD>
                <TD>&nbsp;&nbsp;</TD>
              </TR>
              <TR>
                <TD></TD>
                <TD ALIGN=right><FONT SIZE=2>Reseller Level:&nbsp;&nbsp;</TD>
                <TD><SELECT NAME="rlevel" SIZE=1>
					<OPTION VALUE="G" SELECTED>Gold
					<OPTION VALUE="S">Silver
					<OPTION VALUE="B">Bronze
					</SELECT>
				</TD>
                <TD></TD>
              </TR>
			  <TR>
                <TD>&nbsp;&nbsp;</TD>
                <TD></TD>
                <TD></TD>
                <TD>&nbsp;&nbsp;</TD>
              </TR>
            </TABLE>
          </TD>
        </TR>
        <TR>
          <TD ALIGN=right VALIGN=middle HEIGHT=35>
            <INPUT TYPE=submit VALUE="      OK      ">&nbsp;&nbsp;&nbsp;<INPUT TYPE=reset VALUE="  Reset  ">
          </TD>
        </TR>
      </TABLE>
    </CENTER>
              
    </FORM>

</BODY>
</HTML>



<%

if len(trim(session("name"))) <= 1 then 
  session.timeout=60
  session("source") = "ast"
  session("contact_id") = "21915"
  session("location_id") = "14354"
  session("company_id") = "14679"
  session("name") = Request("name")
end if

%>

