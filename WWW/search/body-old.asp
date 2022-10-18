<!--- Template: stndsrcp.hts --->
<HTML>
  <<BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">
    <TABLE BORDER=0 WIDTH=570>
      <TR>
        <TD>
          <FORM METHOD="GET" ACTION="/search97cgi/s97_cgi.exe">
            <INPUT TYPE=HIDDEN NAME="Action" VALUE="Search">
            <INPUT TYPE=HIDDEN NAME="AdminImagePath" VALUE="">
            <INPUT TYPE=HIDDEN NAME="ServerKey" VALUE="Primary">
            <INPUT TYPE=HIDDEN NAME="ResultTemplate" VALUE="ast_results.hts">

			<% if session("source") = "ovation" and session("ovation_level") = "G" then %>

           <INPUT TYPE=HIDDEN NAME="collection" VALUE="reseller_g">

			<% elseif session("source") = "ovation" and session("ovation_level") = "S" then %>

           <INPUT TYPE=HIDDEN NAME="collection" VALUE="reseller_s">

			<% elseif session("source") = "ovation" and session("ovation_level") = "B" then %>

           <INPUT TYPE=HIDDEN NAME="collection" VALUE="reseller_b">

			<% end if %>

            <BR>
            <TABLE BORDER=0>
              <TR>
                <TD COLSPAN=2><b>Enter words or phrases, separated by commas:</b></TD>
              </TR>
              <TR>
                <TD COLSPAN=2><TEXTAREA NAME="QueryText" ROWS=2 COLS=50></TEXTAREA></TD>
              </TR>
              <TR>
                <TD><INPUT TYPE=submit NAME="SEARCH-97" VALUE="Search"></TD>
                <TD ALIGN=RIGHT><INPUT TYPE="reset" VALUE=" Clear "></TD>
              </TR>
            </TABLE>
          </FORM>
        </TD>   
      </TR>
    </TABLE>
  </BODY>
</HTML>
