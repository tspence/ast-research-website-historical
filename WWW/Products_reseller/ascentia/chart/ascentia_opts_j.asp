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
					<TD ALIGN="LEFT" COLSPAN="3" BGCOLOR="#FFFFFF"><FONT COLOR="#000000"><B>Ascentia J&nbsp;</B></FONT><FONT COLOR="#333333"><B>&nbsp;</B></FONT></TD>
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
					<TD ALIGN="LEFT" COLSPAN="3" BGCOLOR="#CBAE0E">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>Memory Expansion</B></TD>
				</TR>
				<TR>
					<TD HEIGHT="20" BGCOLOR="#E1FAE1"><FONT SIZE="2">8 MB Module</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2">501984-001</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("501984-001", empcheck) %></FONT></TD>
				</TR>
				<TR BGCOLOR="#C0C0C0">
					<TD HEIGHT="20" BGCOLOR="#E1FAE1"><FONT SIZE="2">16 MB Module</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2">501985-001</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("501985-001", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD HEIGHT="20" BGCOLOR="#E1FAE1"><FONT SIZE="2">32 MB Module</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2">501986-001</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("501986-001", empcheck) %></FONT></TD>
				</TR>
				<TR BGCOLOR="#FFCC00">
					<TD ALIGN="LEFT" COLSPAN="3" BGCOLOR="#CBAE0E">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>Mass Storage</B></TD>
				</TR>
				<TR>
					<TD HEIGHT="20" BGCOLOR="#E1FAE1"><FONT SIZE="2">1.35 GB HDD Upgrade</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2">503097-001</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503097-001", empcheck) %></FONT></TD>
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
					<TD HEIGHT="20" BGCOLOR="#E1FAE1"><FONT SIZE="2">28.8 kbps Data/Fax Modem (Cellular Ready)</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2">501913-001</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("501913-001", empcheck) %></FONT></TD>
				</TR>
				<TR BGCOLOR="#FFCC00">
					<TD ALIGN="LEFT" COLSPAN="3" BGCOLOR="#CBAE0E">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>Accessories</B></TD>
				</TR>
				<TR BGCOLOR="#C0C0C0">
					<TD HEIGHT="20" BGCOLOR="#E1FAE1"><FONT SIZE="2">Primary Lithium Ion Battery Pack **</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2">501983-001</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("501983-001", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD HEIGHT="20" BGCOLOR="#E1FAE1"><FONT SIZE="2">NiMH Battery Pack (J20 only)</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2">501983-002</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("501983-002", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD HEIGHT="20" BGCOLOR="#E1FAE1"><FONT SIZE="2">Battery Cradle (NiMH &amp; LiION)</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2">501991-002</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("501991-002", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD HEIGHT="20" BGCOLOR="#E1FAE1"><FONT SIZE="2">AC Adapter</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2">501988-001</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("501988-001", empcheck) %></FONT></TD>
				</TR>
				<TR BGCOLOR="#C0C0C0">
					<TD HEIGHT="20" BGCOLOR="#E1FAE1"><FONT SIZE="2">Auto Adapter</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2">501987-001</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("501987-001", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD HEIGHT="20" BGCOLOR="#E1FAE1"><FONT SIZE="2">Port Replicator</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2">501990-001</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("501990-001", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD HEIGHT="20" BGCOLOR="#E1FAE1"><FONT SIZE="2">Desktop Infrared Adapter</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2">501748-001</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("501748-001", empcheck) %></FONT></TD>
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
					<TD HEIGHT="20" BGCOLOR="#E1FAE1"><FONT SIZE="2">Kensington Security Cable Lock</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2">500994-001</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("500994-001", empcheck) %></FONT></TD>
				</TR>
				<TR BGCOLOR="#C0C0C0">
					<TD HEIGHT="20" BGCOLOR="#E1FAE1"><FONT SIZE="2">Custom Leather Carrying Case (8/97) *</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2">501587-001</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("501587-001", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD HEIGHT="40" BGCOLOR="#E1FAE1"><FONT SIZE="2">Travel Kit: Auto Adapter, Lithium Ion Battery Pack<BR>
						and Battery Cradle/Charger (8/97) *</FONT></TD>
					<TD HEIGHT="40" BGCOLOR="#FFFEE8"><FONT SIZE="2">501992-001</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("501992-001", empcheck) %></FONT></TD>
				</TR>
			</TABLE>

		</TD>
	</TR>
</TABLE>
</P>

<P>&nbsp;


</BODY>

</HTML>