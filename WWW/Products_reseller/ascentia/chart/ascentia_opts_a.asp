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
					<TD ALIGN="LEFT" VALIGN="TOP" COLSPAN="2" BGCOLOR="#FFFFFF"><FONT COLOR="#000000"><B>Ascentia A</B></FONT></TD>
				</TR>
				<TR BGCOLOR="#000000">
					<TH HEIGHT="20" BGCOLOR="#E1FAE1">
						<P ALIGN="LEFT"><FONT COLOR="#000000">Option</FONT>
					</TH>
					<TH HEIGHT="20" BGCOLOR="#CBAE0E"><FONT COLOR="#000000">Part Number</FONT></TH>
					
					<TH HEIGHT="20" BGCOLOR="#CBAE0E"><FONT COLOR="#000000">

					<% if empcheck = 0 then %>

					<%=PriceLevelName%>

					<% elseif empcheck = 1 then %>

					<%= "Pricing"%>

					<% end if %>
					
					</FONT></TH>
				</TR>
				<TR BGCOLOR="#FFCC00">
					<TD ALIGN="LEFT" COLSPAN="3" BGCOLOR="#CBAE0E">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>Memory Expansion</B></TD>
				</TR>
				<TR BGCOLOR="#C0C0C0">
					<TD HEIGHT="20" BGCOLOR="#E1FAE1"><FONT SIZE="2">8 MB Module</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2">503185-001</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503185-001", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD HEIGHT="20" BGCOLOR="#E1FAE1"><FONT SIZE="2">16 MB Module</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2">503185-002</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503185-002", empcheck) %></FONT></TD>
				</TR>
				<TR BGCOLOR="#C0C0C0">
					<TD HEIGHT="20" BGCOLOR="#E1FAE1"><FONT SIZE="2">32 MB Module</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2">503185-003</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503185-003", empcheck) %></FONT></TD>
				</TR>
				<TR BGCOLOR="#FFCC00">
					<TD ALIGN="LEFT" COLSPAN="3" BGCOLOR="#CBAE0E">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>PCMCIA Enhancement Cards</B></TD>
				</TR>
				<TR BGCOLOR="#C0C0C0">
					<TD HEIGHT="20" BGCOLOR="#E1FAE1"><FONT SIZE="2">3COM Ethernet 10base T/2 Combo Card</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2">503440-001</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503440-001", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD HEIGHT="22" BGCOLOR="#E1FAE1"><FONT SIZE="2">28.8 kbps Data/Fax Modem (Cellular Ready)</FONT></TD>
					<TD HEIGHT="22" BGCOLOR="#FFFEE8"><FONT SIZE="2">501913-001</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("501913-001", empcheck) %></FONT></TD>
				</TR>
				<TR BGCOLOR="#FFCC00">
					<TD ALIGN="LEFT" COLSPAN="3" BGCOLOR="#CBAE0E">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>Accessories</B></TD>
				</TR>
				<TR>
					<TD HEIGHT="20" BGCOLOR="#E1FAE1"><FONT SIZE="2">NiMH Battery Pack</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2">503182-002</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503182-002", empcheck) %></FONT></TD>
				</TR>
				<TR BGCOLOR="#C0C0C0">
					<TD HEIGHT="20" BGCOLOR="#E1FAE1"><FONT SIZE="2">External Charger Cradle</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2">503183-001</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503183-001", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD HEIGHT="20" BGCOLOR="#E1FAE1"><FONT SIZE="2">AC Adapter</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2">503170-001</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503170-001", empcheck) %></FONT></TD>
				</TR>
				<TR BGCOLOR="#C0C0C0">
					<TD HEIGHT="20" BGCOLOR="#E1FAE1"><FONT SIZE="2">Auto Adapter</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2">503184-001</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503184-001", empcheck) %></FONT></TD>
				</TR>
				<TR BGCOLOR="#C0C0C0">
					<TD HEIGHT="20" BGCOLOR="#E1FAE1"><FONT SIZE="2">Mini Docker</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2">503187-001</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503187-001", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD HEIGHT="20" BGCOLOR="#E1FAE1"><FONT SIZE="2">External Floppy Adapter</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2">503186-001</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503186-001", empcheck) %></FONT></TD>
				</TR>
				<TR BGCOLOR="#C0C0C0">
					<TD HEIGHT="20" BGCOLOR="#E1FAE1"><FONT SIZE="2">Monitor Stand</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2">503442-001</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503442-001", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD HEIGHT="20" BGCOLOR="#E1FAE1"><FONT SIZE="2">External Keyboard (Pearl White-Windows&reg; 95)</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2">501911-001</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("501911-001", empcheck) %></FONT></TD>
				</TR>
				<TR BGCOLOR="#C0C0C0">
					<TD HEIGHT="20" BGCOLOR="#E1FAE1"><FONT SIZE="2">Numeric Keypad</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2">503096-001</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503096-001", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD HEIGHT="20" BGCOLOR="#E1FAE1"><FONT SIZE="2">Nylon Carrying Case PORT</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2">503423-001</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503423-001", empcheck) %></FONT></TD>
				</TR>
				<TR BGCOLOR="#C0C0C0">
					<TD HEIGHT="20" BGCOLOR="#E1FAE1"><FONT SIZE="2">Custom Leather Carrying Case (8/97) *</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2">501587-001</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("501587-001", empcheck) %></FONT></TD>
				</TR>
			</TABLE>

		</TD>
	</TR>
</TABLE>
</P>

<P>&nbsp;


</BODY>

</HTML>