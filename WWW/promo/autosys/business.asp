<!--#include file="../lead.inc"-->

<HTML>
  <HEAD>
    <TITLE>Sales Help Form</TITLE>
  </HEAD>
  <BODY BGCOLOR="#FFFFFF">
    <CENTER><IMG SRC="sales.gif" ALT="AST Sales Help Mailback"></CENTER>

    <P>
    <HR>
    <P>

      
      <BR><BR>
      
      The fields in italics must be filled in to continue.
    </CENTER>

    <P>
    <HR>
    <P>
    
    <FORM METHOD="post" ACTION="http://interchange.ast.com/extranet/apps/leads/lead/send.asp">
    
      <INPUT TYPE=hidden NAME=type VALUE=1>
      
      <DL><DL><DD><TABLE>  
        <TR>
          <TD ALIGN=right><I>First Name:&nbsp;&nbsp;</I></TD>
          <TD><INPUT TYPE="Text" NAME="FirstName" SIZE=50 MAXLENGTH=80></TD>
        </TR>
        <TR>
          <TD ALIGN=right><I>Last Name:&nbsp;&nbsp;</I></TD>
          <TD><INPUT TYPE="Text" NAME="LastName" SIZE=50 MAXLENGTH=80></TD>
        </TR>
        <TR>
          <TD ALIGN=right>Title:&nbsp;&nbsp;</TD>
          <TD><INPUT TYPE="Text" NAME="Title" SIZE=50 MAXLENGTH=80></TD>
        </TR>
        <TR>
          <TD ALIGN=right>Company:&nbsp;&nbsp;</TD>
          <TD><INPUT TYPE="Text" NAME="Company" SIZE=50 MAXLENGTH=80></TD>
        </TR>
        <TR>  
          <TD ALIGN=right><I>Street Address1:&nbsp;&nbsp;</I></TD>
          <TD><INPUT TYPE="Text" NAME="Address1" SIZE=50 MAXLENGTH=80></TD>
        </TR>
        <TR>
          <TD ALIGN=right>Street Address2:&nbsp;&nbsp;</TD>
          <TD><INPUT TYPE="Text" NAME="Address2" SIZE=50 MAXLENGTH=80></TD>
        </TR>
        <TR>
          <TD ALIGN=right><I>City:&nbsp;&nbsp;</I></TD>
          <TD><INPUT TYPE="Text" NAME="City" SIZE=50 MAXLENGTH=80></TD>
        </TR>
        <TR>
          <TD ALIGN=right><I>State/Province:&nbsp;&nbsp;</I></TD>
          <TD><INPUT TYPE="Text" NAME="State" SIZE=50 MAXLENGTH=80></TD>
        </TR>
        <TR>
          <TD ALIGN=right><I>Postal/Zip Code:&nbsp;&nbsp;</I></TD>
          <TD><INPUT TYPE="Text" NAME="ZipCode" SIZE=20 MAXLENGTH=40></TD>
        </TR>
        <TR>
          <TD ALIGN=right><I>Country:&nbsp;&nbsp;</I></TD>
          <TD><SELECT NAME="Country">
<%
set conn = NewConnection()
set rs = conn.Execute("SELECT * FROM country")
do while not rs.EOF
  if rs("country_id") = 174 then
    Response.Write("<OPTION VALUE=" + nstr(rs("country_id")) + " SELECTED> " + rs("name"))
  else
    Response.Write("<OPTION VALUE=" + nstr(rs("country_id")) + "> " + rs("name"))
  end if
  rs.MoveNext
loop
rs.Close
%>
          </SELECT></TD>
        </TR>
<% if Request("source") = "cir" then %>
        <TR>
          <TD ALIGN=right>E-mail:&nbsp;&nbsp;</TD>
          <TD><INPUT TYPE="Text" NAME="Email" SIZE=50 MAXLENGTH=80><INPUT TYPE=hidden NAME=source VALUE=cir></TD>
        </TR>
<% else %>
        <TR>
          <TD ALIGN=right><I>E-mail:&nbsp;&nbsp;</I></TD>
          <TD><INPUT TYPE="Text" NAME="Email" SIZE=50 MAXLENGTH=80></TD>
        </TR>
<% end if %>
        <TR>  
          <TD ALIGN=right><I>Telephone:&nbsp;&nbsp;</I></TD>
          <TD><INPUT TYPE="Text" NAME="Phone" SIZE=15 MAXLENGTH=20></TD>
        </TR>
        <TR>
          <TD ALIGN=right>Fax Number:&nbsp;&nbsp;</TD>
          <TD><INPUT TYPE="Text" NAME="Fax" SIZE=15 MAXLENGTH=20></TD>
        </TR>
      </TABLE></DL></DL>
      
      
      <DL>
      <DD><INPUT TYPE=checkbox NAME=bravo> <FONT SIZE=4><B>Yes!</B></FONT><BR> I'm interested in AST's Bravo line of 
      business desktop computers.  I'd like information on a Bravo with the following 
      features:<P>
      </DL>

      <CENTER><TABLE CELLSPACING=3 CELLPADDING=3 WIDTH=95%>
        <TR>
          <TD ALIGN=RIGHT>Processor&nbsp;&nbsp;</TD>
          <TD><SELECT NAME="BrvProcessor">
            <OPTION VALUE="">Select:
            <OPTION>Pentium
            <OPTION>Pentium Pro
            <OPTION>Pentium II
            <OPTION>Other
          </SELECT></TD>
          <TD ROWSPAN=6 ALIGN=right><IMG SRC="../images/bravo.gif"><BR><IMG SRC="../images/ms5200-s.gif"></TD>
        </TR>
        <TR>
          <TD ALIGN=RIGHT>Speed&nbsp;&nbsp;</TD>
          <TD><SELECT NAME="BrvSpeed">
            <OPTION VALUE="">Select: <OPTION>75
            <OPTION>90
            <OPTION>100
            <OPTION>120
            <OPTION>133
            <OPTION>150
            <OPTION>166
            <OPTION>180
            <OPTION>200
            <OPTION>233
            <OPTION>Other
          </SELECT></TD>
        </TR>
        <TR>
          <TD ALIGN=RIGHT>Memory&nbsp;&nbsp;</TD>
          <TD><SELECT NAME="BrvMemory">
            <OPTION VALUE="">Select:
            <OPTION>16 MB
            <OPTION>24 MB
            <OPTION>32 MB
            <OPTION>64 MB
            <OPTION>128 MB
            <OPTION>Other
          </SELECT></TD>
        </TR>
        <TR>
          <TD ALIGN=RIGHT>Operating System&nbsp;&nbsp;</TD>
          <TD><SELECT NAME="BrvOS"> 
            <OPTION VALUE="">Select:
            <OPTION>Windows 3.1
            <OPTION>Windows 95
            <OPTION>Windows NT
            <OPTION>Other
          </SELECT></TD>
        </TR>
        <TR>
          <TD ALIGN=RIGHT>CD-ROM Drive&nbsp;&nbsp;</TD>
          <TD><SELECT NAME="BrvCDROM">
            <OPTION VALUE="">Select: 
            <OPTION VALUE="With CDROM">Yes
            <OPTION VALUE="(No CDROM)">No
          </SELECT></TD>
        </TR>
        <TR>
          <TD ALIGN=RIGHT>Monitor&nbsp;&nbsp;</TD>
          <TD><SELECT NAME="BrvMonitor">
            <OPTION VALUE="">Select:
            <OPTION>None
            <OPTION>14"
            <OPTION>15"
            <OPTION>17"
            <OPTION>21"
            <OPTION>Other
          </SELECT></TD>
        </TR>
      </TABLE></CENTER><P>
      
      <DL>
      <DD><INPUT TYPE=checkbox NAME=ascentia> <FONT SIZE=4><B>Yes!</B></FONT><BR>I'm interested in AST's Ascentia line of 
      notebook computers.  I'd like information on an Ascentia with the following 
      features:<P>
      </DL>

      <CENTER><TABLE CELLSPACING=3 CELLPADDING=3 WIDTH=95%>
        <TR>
          <TD ALIGN=RIGHT>Processor&nbsp;&nbsp;</TD>
          <TD><SELECT NAME="AscProcessor">
            <OPTION VALUE="">Select:
            <OPTION>Pentium
            <OPTION>Other
          </SELECT></TD>
          <TD ROWSPAN=6 ALIGN=right><IMG SRC="../images/ascentia.gif"><BR><IMG SRC="../images/asc-p.gif"></TD>
        </TR>
        <TR>
          <TD ALIGN=RIGHT>Speed&nbsp;&nbsp;</TD>
          <TD><SELECT NAME="AscSpeed">
            <OPTION VALUE="">Select: 
            <OPTION>75
            <OPTION>90
            <OPTION>100
            <OPTION>120
            <OPTION>133
            <OPTION>150
            <OPTION>150 MMX
            <OPTION>166
            <OPTION>166 MMX
            <OPTION>Other
          </SELECT></TD>
        </TR>
        <TR>
          <TD ALIGN=RIGHT>Memory&nbsp;&nbsp;</TD>
          <TD><SELECT NAME="AscMemory">
            <OPTION VALUE="">Select:
            <OPTION>16 MB
            <OPTION>24 MB
            <OPTION>32 MB
            <OPTION>64 MB
            <OPTION>Other
          </SELECT></TD>
        </TR>
        <TR>
          <TD ALIGN=RIGHT>Operating System&nbsp;&nbsp;</TD>
          <TD><SELECT NAME="AscOS"> 
            <OPTION VALUE="">Select:
            <OPTION>Windows 3.1
            <OPTION>Windows 95
            <OPTION>Windows NT
            <OPTION>Other
          </SELECT></TD>
        </TR>
        <TR>
          <TD ALIGN=RIGHT>CD-ROM Drive&nbsp;&nbsp;</TD>
          <TD><SELECT NAME="AscCDROM">
            <OPTION VALUE="">Select: 
            <OPTION VALUE="With CDROM">Yes
            <OPTION VALUE="(No CDROM)">No
          </SELECT></TD>
        </TR>
        <TR>
          <TD ALIGN=RIGHT>Display&nbsp;&nbsp;</TD>
          <TD><SELECT NAME="AscDisplay">
            <OPTION VALUE="">Select:
            <OPTION>10.4"
            <OPTION>11.3"
            <OPTION>12.1"
            <OPTION>Other
          </SELECT></TD>
        </TR>
      </TABLE></CENTER><P>
      
      <DL>
      <DD><INPUT TYPE=checkbox NAME=manhattan> <FONT SIZE=4><B>Yes!</B></FONT><BR>I'm interested in AST's Manhattan line of 
      server systems.  I'd like information on an Manhattan with the following 
      features:<P>
      </DL>

      <CENTER><TABLE CELLSPACING=3 CELLPADDING=3 WIDTH=95%>
        <TR>
          <TD ALIGN=RIGHT>Processor&nbsp;&nbsp;</TD>
          <TD><SELECT NAME="ManProcessor">
            <OPTION VALUE="">Select:
            <OPTION>Pentium Pro
            <OPTION>Dual Pentium Pro
            <OPTION>Other
          </SELECT></TD>
          <TD ROWSPAN=6 ALIGN=right><IMG SRC="../images/manhattan.gif"><BR><IMG SRC="../images/man-s.gif"></TD>
        </TR>
        <TR>
          <TD ALIGN=RIGHT>Speed&nbsp;&nbsp;</TD>
          <TD><SELECT NAME="ManSpeed">
            <OPTION VALUE="">Select:
            <OPTION>200Mhz 256kb Cache
            <OPTION>200Mhz 512kb Cache
            <OPTION>Other
          </SELECT></TD>
        </TR>
        <TR>
          <TD ALIGN=RIGHT>Memory&nbsp;&nbsp;</TD>
          <TD><SELECT NAME="ManMemory">
            <OPTION VALUE="">Select:
            <OPTION>32 MB
            <OPTION>48 MB
            <OPTION>64 MB
            <OPTION>80 MB
            <OPTION>96 MB
            <OPTION>128 MB
            <OPTION>256 MB
            <OPTION>Other
          </SELECT></TD>
        </TR>
        <TR>
          <TD ALIGN=RIGHT>Operating System&nbsp;&nbsp;</TD>
          <TD><SELECT NAME="ManOS"> 
            <OPTION VALUE="">Select:
            <OPTION>Windows NT Server
            <OPTION>Netware 3.12
            <OPTION>Netware 4.11
            <OPTION>OS/2
            <OPTION>Sun Solaris
            <OPTION>Unix (SCO, Linux)
            <OPTION>Other
          </SELECT></TD>
        </TR>
        <TR>
          <TD ALIGN=RIGHT>Hard Disk Array&nbsp;&nbsp;</TD>
          <TD><SELECT NAME="ManCDROM">
            <OPTION VALUE="">Select: 
            <OPTION VALUE="2GB">2GB
            <OPTION VALUE="4GB">4GB
            <OPTION VALUE="9GB">9GB
            <OPTION VALUE="2x2GB">2x2GB RAID
            <OPTION VALUE="2x4GB">2x4GB RAID
            <OPTION VALUE="2x9GB">2x9GB RAID
            <OPTION VALUE="3x2GB">3x2GB RAID
            <OPTION VALUE="3x4GB">3x4GB RAID
            <OPTION VALUE="3x9GB">3x9GB RAID
            <OPTION>Other
          </SELECT></TD>
        </TR>
        <TR>
          <TD ALIGN=RIGHT>Display&nbsp;&nbsp;</TD>
          <TD><SELECT NAME="ManDisplay">
            <OPTION VALUE="">Select:
            <OPTION>None
            <OPTION>14"
            <OPTION>15"
            <OPTION>17"
            <OPTION>21"
            <OPTION>Other
          </SELECT></TD>
        </TR>
      </TABLE></CENTER><P>
      

      <P>
      <HR WIDTH=40%>
      <P>
    
      So that we may better match you with a reseller that can serve your needs, please 
      fill out this brief questionnaire.<P>
      
<%
      call BuildPage("L1")
%>

      <P>
      <B>11)</B> AST Computer will introduce new products throughout the year. May we send you
      an e-mail message inviting you to visit the AST Web Site for the latest product
      announcement?<br>   
      <INPUT TYPE="Radio" NAME="Announcement" VALUE=Y CHECKED>Yes<br>
      <INPUT TYPE="Radio" NAME="Announcement" VALUE=N>No<br>
    
      <P>
  
      AST realizes it is important to maintain the confidentiality of e-mail addresses
      that our customers provide. AST does not redistribute e-mail mailing lists.
  
      <P>
      

<% if Request("source") = "cir" then %>
      <HR>
      <H3>Customer Information Reps</H3>
      
      <DL>
        <DD>This customer requests the following packages:
        <DD><INPUT TYPE=checkbox NAME=packages VALUE="ascentia"> Notebook Family (Ascentia)
        <DD><INPUT TYPE=checkbox NAME=packages VALUE="bravo"> Desktop Family (Bravo)
        <DD><INPUT TYPE=checkbox NAME=packages VALUE="manhattan">  Server Family (Manhattan)
        <DD><INPUT TYPE=checkbox NAME=packages VALUE="general"> Product Catalog (All products)
      </DL>
<% end if %>

<INPUT TYPE=hidden NAME=locked VALUE=2672>

      <CENTER>
      <TABLE>
         <TR>
         <TD><INPUT TYPE="Submit" VALUE="Submit"></TD>
         <TD><INPUT TYPE="Reset" VALUE="Clear and Start Again"></TD>
         </TR>
      </TABLE>
      </CENTER>
   </FORM>
   <P>
   <CENTER><H3>Thank you for contacting AST Sales!</H3>
   
   <I>For further information, call AST Research, Inc. at 1-800-876-4278;<BR>
   international inquiries call (+1) (714) 727-9292.</I>
   
   </CENTER>
   
   <HR>
   <P>
   <A HREF="toc.htm">Table of Contents</A><BR>
   <A HREF="ast.htm">Return to AST Home Page</A>
   <P>
  
   &copy;1997 AST Corporate Sales - <A HREF="mailto:sales.corporate@ast.com">sales.corporate@ast.com</A>
   <P>
  </BODY>
</HTML>
