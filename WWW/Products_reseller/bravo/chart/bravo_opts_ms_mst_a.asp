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
		<TD>&nbsp;<IMG SRC="../images/bravo_options.GIF" WIDTH="387" HEIGHT="128" ALIGN="BOTTOM" BORDER="0" NATURALSIZEFLAG="3"><BR>
			<BR>
			
			<TABLE BORDER="0" CELLPADDING="2" CELLSPACING="4" WIDTH="497">
				<TR BGCOLOR="#000000">
					<TD COLSPAN="3" BGCOLOR="#FFFFFF"><FONT COLOR="#000000"><B>Bravo MS &amp; MS-T</B></FONT></TD>
				</TR>
				<TR BGCOLOR="#000000">
					<TH WIDTH="57%" HEIGHT="16" BGCOLOR="#FBF1F0">
						<P ALIGN="LEFT"><FONT COLOR="#000000">Option</FONT>
					</TH>
					<TH HEIGHT="16" BGCOLOR="#790F00"><FONT COLOR="#FFFFFF">Part Number</FONT></TH>
					<TH HEIGHT="16" BGCOLOR="#790F00"><FONT COLOR="#FFFFFF">
					<% if empcheck = 0 then %>

					<%=PriceLevelName%>

					<% elseif empcheck = 1 then %>

					<%= "Pricing"%>

					<% end if %>
					</FONT></TH>
				</TR>
				<TR>
					<TD HEIGHT="16" BGCOLOR="#FBF1F0"><FONT SIZE="2">System Part Numbers (50xxxx)</FONT></TD>
					<TD HEIGHT="16" COLSPAN="2" BGCOLOR="#FFF7EF"><FONT SIZE="2">3043, 1954,&nbsp;1952,&nbsp;1951, 1972, 1956, 1955</FONT></TD>
				</TR>
				<TR BGCOLOR="#FFCC00">
					<TD COLSPAN="3" BGCOLOR="#790F00">&nbsp;&nbsp;<FONT COLOR="#FFFFFF">&nbsp;&nbsp;&nbsp;<B>Memory Expansion</B></FONT></TD>
				</TR>
				<TR>
					<TD HEIGHT="20" BGCOLOR="#FBF1F0"><FONT SIZE="2">8 MB (2 x 4 MB) EDO RAM 60ns</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFF7EF"><FONT SIZE="2">503008-001</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFF7EF"><FONT SIZE="2"><%call showprice("503008-001", empcheck) %></FONT></TD>
				</TR>
				<TR BGCOLOR="#C0C0C0">
					<TD HEIGHT="20" BGCOLOR="#FBF1F0"><FONT SIZE="2">16 MB (2 x 8 MB) EDO RAM 60ns</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFF7EF"><FONT SIZE="2">503008-002</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFF7EF"><FONT SIZE="2"><%call showprice("503008-002", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD HEIGHT="20" BGCOLOR="#FBF1F0"><FONT SIZE="2">32 MB (2 x 16 MB) EDO RAM 60ns</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFF7EF"><FONT SIZE="2">503008-003</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFF7EF"><FONT SIZE="2"><%call showprice("503008-003", empcheck) %></FONT></TD>
				</TR>
				<TR BGCOLOR="#C0C0C0">
					<TD HEIGHT="20" BGCOLOR="#FBF1F0"><FONT SIZE="2">64 MB (2 x 32 MB) EDO RAM 60ns</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFF7EF"><FONT SIZE="2">503008-004</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFF7EF"><FONT SIZE="2"><%call showprice("503008-004", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD COLSPAN="3" BGCOLOR="#FBF1F0">
						<P ALIGN="CENTER"><FONT SIZE="2"><I>Note: Intel&reg; Pentium&reg; processor systems must be upgraded in pairs.</I></FONT>
					</TD>
				</TR>
				<TR BGCOLOR="#FFCC00">
					<TD COLSPAN="3" BGCOLOR="#790F00">&nbsp;&nbsp;&nbsp;<FONT COLOR="#FFFFFF">&nbsp;&nbsp;<B>Cache Modules</B></FONT></TD>
				</TR>
				<TR BGCOLOR="#C0C0C0">
					<TD WIDTH="57%" HEIGHT="32" BGCOLOR="#FBF1F0"><FONT SIZE="2">Bravo MS 512 KB<BR>
						Pipeline Burst Upgrade</FONT></TD>
					<TD HEIGHT="32" BGCOLOR="#FFF7EF"><FONT SIZE="2">503011-001</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFF7EF"><FONT SIZE="2"><%call showprice("503011-001", empcheck) %></FONT></TD>
				</TR>
				<TR BGCOLOR="#FFCC00">
					<TD COLSPAN="3" BGCOLOR="#790F00">&nbsp;&nbsp;&nbsp;&nbsp;<FONT COLOR="#FFFFFF">&nbsp;<B>Graphics Memory</B></FONT></TD>
				</TR>
				<TR>
					<TD HEIGHT="20" BGCOLOR="#FBF1F0"><FONT SIZE="2">Bravo MS 1 MB SGRAM Upgrade</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFF7EF"><FONT SIZE="2">503010-001</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFF7EF"><FONT SIZE="2"><%call showprice("503010-001", empcheck) %></FONT></TD>
				</TR>
				<TR BGCOLOR="#FFCC00">
					<TD COLSPAN="3" BGCOLOR="#790F00">&nbsp;&nbsp;<FONT COLOR="#FFFFFF">&nbsp;&nbsp;&nbsp;<B>Mass Storage Devices</B></FONT></TD>
				</TR>
				<TR BGCOLOR="#C0C0C0">
					<TD HEIGHT="20" BGCOLOR="#FBF1F0"><FONT SIZE="2">2.0 GB E-IDE Hard Drive</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFF7EF"><FONT SIZE="2">501661-011</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFF7EF"><FONT SIZE="2"><%call showprice("501661-011", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD HEIGHT="20" BGCOLOR="#FBF1F0"><FONT SIZE="2">2.5 GB E-IDE Hard Drive</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFF7EF"><FONT SIZE="2">501661-012</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFF7EF"><FONT SIZE="2"><%call showprice("501661-012", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD HEIGHT="20" BGCOLOR="#FBF1F0"><FONT SIZE="2">1.2 GB E-IDE Hard Drive (4/97) *</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFF7EF"><FONT SIZE="2">501661-009</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFF7EF"><FONT SIZE="2"><%call showprice("501661-009", empcheck) %></FONT></TD>
				</TR>
				<TR BGCOLOR="#C0C0C0">
					<TD WIDTH="57%" HEIGHT="20" BGCOLOR="#FBF1F0"><FONT SIZE="2">1.6 GB E-IDE Hard Drive (4/97) *</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFF7EF"><FONT SIZE="2">501661-010</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFF7EF"><FONT SIZE="2"><%call showprice("501661-010", empcheck) %></FONT></TD>
				</TR>
				<TR BGCOLOR="#FFCC00">
					<TD COLSPAN="3" BGCOLOR="#790F00">&nbsp;&nbsp;&nbsp;&nbsp;<FONT COLOR="#FFFFFF">&nbsp;<B>Network Interface Cards</B></FONT></TD>
				</TR>
				<TR BGCOLOR="#C0C0C0">
					<TD HEIGHT="20" BGCOLOR="#FBF1F0"><FONT SIZE="2">Intel EtherExpress™ PRO 10/100B</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFF7EF"><FONT SIZE="2">503074-001</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFF7EF"><FONT SIZE="2"><%call showprice("503074-001", empcheck) %></FONT></TD>
				</TR>
				<TR BGCOLOR="#FFCC00">
					<TD COLSPAN="3" BGCOLOR="#790F00"><FONT COLOR="#FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<B>Audio/Multimedia</B></FONT></TD>
				</TR>
				<TR BGCOLOR="#C0C0C0">
					<TD HEIGHT="20" BGCOLOR="#FBF1F0"><FONT SIZE="2">16X Maximum CD-ROM Drive</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFF7EF"><FONT SIZE="2">503112-003</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFF7EF"><FONT SIZE="2"><%call showprice("503112-003", empcheck) %></FONT></TD>
				</TR>
				<TR BGCOLOR="#C0C0C0">
					<TD BGCOLOR="#FBF1F0"><FONT SIZE="2">External Speakers</FONT></TD>
					<TD BGCOLOR="#FFF7EF"><FONT SIZE="2">503068-001</FONT></TD>
					<TD HEIGHT="20" BGCOLOR="#FFF7EF"><FONT SIZE="2"><%call showprice("503068-001", empcheck) %></FONT></TD>
				</TR>
			</TABLE>
		</TD>
	</TR>
</TABLE>
</P>

<P>&nbsp;


</BODY>

</HTML>