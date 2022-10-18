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
			<TABLE BORDER="0" CELLPADDING="2" CELLSPACING="4" WIDTH="561">
				<TR BGCOLOR="#000000">
					<TD ALIGN="LEFT" COLSPAN="3" BGCOLOR="#FFFFFF"><FONT COLOR="#000000"><B>Ascentia 800N &amp; 810N</B></FONT></TD>
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

					<% end if %><%=PriceLevelName%>

					</FONT></TH>
				</TR>
				<TR BGCOLOR="#FFCC00">
					<TD ALIGN="LEFT" COLSPAN="3" BGCOLOR="#CBAE0E">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>Accessories</B></TD>
				</TR>
				<TR BGCOLOR="#C0C0C0">
					<TD HEIGHT="16" BGCOLOR="#E1FAE1"><FONT SIZE="2">Monitor Stand</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2">503442-001</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503442-001", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD HEIGHT="16" BGCOLOR="#E1FAE1"><FONT SIZE="2">External Keyboard (Pearl White-Windows&reg; 95)</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2">501911-001</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("501911-001", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD HEIGHT="16" BGCOLOR="#E1FAE1"><FONT SIZE="2">Nylon Carrying Case PORT</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2">503423-001</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503423-001", empcheck) %></FONT></TD>
				</TR>
				<TR BGCOLOR="#C0C0C0">
					<TD HEIGHT="16" BGCOLOR="#E1FAE1"><FONT SIZE="2">Custom Leather Carrying Case (8/97) *</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2">501587-001</FONT></TD>
					<TD HEIGHT="16" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("501587-001", empcheck) %></FONT></TD>
				</TR>
			</TABLE>

		</TD>
	</TR>
</TABLE>
</P>

<P>&nbsp;


</BODY>

</HTML>