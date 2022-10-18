<!--#include file="../../../../OVATION.INC"-->

<%

dim empcheck
if session("source") = "ast" then
	empcheck = 1
else
	empcheck = 0
	call GetPriceLevel
end if

%>


<HTML>

<HEAD>
	<META NAME="Author" Content="AST Computer, Inc.">
	<META HTTP-EQUIV="Content-Type" CONTENT="text/html;CHARSET=iso-8859-1">
	<TITLE>untitled</TITLE>
</HEAD>

<BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">
<P>
<TABLE BORDER="0" CELLPADDING="0" CELLSPACING="0" WIDTH="570">
	<TR>
		<TD>
			<P>&nbsp; <IMG SRC="images/ascentia_options.GIF" WIDTH="387" HEIGHT="128" ALIGN="BOTTOM" BORDER="0" NATURALSIZEFLAG="3"></P>
			<P>&nbsp;</P>

			<P>
			<TABLE BORDER="0" CELLPADDING="2" CELLSPACING="4" WIDTH="497">
				<TR BGCOLOR="#000000">
					<TD ALIGN="LEFT" COLSPAN="3" BGCOLOR="#FFFFFF"><FONT COLOR="#000000"><B>Ascentia M</B></FONT></TD>
				</TR>
				<TR BGCOLOR="#000000">
					<TH BGCOLOR="#E1FAE1">
						<P ALIGN="LEFT"><FONT COLOR="#000000">Option</FONT>
					</TH>
					<TH BGCOLOR="#CBAE0E"><FONT COLOR="#000000">Part Number</FONT></TH>
					<TH BGCOLOR="#CBAE0E"><FONT COLOR="#000000">

					<% if empcheck = 0 then %>

					<%=PriceLevelName%>

					<% elseif empcheck = 1 then %>

					<%= "Pricing"%>

					<% end if %>
					
					
					</FONT></TH>
				</TR>
				<TR BGCOLOR="#FFCC00">
					<TD ALIGN="LEFT" COLSPAN="3" BGCOLOR="#CBAE0E"><B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Memory Expansion</B></TD>
				</TR>
				<TR BGCOLOR="#C0C0C0">
					<TD HEIGHT="16" BGCOLOR="#E1FAE1"><FONT SIZE="2">8 MB Module</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2">503185-001</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503185-001", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD HEIGHT="16" BGCOLOR="#E1FAE1"><FONT SIZE="2">16 MB Module</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2">503185-002</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503185-002", empcheck) %></FONT></TD>
				</TR>
				<TR BGCOLOR="#C0C0C0">
					<TD HEIGHT="16" BGCOLOR="#E1FAE1"><FONT SIZE="2">32 MB Module</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2">503185-003</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503185-003", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD HEIGHT="16" BGCOLOR="#E1FAE1"><FONT SIZE="2">64 MB Module</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2">503185-004</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503185-004", empcheck) %></FONT></TD>
				</TR>
				<TR BGCOLOR="#FFCC00">
					<TD ALIGN="LEFT" COLSPAN="3" BGCOLOR="#CBAE0E">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>Mass Storage</B></TD>
				</TR>
				<TR>
					<TD HEIGHT="16" BGCOLOR="#E1FAE1"><FONT SIZE="2">2.0 GB HDD Upgrade</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2">503344-001</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503344-001", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD HEIGHT="16" BGCOLOR="#E1FAE1"><FONT SIZE="2">3.0 GB HDD Upgrade</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2">503344-002</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503344-002", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD HEIGHT="16" BGCOLOR="#E1FAE1"><FONT SIZE="2">4.0 GB HDD Upgrade</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2">503344-003</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503344-003", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD HEIGHT="16" BGCOLOR="#E1FAE1"><FONT SIZE="2">2.0 GB Secondary HDD (SmartBay)</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2">503345-001</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503345-001", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD HEIGHT="16" BGCOLOR="#E1FAE1"><FONT SIZE="2">3.0 GB Secondary HDD (SmartBay)</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2">503345-002</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503345-002", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD HEIGHT="16" BGCOLOR="#E1FAE1"><FONT SIZE="2">4.0 GB Secondary HDD (SmartBay)</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2">503345-003</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503345-003", empcheck) %></FONT></TD>
				</TR>
				<TR BGCOLOR="#FFCC00">
					<TD ALIGN="LEFT" COLSPAN="3" BGCOLOR="#CBAE0E">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>Accessories</B></TD>
				</TR>
				<TR>
					<TD HEIGHT="16" BGCOLOR="#E1FAE1"><FONT SIZE="2">Lithium Ion Battery</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2">503468-001</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503468-001", empcheck) %></FONT></TD>
				</TR>
				<TR BGCOLOR="#C0C0C0">
					<TD HEIGHT="16" BGCOLOR="#E1FAE1"><FONT SIZE="2">External Charger Cradle</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2">503183-001</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503183-001", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD HEIGHT="16" BGCOLOR="#E1FAE1"><FONT SIZE="2">AC Adapter</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2">503341-001</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503341-001", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD HEIGHT="16" BGCOLOR="#E1FAE1"><FONT SIZE="2">Auto/Airline Adapter</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2">503343-001</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503343-001", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD HEIGHT="16" BGCOLOR="#E1FAE1"><FONT SIZE="2">ASC II Docking Station</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2">503471-001</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503471-001", empcheck) %></FONT></TD>
				</TR>
				<TR BGCOLOR="#C0C0C0">
					<TD HEIGHT="16" BGCOLOR="#E1FAE1"><FONT SIZE="2">Mini Docker</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2">503187-001</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503187-001", empcheck) %></FONT></TD>
				</TR>
				<TR BGCOLOR="#C0C0C0">
					<TD HEIGHT="16" BGCOLOR="#E1FAE1"><FONT SIZE="2">Monitor Stand</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2">503442-001</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503442-001", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD HEIGHT="16" BGCOLOR="#E1FAE1"><FONT SIZE="2">External Keyboard (Pearl White-Windows&amp;REG; 95)</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2">501911-001</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("501911-001", empcheck) %></FONT></TD>
				</TR>
				<TR BGCOLOR="#C0C0C0">
					<TD HEIGHT="16" BGCOLOR="#E1FAE1"><FONT SIZE="2">Numeric Keypad</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2">503096-001</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503096-001", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD HEIGHT="16" BGCOLOR="#E1FAE1"><FONT SIZE="2">Nylon Carrying Case PORT</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2">503423-001</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503423-001", empcheck) %></FONT></TD>
				</TR>
			</TABLE>

		</TD>
	</TR>
</TABLE>
</P>

<P>&nbsp;


</BODY>

</HTML>