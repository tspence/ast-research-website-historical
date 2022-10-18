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
	<TITLE>Untitled Document</TITLE>
</HEAD>

<BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">
<P>
<TABLE BORDER="0" CELLPADDING="0" CELLSPACING="0" WIDTH="570">
	<TR>
		<TD><IMG SRC="../images/premiumks_banner.GIF" WIDTH="387" HEIGHT="128" ALIGN="BOTTOM" BORDER="0"><BR>
			<BR>
			
			<TABLE BORDER="0" CELLPADDING="2" CELLSPACING="4" WIDTH="497" BGCOLOR="#FFFFFF">
				<TR>
					<TD COLSPAN="3" BGCOLOR="#CD7407"><FONT COLOR="#FFFFFF"><B>Premium KS</B></FONT></TD>
				</TR>
				<TR>
					<TD HEIGHT="16" VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2"><B>Product Description</B></FONT></TD>
					<TD HEIGHT="16" ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2"><B>Part Number</B></FONT></TD>
					<TD HEIGHT="16" ALIGN="LEFT" VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2"><B>
					
					<% if empcheck = 0 then %>

					<%=PriceLevelName%>

					<% elseif empcheck = 1 then %>

					<%= "Pricing"%>

					<% end if %>
					
					</B></FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#CD7407"><FONT SIZE="2" COLOR="#FFFFFF"><B>ECC DIMM Memory Upgrade Kits</B></FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">128MB Kit - Four 32MB ECC SIMMs</FONT></TD>
					<TD VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2">503491-001</FONT></TD>
					<TD VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503491-001", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP" BGCOLOR="#FFF7EF"><FONT SIZE="2">256MB Kit - Four 64MB ECC SIMMs</FONT></TD>
					<TD VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2">503491-002</FONT></TD>
					<TD VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503491-002", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">512MB Kit - Four 128MB ECC SIMMs</FONT></TD>
					<TD VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2">503491-003</FONT></TD>
					<TD VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503491-003", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP" BGCOLOR="#FFF7EF"><FONT SIZE="2">512MB Kit - Four 128MB DIMMs require<BR>4GB memory board option for over 2GB<BR>memory board</FONT></TD>
					<TD VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2">503491-004</FONT></TD>
					<TD VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503491-004", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP" BGCOLOR="#FFF7EF"><FONT SIZE="2">Memory Card 4GB capacity - DIMM.<BR>
						Includes 512MB Kit - Four 128MB DIMMs<BR>for over 2GB memory capacity</FONT></TD>
					<TD VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2">503492-001</FONT></TD>
					<TD VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503492-001", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#CD7407"><FONT SIZE="2" COLOR="#FFFFFF"><B>200 MHz Intel&reg; Pentium&reg; Pro Processor Upgrade Kits</B></FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">Dual Pentium&reg; Pro CPU upgrade with<BR>512KB L2 cache</FONT></TD>
					<TD VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2">503493-001</FONT></TD>
					<TD VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503493-001", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">Dual Pentium&reg; Pro CPU upgrade with<BR>1024KB L2 cache</FONT></TD>
					<TD VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2">503494-001</FONT></TD>
					<TD VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503494-001", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#CD7407"><FONT SIZE="2" COLOR="#FFFFFF"><B>Miscellaneous Options</B></FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">Additional Chassis Power Supply</FONT></TD>
					<TD VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2">503495-001</FONT></TD>
					<TD VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503495-001", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP" COLSPAN="3" BGCOLOR="#FFF7EF"><FONT SIZE="2">Ultra Wide SCSI-3 7200 RPM HD Kits</FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP" BGCOLOR="#FFF7EF">
						<UL>
							<LI><FONT SIZE="2">4GB HD (uses tray in system)</FONT>
						</UL>
					</TD>
					<TD VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2">503483-001</FONT></TD>
					<TD VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503483-001", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP" BGCOLOR="#FFF7EF">
						<UL>
							<LI><FONT SIZE="2">9GB HD (uses tray in system)</FONT>
						</UL>
					</TD>
					<TD VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2">503483-002</FONT></TD>
					<TD VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503483-002", empcheck) %></FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP" BGCOLOR="#FFF5EC"><FONT SIZE="2">Spare HD Tray</FONT></TD>
					<TD VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2">503488-001</FONT></TD>
					<TD VALIGN="TOP" BGCOLOR="#FFFEE8"><FONT SIZE="2"><%call showprice("503488-001", empcheck) %></FONT></TD>
				</TR>
			</TABLE>
		</TD>
	</TR>
</TABLE>



</BODY>

</HTML>