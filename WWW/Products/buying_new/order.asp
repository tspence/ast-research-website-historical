<!--#include file="../../../basic.inc"-->
<%

if Request("brand") = "ascentia" then
  fields = "<INPUT TYPE=hidden NAME=""ascentia"" VALUE=""" + Request("model") + ", " + newline + Request("plusmemory") + ", " + newline + Request("plusdisk") + ", " + newline + Request("accessories") + ", " + newline + server.htmlencode(Request("additional")) + """>"
end if
if Request("brand") = "bravo" then
  fields = "<INPUT TYPE=hidden NAME=""bravo"" VALUE=""" + Request("model") + ", " + newline + Request("plusmemory") + ", " + newline + Request("plusdisk") + ", " + newline + Request("plusvideomemory") + ", " + newline + Request("monitor") + ", " + newline + server.htmlencode(Request("additional")) + """>"
end if
if Request("brand") = "premium" then
  fields = "<INPUT TYPE=hidden NAME=""premium"" VALUE=""" + Request("model") + ", " + newline + Request("plussmp") + ", " + newline + Request("plusmemory") + ", " + newline + Request("plusdisk") + ", " + newline + Request("plusdisktray") + ", " + newline + Request("accessory") + ", " + newline + Request("monitor") + ", " + newline + server.htmlencode(Request("additional")) + """>"
end if

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2//EN">
<!--last modified on Wednesday, January 14, 1998 03:31 PM -->
<HTML>

<HEAD>
	<META HTTP-EQUIV="Content-Type" CONTENT="text/html;CHARSET=iso-8859-1">
	<META NAME="Author" Content="AST Computer, Inc.">
	<TITLE>Sales Help Form</TITLE>
</HEAD>

<BODY BGCOLOR="#FFFFFF">

<P>
<TABLE BORDER="0" WIDTH="500">
	<TR>
		<TD>
			<P ALIGN="CENTER"><IMG SRC="../images/products_menu.JPG" WIDTH="365" HEIGHT="218" ALIGN="BOTTOM" ALT="product menu"
			BORDER="0" HSPACE="10" VSPACE="10"><B><I></I></B>
			<P><B><I><BR>
			Thank you</I></B> for your interest in AST Computers. AST partners with a world-wide network of resellers to
			better serve our customers with in-depth technical experience in a wide range of projects.  Please select the
			option below which best describes your computing needs.<BR>
			<BR>
			<A HREF="#Business"><IMG SRC="../../Resellers/register/images/one.GIF" WIDTH="34" HEIGHT="32" ALIGN="MIDDLE"
			ALT="bullet" BORDER="0" HSPACE="10" VSPACE="5">I would like a quote for computers for my business.<BR></A>
			
			<A HREF="#Var"><IMG SRC="../../Resellers/register/images/one.GIF" WIDTH="34" HEIGHT="32" ALIGN="MIDDLE" ALT="bullet"
			BORDER="0" HSPACE="10" VSPACE="5">I am a VAR looking for information on AST products.<BR></A>
			
			<A HREF="#Home"><IMG SRC="../../Resellers/register/images/one.GIF" WIDTH="34" HEIGHT="32" ALIGN="MIDDLE" ALT="bullet"
			BORDER="0" HSPACE="10" VSPACE="5">I am looking for a computer for my home or personal use.<BR></A>
			
			<BR>
			<BR><BR>
			<P ALIGN="CENTER"><IMG SRC="../../images/border_lines_3.GIF" WIDTH="470" HEIGHT="13" ALIGN="BOTTOM" BORDER="0"
			NATURALSIZEFLAG="3"></P>
			<P><INPUT TYPE="HIDDEN" NAME="type" SIZE="-1" VALUE="1"><BR>
			<A NAME="VAR"></A><BR>
<FORM ACTION="send_var.asp" METHOD="POST" ENCTYPE="application/x-www-form-urlencoded">
<%=fields%><INPUT TYPE=hidden NAME="L1-2" VALUE="9">
			<B>I am a VAR looking for information on AST products.</B><BR>
			<I>Please fill out the information below and click &quot;submit&quot;.  You will be put in contact
			with an AST sales representative who can assist you.</I> <P>
			<TABLE BORDER="0" CELLPADDING="0">
				<TR>
					<TD ALIGN="RIGHT">
						<P ALIGN="RIGHT"><I>Your Name:&nbsp;&nbsp;</I>
					</TD>
					<TD><INPUT TYPE="TEXT" NAME="Name" SIZE="50" MAXLENGTH="80"></TD>
				</TR>
				<TR>
					<TD ALIGN="RIGHT">
						<P ALIGN="RIGHT">Company:&nbsp;&nbsp;
					</TD>
					<TD><INPUT TYPE="TEXT" NAME="Company" SIZE="50" MAXLENGTH="80"></TD>
				</TR>
				<TR>
					<TD ALIGN="RIGHT">
						<P ALIGN="RIGHT"><I>Postal/Zip Code:&nbsp;&nbsp;</I>
					</TD>
					<TD><INPUT TYPE="TEXT" NAME="ZipCode" SIZE="20" MAXLENGTH="40"></TD>
				</TR>
				<TR>
					<TD ALIGN="RIGHT">
						<P ALIGN="RIGHT"><I>Country:&nbsp;&nbsp;</I>
					</TD>
					<TD>						<SELECT NAME="Country">
						<OPTION VALUE="1">Afghanistan </OPTION>
						<OPTION VALUE="2"> Albania </OPTION>
						<OPTION VALUE="3"> Algeria </OPTION>
						<OPTION VALUE="4"> Andorra </OPTION>
						<OPTION VALUE="5"> Angola </OPTION>
						<OPTION VALUE="6"> Antigua and Barbados </OPTION>
						<OPTION VALUE="7"> Argentina </OPTION>
						<OPTION VALUE="8"> Armenia </OPTION>
						<OPTION VALUE="9"> Australia </OPTION>
						<OPTION VALUE="10"> Austria </OPTION>
						<OPTION VALUE="11"> Azerbaijan </OPTION>
						<OPTION VALUE="12"> Bahamas </OPTION>
						<OPTION VALUE="13"> Bahrain </OPTION>
						<OPTION VALUE="14"> Bangladesh </OPTION>
						<OPTION VALUE="15"> Barbados </OPTION>
						<OPTION VALUE="16"> Belarus </OPTION>
						<OPTION VALUE="17"> Belgium </OPTION>
						<OPTION VALUE="18"> Belize </OPTION>
						<OPTION VALUE="19"> Benin </OPTION>
						<OPTION VALUE="20"> Bhutan </OPTION>
						<OPTION VALUE="21"> Bolivia </OPTION>
						<OPTION VALUE="22"> Bosnia and Herzegovina </OPTION>
						<OPTION VALUE="23"> Botswana </OPTION>
						<OPTION VALUE="24"> Brazil </OPTION>
						<OPTION VALUE="25"> Brunei Darussalam </OPTION>
						<OPTION VALUE="26"> Bulgaria </OPTION>
						<OPTION VALUE="27"> Burkina Faso </OPTION>
						<OPTION VALUE="28"> Burundi </OPTION>
						<OPTION VALUE="29"> Cambodia </OPTION>
						<OPTION VALUE="30"> Cameroon </OPTION>
						<OPTION VALUE="31"> Canada </OPTION>
						<OPTION VALUE="32"> Cape Verde </OPTION>
						<OPTION VALUE="33"> Central African Republic </OPTION>
						<OPTION VALUE="34"> Chad </OPTION>
						<OPTION VALUE="35"> Chile </OPTION>
						<OPTION VALUE="36"> China, People's Republic of </OPTION>
						<OPTION VALUE="37"> China, Republic of (Taiwan) </OPTION>
						<OPTION VALUE="38"> Colombia </OPTION>
						<OPTION VALUE="39"> Comoros </OPTION>
						<OPTION VALUE="40"> Congo </OPTION>
						<OPTION VALUE="41"> Costa Rica </OPTION>
						<OPTION VALUE="42"> Cted'Ivoire </OPTION>
						<OPTION VALUE="43"> Croatia </OPTION>
						<OPTION VALUE="44"> Cyprus </OPTION>
						<OPTION VALUE="45"> Czech Republic </OPTION>
						<OPTION VALUE="46"> Denmark </OPTION>
						<OPTION VALUE="47"> Djibouti </OPTION>
						<OPTION VALUE="48"> Dominica </OPTION>
						<OPTION VALUE="49"> Dominican Republic </OPTION>
						<OPTION VALUE="50"> Ecuador </OPTION>
						<OPTION VALUE="51"> Egypt </OPTION>
						<OPTION VALUE="52"> El Salvador </OPTION>
						<OPTION VALUE="53"> Equatorial Guinea </OPTION>
						<OPTION VALUE="54"> Eritrea </OPTION>
						<OPTION VALUE="55"> Estonia </OPTION>
						<OPTION VALUE="56"> Ethiopia </OPTION>
						<OPTION VALUE="57"> Fiji </OPTION>
						<OPTION VALUE="58"> Finland </OPTION>
						<OPTION VALUE="59"> France </OPTION>
						<OPTION VALUE="60"> Gabon </OPTION>
						<OPTION VALUE="61"> Gambia </OPTION>
						<OPTION VALUE="62"> Georgia </OPTION>
						<OPTION VALUE="63"> Germany </OPTION>
						<OPTION VALUE="64"> Ghana </OPTION>
						<OPTION VALUE="65"> Greece </OPTION>
						<OPTION VALUE="66"> Grenada </OPTION>
						<OPTION VALUE="67"> Guatemala </OPTION>
						<OPTION VALUE="68"> Guinea </OPTION>
						<OPTION VALUE="69"> Guinea-Bissau </OPTION>
						<OPTION VALUE="70"> Guyana </OPTION>
						<OPTION VALUE="71"> Haiti </OPTION>
						<OPTION VALUE="72"> Honduras </OPTION>
						<OPTION VALUE="73"> Hong Kong, Crown Colony of </OPTION>
						<OPTION VALUE="74"> Hungary </OPTION>
						<OPTION VALUE="75"> Iceland </OPTION>
						<OPTION VALUE="76"> India </OPTION>
						<OPTION VALUE="77"> Indonesia </OPTION>
						<OPTION VALUE="78"> Iran </OPTION>
						<OPTION VALUE="79"> Ireland </OPTION>
						<OPTION VALUE="80"> Israel </OPTION>
						<OPTION VALUE="81"> Italy </OPTION>
						<OPTION VALUE="82"> Jamaica </OPTION>
						<OPTION VALUE="83"> Japan </OPTION>
						<OPTION VALUE="84"> Jordan </OPTION>
						<OPTION VALUE="85"> Kazakhstan </OPTION>
						<OPTION VALUE="86"> Kenya </OPTION>
						<OPTION VALUE="87"> Korea, Republic of (South) </OPTION>
						<OPTION VALUE="88"> Kuwait </OPTION>
						<OPTION VALUE="89"> Kyrgyz Republic </OPTION>
						<OPTION VALUE="90"> Lao People's Democratic Republic </OPTION>
						<OPTION VALUE="91"> Latvia </OPTION>
						<OPTION VALUE="92"> Lebanon </OPTION>
						<OPTION VALUE="93"> Lesotho </OPTION>
						<OPTION VALUE="94"> Liberia </OPTION>
						<OPTION VALUE="95"> Liechtenstein </OPTION>
						<OPTION VALUE="96"> Lithuania </OPTION>
						<OPTION VALUE="97"> Luxembourg </OPTION>
						<OPTION VALUE="98"> Macedonia, Former Yugoslav Republic of </OPTION>
						<OPTION VALUE="99"> Madagascar </OPTION>
						<OPTION VALUE="100"> Malawi </OPTION>
						<OPTION VALUE="101"> Malaysia </OPTION>
						<OPTION VALUE="102"> Maldives </OPTION>
						<OPTION VALUE="103"> Mali </OPTION>
						<OPTION VALUE="104"> Malta </OPTION>
						<OPTION VALUE="105"> Marshall Islands </OPTION>
						<OPTION VALUE="106"> Mauritania </OPTION>
						<OPTION VALUE="107"> Mauritius </OPTION>
						<OPTION VALUE="108"> Mexico </OPTION>
						<OPTION VALUE="109"> Micronesia, Federated States of </OPTION>
						<OPTION VALUE="110"> Moldova, Republic of </OPTION>
						<OPTION VALUE="111"> Monaco </OPTION>
						<OPTION VALUE="112"> Mongolia </OPTION>
						<OPTION VALUE="113"> Morocco </OPTION>
						<OPTION VALUE="114"> Mozambique </OPTION>
						<OPTION VALUE="115"> Myanmar </OPTION>
						<OPTION VALUE="116"> Namibia </OPTION>
						<OPTION VALUE="117"> Nepal </OPTION>
						<OPTION VALUE="118"> Netherlands </OPTION>
						<OPTION VALUE="119"> New Zealand </OPTION>
						<OPTION VALUE="120"> Nicaragua </OPTION>
						<OPTION VALUE="121"> Niger </OPTION>
						<OPTION VALUE="122"> Nigeria </OPTION>
						<OPTION VALUE="123"> Norway </OPTION>
						<OPTION VALUE="124"> Oman </OPTION>
						<OPTION VALUE="125"> Pakistan </OPTION>
						<OPTION VALUE="126"> Palau </OPTION>
						<OPTION VALUE="127"> Panama </OPTION>
						<OPTION VALUE="128"> Papua New Guinea </OPTION>
						<OPTION VALUE="129"> Paraguay </OPTION>
						<OPTION VALUE="130"> Peru </OPTION>
						<OPTION VALUE="131"> Philippines </OPTION>
						<OPTION VALUE="132"> Poland </OPTION>
						<OPTION VALUE="133"> Portugal </OPTION>
						<OPTION VALUE="134"> Qatar </OPTION>
						<OPTION VALUE="135"> Romania </OPTION>
						<OPTION VALUE="136"> Russian Federation </OPTION>
						<OPTION VALUE="137"> Rwanda </OPTION>
						<OPTION VALUE="138"> Saint Kitts and Nevis </OPTION>
						<OPTION VALUE="139"> Saint Lucia </OPTION>
						<OPTION VALUE="140"> Saint Vincent and the Grenadines </OPTION>
						<OPTION VALUE="141"> Samoa </OPTION>
						<OPTION VALUE="142"> San Marino </OPTION>
						<OPTION VALUE="143"> Sao Tome and Principe </OPTION>
						<OPTION VALUE="144"> Saudi Arabia </OPTION>
						<OPTION VALUE="145"> Senegal </OPTION>
						<OPTION VALUE="146"> Seychelles </OPTION>
						<OPTION VALUE="147"> Sierra Leone </OPTION>
						<OPTION VALUE="148"> Singapore </OPTION>
						<OPTION VALUE="149"> Slovak Republic </OPTION>
						<OPTION VALUE="150"> Slovenia </OPTION>
						<OPTION VALUE="151"> Solomon Islands </OPTION>
						<OPTION VALUE="152"> Somalia </OPTION>
						<OPTION VALUE="153"> South Africa </OPTION>
						<OPTION VALUE="154"> Spain </OPTION>
						<OPTION VALUE="155"> Sri Lanka </OPTION>
						<OPTION VALUE="156"> Sudan </OPTION>
						<OPTION VALUE="157"> Suriname </OPTION>
						<OPTION VALUE="158"> Swaziland </OPTION>
						<OPTION VALUE="159"> Sweden </OPTION>
						<OPTION VALUE="160"> Switzerland </OPTION>
						<OPTION VALUE="161"> Syria </OPTION>
						<OPTION VALUE="162"> Tajikistan </OPTION>
						<OPTION VALUE="163"> Tanzania, United Republic of </OPTION>
						<OPTION VALUE="164"> Thailand </OPTION>
						<OPTION VALUE="165"> Togo </OPTION>
						<OPTION VALUE="166"> Trinidad and Tobago </OPTION>
						<OPTION VALUE="167"> Tunisia </OPTION>
						<OPTION VALUE="168"> Turkey </OPTION>
						<OPTION VALUE="169"> Turkmenistan </OPTION>
						<OPTION VALUE="170"> Uganda </OPTION>
						<OPTION VALUE="171"> Ukraine </OPTION>
						<OPTION VALUE="172"> United Arab Emirates </OPTION>
						<OPTION VALUE="173"> United Kingdom </OPTION>
						<OPTION VALUE="174" SELECTED> United States of America </OPTION>
						<OPTION VALUE="175"> Uruguay </OPTION>
						<OPTION VALUE="176"> Uzbekistan </OPTION>
						<OPTION VALUE="177"> Vanuatu </OPTION>
						<OPTION VALUE="178"> Venezuela </OPTION>
						<OPTION VALUE="179"> VietNam </OPTION>
						<OPTION VALUE="180"> Yemen </OPTION>
						<OPTION VALUE="181"> Yugoslavia </OPTION>
						<OPTION VALUE="182"> Zaire </OPTION>
						<OPTION VALUE="183"> Zambia </OPTION>
						<OPTION VALUE="184"> Zimbabwe </OPTION>
						</SELECT>
					</TD>
				</TR>
				<TR>
					<TD ALIGN="RIGHT">
						<P ALIGN="RIGHT"><I>E-mail:&nbsp;&nbsp;</I>
					</TD>
					<TD><INPUT TYPE="TEXT" NAME="Email" SIZE="50" MAXLENGTH="80"></TD>
				</TR>
				<TR>
					<TD ALIGN="RIGHT">
						<P ALIGN="RIGHT"><I>Telephone:&nbsp;&nbsp;</I>
					</TD>
					<TD><INPUT TYPE="TEXT" NAME="Phone" SIZE="15" MAXLENGTH="20"></TD>
				</TR>
			</TABLE>
<I><BR>
			</I><CENTER><INPUT TYPE="SUBMIT" VALUE="Submit"><INPUT TYPE="RESET" VALUE="Clear and Start Again"><BR>
			</P>
</CENTER></FORM><FORM ACTION="send.asp" METHOD="POST" ENCTYPE="application/x-www-form-urlencoded">
<%=fields%><INPUT TYPE=hidden NAME=quantity VALUE=1><INPUT TYPE=hidden NAME=company VALUE="Personal Use"><INPUT TYPE=hidden NAME="L1-2" VALUE="9">

			<P><IMG SRC="../../images/border_lines_3.GIF" WIDTH="470" HEIGHT="13" ALIGN="BOTTOM" BORDER="0" NATURALSIZEFLAG="3"><BR>
			<BR>
			<A NAME="Home"></A><BR>
			<B>I am looking for a computer for my home or personal use.</B><BR>
			<I>Please fill out the information below and click &quot;submit&quot;.  You will be matched to a local AST
			computer reseller who can assist you.</I><P>
			
			<TABLE BORDER="0" CELLPADDING="0">
				<TR>
					<TD ALIGN="RIGHT">
						<P ALIGN="RIGHT"><I>Name:&nbsp;&nbsp;</I>
					</TD>
					<TD><INPUT TYPE="TEXT" NAME="Name" SIZE="50" MAXLENGTH="80"></TD>
				</TR>
				<TR>
					<TD ALIGN="RIGHT">
						<P ALIGN="RIGHT"><I>Street Address:&nbsp;&nbsp;</I>
					</TD>
					<TD><INPUT TYPE="TEXT" NAME="Address1" SIZE="50" MAXLENGTH="80"></TD>
				</TR>
				<TR>
					<TD ALIGN="RIGHT">
						<P ALIGN="RIGHT"><I>City:&nbsp;&nbsp;</I>
					</TD>
					<TD><INPUT TYPE="TEXT" NAME="City" SIZE="50" MAXLENGTH="80"></TD>
				</TR>
				<TR>
					<TD ALIGN="RIGHT">
						<P ALIGN="RIGHT"><I>State/Province:&nbsp;&nbsp;</I>
					</TD>
					<TD><INPUT TYPE="TEXT" NAME="State" SIZE="50" MAXLENGTH="80"></TD>
				</TR>
				<TR>
					<TD ALIGN="RIGHT">
						<P ALIGN="RIGHT"><I>Postal/Zip Code:&nbsp;&nbsp;</I>
					</TD>
					<TD><INPUT TYPE="TEXT" NAME="ZipCode" SIZE="20" MAXLENGTH="40"></TD>
				</TR>
				<TR>
					<TD ALIGN="RIGHT">
						<P ALIGN="RIGHT"><I>Country:&nbsp;&nbsp;</I>
					</TD>
					<TD>						<SELECT NAME="Country">
						<OPTION VALUE="1">Afghanistan </OPTION>
						<OPTION VALUE="2"> Albania </OPTION>
						<OPTION VALUE="3"> Algeria </OPTION>
						<OPTION VALUE="4"> Andorra </OPTION>
						<OPTION VALUE="5"> Angola </OPTION>
						<OPTION VALUE="6"> Antigua and Barbados </OPTION>
						<OPTION VALUE="7"> Argentina </OPTION>
						<OPTION VALUE="8"> Armenia </OPTION>
						<OPTION VALUE="9"> Australia </OPTION>
						<OPTION VALUE="10"> Austria </OPTION>
						<OPTION VALUE="11"> Azerbaijan </OPTION>
						<OPTION VALUE="12"> Bahamas </OPTION>
						<OPTION VALUE="13"> Bahrain </OPTION>
						<OPTION VALUE="14"> Bangladesh </OPTION>
						<OPTION VALUE="15"> Barbados </OPTION>
						<OPTION VALUE="16"> Belarus </OPTION>
						<OPTION VALUE="17"> Belgium </OPTION>
						<OPTION VALUE="18"> Belize </OPTION>
						<OPTION VALUE="19"> Benin </OPTION>
						<OPTION VALUE="20"> Bhutan </OPTION>
						<OPTION VALUE="21"> Bolivia </OPTION>
						<OPTION VALUE="22"> Bosnia and Herzegovina </OPTION>
						<OPTION VALUE="23"> Botswana </OPTION>
						<OPTION VALUE="24"> Brazil </OPTION>
						<OPTION VALUE="25"> Brunei Darussalam </OPTION>
						<OPTION VALUE="26"> Bulgaria </OPTION>
						<OPTION VALUE="27"> Burkina Faso </OPTION>
						<OPTION VALUE="28"> Burundi </OPTION>
						<OPTION VALUE="29"> Cambodia </OPTION>
						<OPTION VALUE="30"> Cameroon </OPTION>
						<OPTION VALUE="31"> Canada </OPTION>
						<OPTION VALUE="32"> Cape Verde </OPTION>
						<OPTION VALUE="33"> Central African Republic </OPTION>
						<OPTION VALUE="34"> Chad </OPTION>
						<OPTION VALUE="35"> Chile </OPTION>
						<OPTION VALUE="36"> China, People's Republic of </OPTION>
						<OPTION VALUE="37"> China, Republic of (Taiwan) </OPTION>
						<OPTION VALUE="38"> Colombia </OPTION>
						<OPTION VALUE="39"> Comoros </OPTION>
						<OPTION VALUE="40"> Congo </OPTION>
						<OPTION VALUE="41"> Costa Rica </OPTION>
						<OPTION VALUE="42"> Cted'Ivoire </OPTION>
						<OPTION VALUE="43"> Croatia </OPTION>
						<OPTION VALUE="44"> Cyprus </OPTION>
						<OPTION VALUE="45"> Czech Republic </OPTION>
						<OPTION VALUE="46"> Denmark </OPTION>
						<OPTION VALUE="47"> Djibouti </OPTION>
						<OPTION VALUE="48"> Dominica </OPTION>
						<OPTION VALUE="49"> Dominican Republic </OPTION>
						<OPTION VALUE="50"> Ecuador </OPTION>
						<OPTION VALUE="51"> Egypt </OPTION>
						<OPTION VALUE="52"> El Salvador </OPTION>
						<OPTION VALUE="53"> Equatorial Guinea </OPTION>
						<OPTION VALUE="54"> Eritrea </OPTION>
						<OPTION VALUE="55"> Estonia </OPTION>
						<OPTION VALUE="56"> Ethiopia </OPTION>
						<OPTION VALUE="57"> Fiji </OPTION>
						<OPTION VALUE="58"> Finland </OPTION>
						<OPTION VALUE="59"> France </OPTION>
						<OPTION VALUE="60"> Gabon </OPTION>
						<OPTION VALUE="61"> Gambia </OPTION>
						<OPTION VALUE="62"> Georgia </OPTION>
						<OPTION VALUE="63"> Germany </OPTION>
						<OPTION VALUE="64"> Ghana </OPTION>
						<OPTION VALUE="65"> Greece </OPTION>
						<OPTION VALUE="66"> Grenada </OPTION>
						<OPTION VALUE="67"> Guatemala </OPTION>
						<OPTION VALUE="68"> Guinea </OPTION>
						<OPTION VALUE="69"> Guinea-Bissau </OPTION>
						<OPTION VALUE="70"> Guyana </OPTION>
						<OPTION VALUE="71"> Haiti </OPTION>
						<OPTION VALUE="72"> Honduras </OPTION>
						<OPTION VALUE="73"> Hong Kong, Crown Colony of </OPTION>
						<OPTION VALUE="74"> Hungary </OPTION>
						<OPTION VALUE="75"> Iceland </OPTION>
						<OPTION VALUE="76"> India </OPTION>
						<OPTION VALUE="77"> Indonesia </OPTION>
						<OPTION VALUE="78"> Iran </OPTION>
						<OPTION VALUE="79"> Ireland </OPTION>
						<OPTION VALUE="80"> Israel </OPTION>
						<OPTION VALUE="81"> Italy </OPTION>
						<OPTION VALUE="82"> Jamaica </OPTION>
						<OPTION VALUE="83"> Japan </OPTION>
						<OPTION VALUE="84"> Jordan </OPTION>
						<OPTION VALUE="85"> Kazakhstan </OPTION>
						<OPTION VALUE="86"> Kenya </OPTION>
						<OPTION VALUE="87"> Korea, Republic of (South) </OPTION>
						<OPTION VALUE="88"> Kuwait </OPTION>
						<OPTION VALUE="89"> Kyrgyz Republic </OPTION>
						<OPTION VALUE="90"> Lao People's Democratic Republic </OPTION>
						<OPTION VALUE="91"> Latvia </OPTION>
						<OPTION VALUE="92"> Lebanon </OPTION>
						<OPTION VALUE="93"> Lesotho </OPTION>
						<OPTION VALUE="94"> Liberia </OPTION>
						<OPTION VALUE="95"> Liechtenstein </OPTION>
						<OPTION VALUE="96"> Lithuania </OPTION>
						<OPTION VALUE="97"> Luxembourg </OPTION>
						<OPTION VALUE="98"> Macedonia, Former Yugoslav Republic of </OPTION>
						<OPTION VALUE="99"> Madagascar </OPTION>
						<OPTION VALUE="100"> Malawi </OPTION>
						<OPTION VALUE="101"> Malaysia </OPTION>
						<OPTION VALUE="102"> Maldives </OPTION>
						<OPTION VALUE="103"> Mali </OPTION>
						<OPTION VALUE="104"> Malta </OPTION>
						<OPTION VALUE="105"> Marshall Islands </OPTION>
						<OPTION VALUE="106"> Mauritania </OPTION>
						<OPTION VALUE="107"> Mauritius </OPTION>
						<OPTION VALUE="108"> Mexico </OPTION>
						<OPTION VALUE="109"> Micronesia, Federated States of </OPTION>
						<OPTION VALUE="110"> Moldova, Republic of </OPTION>
						<OPTION VALUE="111"> Monaco </OPTION>
						<OPTION VALUE="112"> Mongolia </OPTION>
						<OPTION VALUE="113"> Morocco </OPTION>
						<OPTION VALUE="114"> Mozambique </OPTION>
						<OPTION VALUE="115"> Myanmar </OPTION>
						<OPTION VALUE="116"> Namibia </OPTION>
						<OPTION VALUE="117"> Nepal </OPTION>
						<OPTION VALUE="118"> Netherlands </OPTION>
						<OPTION VALUE="119"> New Zealand </OPTION>
						<OPTION VALUE="120"> Nicaragua </OPTION>
						<OPTION VALUE="121"> Niger </OPTION>
						<OPTION VALUE="122"> Nigeria </OPTION>
						<OPTION VALUE="123"> Norway </OPTION>
						<OPTION VALUE="124"> Oman </OPTION>
						<OPTION VALUE="125"> Pakistan </OPTION>
						<OPTION VALUE="126"> Palau </OPTION>
						<OPTION VALUE="127"> Panama </OPTION>
						<OPTION VALUE="128"> Papua New Guinea </OPTION>
						<OPTION VALUE="129"> Paraguay </OPTION>
						<OPTION VALUE="130"> Peru </OPTION>
						<OPTION VALUE="131"> Philippines </OPTION>
						<OPTION VALUE="132"> Poland </OPTION>
						<OPTION VALUE="133"> Portugal </OPTION>
						<OPTION VALUE="134"> Qatar </OPTION>
						<OPTION VALUE="135"> Romania </OPTION>
						<OPTION VALUE="136"> Russian Federation </OPTION>
						<OPTION VALUE="137"> Rwanda </OPTION>
						<OPTION VALUE="138"> Saint Kitts and Nevis </OPTION>
						<OPTION VALUE="139"> Saint Lucia </OPTION>
						<OPTION VALUE="140"> Saint Vincent and the Grenadines </OPTION>
						<OPTION VALUE="141"> Samoa </OPTION>
						<OPTION VALUE="142"> San Marino </OPTION>
						<OPTION VALUE="143"> Sao Tome and Principe </OPTION>
						<OPTION VALUE="144"> Saudi Arabia </OPTION>
						<OPTION VALUE="145"> Senegal </OPTION>
						<OPTION VALUE="146"> Seychelles </OPTION>
						<OPTION VALUE="147"> Sierra Leone </OPTION>
						<OPTION VALUE="148"> Singapore </OPTION>
						<OPTION VALUE="149"> Slovak Republic </OPTION>
						<OPTION VALUE="150"> Slovenia </OPTION>
						<OPTION VALUE="151"> Solomon Islands </OPTION>
						<OPTION VALUE="152"> Somalia </OPTION>
						<OPTION VALUE="153"> South Africa </OPTION>
						<OPTION VALUE="154"> Spain </OPTION>
						<OPTION VALUE="155"> Sri Lanka </OPTION>
						<OPTION VALUE="156"> Sudan </OPTION>
						<OPTION VALUE="157"> Suriname </OPTION>
						<OPTION VALUE="158"> Swaziland </OPTION>
						<OPTION VALUE="159"> Sweden </OPTION>
						<OPTION VALUE="160"> Switzerland </OPTION>
						<OPTION VALUE="161"> Syria </OPTION>
						<OPTION VALUE="162"> Tajikistan </OPTION>
						<OPTION VALUE="163"> Tanzania, United Republic of </OPTION>
						<OPTION VALUE="164"> Thailand </OPTION>
						<OPTION VALUE="165"> Togo </OPTION>
						<OPTION VALUE="166"> Trinidad and Tobago </OPTION>
						<OPTION VALUE="167"> Tunisia </OPTION>
						<OPTION VALUE="168"> Turkey </OPTION>
						<OPTION VALUE="169"> Turkmenistan </OPTION>
						<OPTION VALUE="170"> Uganda </OPTION>
						<OPTION VALUE="171"> Ukraine </OPTION>
						<OPTION VALUE="172"> United Arab Emirates </OPTION>
						<OPTION VALUE="173"> United Kingdom </OPTION>
						<OPTION VALUE="174" SELECTED> United States of America </OPTION>
						<OPTION VALUE="175"> Uruguay </OPTION>
						<OPTION VALUE="176"> Uzbekistan </OPTION>
						<OPTION VALUE="177"> Vanuatu </OPTION>
						<OPTION VALUE="178"> Venezuela </OPTION>
						<OPTION VALUE="179"> VietNam </OPTION>
						<OPTION VALUE="180"> Yemen </OPTION>
						<OPTION VALUE="181"> Yugoslavia </OPTION>
						<OPTION VALUE="182"> Zaire </OPTION>
						<OPTION VALUE="183"> Zambia </OPTION>
						<OPTION VALUE="184"> Zimbabwe </OPTION>
						</SELECT>
					</TD>
				</TR>
				<TR>
					<TD HEIGHT="34" ALIGN="RIGHT">
						<P ALIGN="RIGHT"><I>E-mail:&nbsp;&nbsp;</I>
					</TD>
					<TD HEIGHT="34"><INPUT TYPE="TEXT" NAME="Email" SIZE="50" MAXLENGTH="80"></TD>
				</TR>
				<TR>
					<TD ALIGN="RIGHT">
						<P ALIGN="RIGHT"><I>Telephone:&nbsp;&nbsp;</I>
					</TD>
					<TD><INPUT TYPE="TEXT" NAME="Phone" SIZE="15" MAXLENGTH="20"></TD>
				</TR>
			</TABLE>
</P>
			<CENTER>
			<P><INPUT TYPE="SUBMIT" VALUE="Submit"><INPUT TYPE="RESET" VALUE="Clear and Start Again"></P>
</CENTER></FORM><FORM ACTION="send.asp" METHOD="POST" ENCTYPE="application/x-www-form-urlencoded">
<%=fields%><INPUT TYPE=hidden NAME="L1-2" VALUE="9">
			<P><IMG SRC="../../images/border_lines_3.GIF" WIDTH="470" HEIGHT="13" ALIGN="BOTTOM" BORDER="0" NATURALSIZEFLAG="3"><BR>
			<BR>
			<A NAME="Business"></A><BR>
			<B>I am looking for a computer for my business.</B><BR>
			<I>Please fill out the information below and click &quot;submit&quot;.  You will
			be matched to a local AST reseller who can serve your specific business needs.<P>
			</I>
			<TABLE BORDER="0" CELLPADDING="0">
				<TR>
					<TD ALIGN="RIGHT">
						<P ALIGN="RIGHT"><I>Name:&nbsp;&nbsp;</I>
					</TD>
					<TD><INPUT TYPE="TEXT" NAME="Name" SIZE="50" MAXLENGTH="80"></TD>
				</TR>
				<TR>
					<TD ALIGN="RIGHT">
						<P ALIGN="RIGHT">Title:&nbsp;&nbsp;
					</TD>
					<TD><INPUT TYPE="TEXT" NAME="Title" SIZE="50" MAXLENGTH="80"></TD>
				</TR>
				<TR>
					<TD ALIGN="RIGHT">
						<P ALIGN="RIGHT">Company:&nbsp;&nbsp;
					</TD>
					<TD><INPUT TYPE="TEXT" NAME="Company" SIZE="50" MAXLENGTH="80"></TD>
				</TR>
				<TR>
					<TD ALIGN="RIGHT">
						<P ALIGN="RIGHT"><I>Street Address:&nbsp;&nbsp;</I>
					</TD>
					<TD><INPUT TYPE="TEXT" NAME="Address1" SIZE="50" MAXLENGTH="80"></TD>
				</TR>
				<TR>
					<TD></TD>
					<TD><INPUT TYPE="TEXT" NAME="Address2" SIZE="50" MAXLENGTH="80"></TD>
				</TR>
				<TR>
					<TD ALIGN="RIGHT">
						<P ALIGN="RIGHT"><I>City:&nbsp;&nbsp;</I>
					</TD>
					<TD><INPUT TYPE="TEXT" NAME="City" SIZE="50" MAXLENGTH="80"></TD>
				</TR>
				<TR>
					<TD ALIGN="RIGHT">
						<P ALIGN="RIGHT"><I>State/Province:&nbsp;&nbsp;</I>
					</TD>
					<TD><INPUT TYPE="TEXT" NAME="State" SIZE="50" MAXLENGTH="80"></TD>
				</TR>
				<TR>
					<TD ALIGN="RIGHT">
						<P ALIGN="RIGHT"><I>Postal/Zip Code:&nbsp;&nbsp;</I>
					</TD>
					<TD><INPUT TYPE="TEXT" NAME="ZipCode" SIZE="20" MAXLENGTH="40"></TD>
				</TR>
				<TR>
					<TD ALIGN="RIGHT">
						<P ALIGN="RIGHT"><I>Country:&nbsp;&nbsp;</I>
					</TD>
					<TD>						<SELECT NAME="Country">
						<OPTION VALUE="1">Afghanistan </OPTION>
						<OPTION VALUE="2"> Albania </OPTION>
						<OPTION VALUE="3"> Algeria </OPTION>
						<OPTION VALUE="4"> Andorra </OPTION>
						<OPTION VALUE="5"> Angola </OPTION>
						<OPTION VALUE="6"> Antigua and Barbados </OPTION>
						<OPTION VALUE="7"> Argentina </OPTION>
						<OPTION VALUE="8"> Armenia </OPTION>
						<OPTION VALUE="9"> Australia </OPTION>
						<OPTION VALUE="10"> Austria </OPTION>
						<OPTION VALUE="11"> Azerbaijan </OPTION>
						<OPTION VALUE="12"> Bahamas </OPTION>
						<OPTION VALUE="13"> Bahrain </OPTION>
						<OPTION VALUE="14"> Bangladesh </OPTION>
						<OPTION VALUE="15"> Barbados </OPTION>
						<OPTION VALUE="16"> Belarus </OPTION>
						<OPTION VALUE="17"> Belgium </OPTION>
						<OPTION VALUE="18"> Belize </OPTION>
						<OPTION VALUE="19"> Benin </OPTION>
						<OPTION VALUE="20"> Bhutan </OPTION>
						<OPTION VALUE="21"> Bolivia </OPTION>
						<OPTION VALUE="22"> Bosnia and Herzegovina </OPTION>
						<OPTION VALUE="23"> Botswana </OPTION>
						<OPTION VALUE="24"> Brazil </OPTION>
						<OPTION VALUE="25"> Brunei Darussalam </OPTION>
						<OPTION VALUE="26"> Bulgaria </OPTION>
						<OPTION VALUE="27"> Burkina Faso </OPTION>
						<OPTION VALUE="28"> Burundi </OPTION>
						<OPTION VALUE="29"> Cambodia </OPTION>
						<OPTION VALUE="30"> Cameroon </OPTION>
						<OPTION VALUE="31"> Canada </OPTION>
						<OPTION VALUE="32"> Cape Verde </OPTION>
						<OPTION VALUE="33"> Central African Republic </OPTION>
						<OPTION VALUE="34"> Chad </OPTION>
						<OPTION VALUE="35"> Chile </OPTION>
						<OPTION VALUE="36"> China, People's Republic of </OPTION>
						<OPTION VALUE="37"> China, Republic of (Taiwan) </OPTION>
						<OPTION VALUE="38"> Colombia </OPTION>
						<OPTION VALUE="39"> Comoros </OPTION>
						<OPTION VALUE="40"> Congo </OPTION>
						<OPTION VALUE="41"> Costa Rica </OPTION>
						<OPTION VALUE="42"> Cted'Ivoire </OPTION>
						<OPTION VALUE="43"> Croatia </OPTION>
						<OPTION VALUE="44"> Cyprus </OPTION>
						<OPTION VALUE="45"> Czech Republic </OPTION>
						<OPTION VALUE="46"> Denmark </OPTION>
						<OPTION VALUE="47"> Djibouti </OPTION>
						<OPTION VALUE="48"> Dominica </OPTION>
						<OPTION VALUE="49"> Dominican Republic </OPTION>
						<OPTION VALUE="50"> Ecuador </OPTION>
						<OPTION VALUE="51"> Egypt </OPTION>
						<OPTION VALUE="52"> El Salvador </OPTION>
						<OPTION VALUE="53"> Equatorial Guinea </OPTION>
						<OPTION VALUE="54"> Eritrea </OPTION>
						<OPTION VALUE="55"> Estonia </OPTION>
						<OPTION VALUE="56"> Ethiopia </OPTION>
						<OPTION VALUE="57"> Fiji </OPTION>
						<OPTION VALUE="58"> Finland </OPTION>
						<OPTION VALUE="59"> France </OPTION>
						<OPTION VALUE="60"> Gabon </OPTION>
						<OPTION VALUE="61"> Gambia </OPTION>
						<OPTION VALUE="62"> Georgia </OPTION>
						<OPTION VALUE="63"> Germany </OPTION>
						<OPTION VALUE="64"> Ghana </OPTION>
						<OPTION VALUE="65"> Greece </OPTION>
						<OPTION VALUE="66"> Grenada </OPTION>
						<OPTION VALUE="67"> Guatemala </OPTION>
						<OPTION VALUE="68"> Guinea </OPTION>
						<OPTION VALUE="69"> Guinea-Bissau </OPTION>
						<OPTION VALUE="70"> Guyana </OPTION>
						<OPTION VALUE="71"> Haiti </OPTION>
						<OPTION VALUE="72"> Honduras </OPTION>
						<OPTION VALUE="73"> Hong Kong, Crown Colony of </OPTION>
						<OPTION VALUE="74"> Hungary </OPTION>
						<OPTION VALUE="75"> Iceland </OPTION>
						<OPTION VALUE="76"> India </OPTION>
						<OPTION VALUE="77"> Indonesia </OPTION>
						<OPTION VALUE="78"> Iran </OPTION>
						<OPTION VALUE="79"> Ireland </OPTION>
						<OPTION VALUE="80"> Israel </OPTION>
						<OPTION VALUE="81"> Italy </OPTION>
						<OPTION VALUE="82"> Jamaica </OPTION>
						<OPTION VALUE="83"> Japan </OPTION>
						<OPTION VALUE="84"> Jordan </OPTION>
						<OPTION VALUE="85"> Kazakhstan </OPTION>
						<OPTION VALUE="86"> Kenya </OPTION>
						<OPTION VALUE="87"> Korea, Republic of (South) </OPTION>
						<OPTION VALUE="88"> Kuwait </OPTION>
						<OPTION VALUE="89"> Kyrgyz Republic </OPTION>
						<OPTION VALUE="90"> Lao People's Democratic Republic </OPTION>
						<OPTION VALUE="91"> Latvia </OPTION>
						<OPTION VALUE="92"> Lebanon </OPTION>
						<OPTION VALUE="93"> Lesotho </OPTION>
						<OPTION VALUE="94"> Liberia </OPTION>
						<OPTION VALUE="95"> Liechtenstein </OPTION>
						<OPTION VALUE="96"> Lithuania </OPTION>
						<OPTION VALUE="97"> Luxembourg </OPTION>
						<OPTION VALUE="98"> Macedonia, Former Yugoslav Republic of </OPTION>
						<OPTION VALUE="99"> Madagascar </OPTION>
						<OPTION VALUE="100"> Malawi </OPTION>
						<OPTION VALUE="101"> Malaysia </OPTION>
						<OPTION VALUE="102"> Maldives </OPTION>
						<OPTION VALUE="103"> Mali </OPTION>
						<OPTION VALUE="104"> Malta </OPTION>
						<OPTION VALUE="105"> Marshall Islands </OPTION>
						<OPTION VALUE="106"> Mauritania </OPTION>
						<OPTION VALUE="107"> Mauritius </OPTION>
						<OPTION VALUE="108"> Mexico </OPTION>
						<OPTION VALUE="109"> Micronesia, Federated States of </OPTION>
						<OPTION VALUE="110"> Moldova, Republic of </OPTION>
						<OPTION VALUE="111"> Monaco </OPTION>
						<OPTION VALUE="112"> Mongolia </OPTION>
						<OPTION VALUE="113"> Morocco </OPTION>
						<OPTION VALUE="114"> Mozambique </OPTION>
						<OPTION VALUE="115"> Myanmar </OPTION>
						<OPTION VALUE="116"> Namibia </OPTION>
						<OPTION VALUE="117"> Nepal </OPTION>
						<OPTION VALUE="118"> Netherlands </OPTION>
						<OPTION VALUE="119"> New Zealand </OPTION>
						<OPTION VALUE="120"> Nicaragua </OPTION>
						<OPTION VALUE="121"> Niger </OPTION>
						<OPTION VALUE="122"> Nigeria </OPTION>
						<OPTION VALUE="123"> Norway </OPTION>
						<OPTION VALUE="124"> Oman </OPTION>
						<OPTION VALUE="125"> Pakistan </OPTION>
						<OPTION VALUE="126"> Palau </OPTION>
						<OPTION VALUE="127"> Panama </OPTION>
						<OPTION VALUE="128"> Papua New Guinea </OPTION>
						<OPTION VALUE="129"> Paraguay </OPTION>
						<OPTION VALUE="130"> Peru </OPTION>
						<OPTION VALUE="131"> Philippines </OPTION>
						<OPTION VALUE="132"> Poland </OPTION>
						<OPTION VALUE="133"> Portugal </OPTION>
						<OPTION VALUE="134"> Qatar </OPTION>
						<OPTION VALUE="135"> Romania </OPTION>
						<OPTION VALUE="136"> Russian Federation </OPTION>
						<OPTION VALUE="137"> Rwanda </OPTION>
						<OPTION VALUE="138"> Saint Kitts and Nevis </OPTION>
						<OPTION VALUE="139"> Saint Lucia </OPTION>
						<OPTION VALUE="140"> Saint Vincent and the Grenadines </OPTION>
						<OPTION VALUE="141"> Samoa </OPTION>
						<OPTION VALUE="142"> San Marino </OPTION>
						<OPTION VALUE="143"> Sao Tome and Principe </OPTION>
						<OPTION VALUE="144"> Saudi Arabia </OPTION>
						<OPTION VALUE="145"> Senegal </OPTION>
						<OPTION VALUE="146"> Seychelles </OPTION>
						<OPTION VALUE="147"> Sierra Leone </OPTION>
						<OPTION VALUE="148"> Singapore </OPTION>
						<OPTION VALUE="149"> Slovak Republic </OPTION>
						<OPTION VALUE="150"> Slovenia </OPTION>
						<OPTION VALUE="151"> Solomon Islands </OPTION>
						<OPTION VALUE="152"> Somalia </OPTION>
						<OPTION VALUE="153"> South Africa </OPTION>
						<OPTION VALUE="154"> Spain </OPTION>
						<OPTION VALUE="155"> Sri Lanka </OPTION>
						<OPTION VALUE="156"> Sudan </OPTION>
						<OPTION VALUE="157"> Suriname </OPTION>
						<OPTION VALUE="158"> Swaziland </OPTION>
						<OPTION VALUE="159"> Sweden </OPTION>
						<OPTION VALUE="160"> Switzerland </OPTION>
						<OPTION VALUE="161"> Syria </OPTION>
						<OPTION VALUE="162"> Tajikistan </OPTION>
						<OPTION VALUE="163"> Tanzania, United Republic of </OPTION>
						<OPTION VALUE="164"> Thailand </OPTION>
						<OPTION VALUE="165"> Togo </OPTION>
						<OPTION VALUE="166"> Trinidad and Tobago </OPTION>
						<OPTION VALUE="167"> Tunisia </OPTION>
						<OPTION VALUE="168"> Turkey </OPTION>
						<OPTION VALUE="169"> Turkmenistan </OPTION>
						<OPTION VALUE="170"> Uganda </OPTION>
						<OPTION VALUE="171"> Ukraine </OPTION>
						<OPTION VALUE="172"> United Arab Emirates </OPTION>
						<OPTION VALUE="173"> United Kingdom </OPTION>
						<OPTION VALUE="174" SELECTED> United States of America </OPTION>
						<OPTION VALUE="175"> Uruguay </OPTION>
						<OPTION VALUE="176"> Uzbekistan </OPTION>
						<OPTION VALUE="177"> Vanuatu </OPTION>
						<OPTION VALUE="178"> Venezuela </OPTION>
						<OPTION VALUE="179"> VietNam </OPTION>
						<OPTION VALUE="180"> Yemen </OPTION>
						<OPTION VALUE="181"> Yugoslavia </OPTION>
						<OPTION VALUE="182"> Zaire </OPTION>
						<OPTION VALUE="183"> Zambia </OPTION>
						<OPTION VALUE="184"> Zimbabwe </OPTION>
						</SELECT>
					</TD>
				</TR>
				<TR>
					<TD ALIGN="RIGHT">
						<P ALIGN="RIGHT"><I>E-mail:&nbsp;&nbsp;</I>
					</TD>
					<TD><INPUT TYPE="TEXT" NAME="Email" SIZE="50" MAXLENGTH="80"></TD>
				</TR>
				<TR>
					<TD ALIGN="RIGHT">
						<P ALIGN="RIGHT"><I>Telephone:&nbsp;&nbsp;</I>
					</TD>
					<TD><INPUT TYPE="TEXT" NAME="Phone" SIZE="15" MAXLENGTH="20"></TD>
				</TR>
				<TR>
					<TD ALIGN="RIGHT">
						<P ALIGN="RIGHT">Fax Number:&nbsp;&nbsp;
					</TD>
					<TD><INPUT TYPE="TEXT" NAME="Fax" SIZE="15" MAXLENGTH="20"></TD>
				</TR>
			</TABLE>
<BR>
			<BR>
			<A NAME="NEXT"></A><BR>
			So that we may better match you with a reseller that can serve your needs, please fill out this brief questionnaire.</P>

			<P><B>In what environment will this computer be used?<BR>
			1)</B> Vertical Market</P>
			<CENTER>
			<P>
			<TABLE BORDER="0" WIDTH="490">
				<TR>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="REG-45-4" VALUE="1"><FONT SIZE="2">Chemical/Pharmaceutical</FONT></TD>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="REG-45-5" VALUE="1"><FONT SIZE="2">Communications</FONT></TD>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="REG-45-6" VALUE="1"><FONT SIZE="2">Construction</FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="REG-45-7" VALUE="1"><FONT SIZE="2">Education - K-12</FONT></TD>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="REG-45-8" VALUE="1"><FONT SIZE="2">College/Univ/Trade</FONT></TD>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="REG-45-9" VALUE="1"><FONT SIZE="2">Engineering/Architecture</FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="REG-45-10" VALUE="1"><FONT SIZE="2">Entertainment</FONT></TD>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="REG-45-11" VALUE="1"><FONT SIZE="2">Gov't - Federal</FONT></TD>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="REG-45-12" VALUE="1"><FONT SIZE="2">Gov't - State/County/Local</FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="REG-45-13" VALUE="1"><FONT SIZE="2">Gov't - U.S. Armed Forces</FONT></TD>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="REG-45-14" VALUE="1"><FONT SIZE="2">Healthcare</FONT></TD>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="REG-45-15" VALUE="1"><FONT SIZE="2">Legal</FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="REG-45-16" VALUE="1"><FONT SIZE="2">Manufacturing</FONT></TD>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="REG-45-17" VALUE="1"><FONT SIZE="2">Personal Services</FONT></TD>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="REG-45-18" VALUE="1"><FONT SIZE="2">Real Estate/Insurance</FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="REG-45-19" VALUE="1"><FONT SIZE="2">Religious/Membership Org.</FONT></TD>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="REG-45-20" VALUE="1"><FONT SIZE="2">Restaurant/Lodging</FONT></TD>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="REG-45-21" VALUE="1"><FONT SIZE="2">Social Services</FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="REG-45-22" VALUE="1"><FONT SIZE="2">Transportation</FONT></TD>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="REG-45-23" VALUE="1"><FONT SIZE="2">Utilities</FONT></TD>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="REG-45-24" VALUE="1"><FONT SIZE="2">Wholesale/Retail Trade</FONT></TD>
				</TR>
			</TABLE>
</P>
</CENTER>
			<P><BR>
			<B>What applications will be used on this computer?<BR>
			2)</B> Value Added Application</P>
			<CENTER>
			<P>
			<TABLE BORDER="0" WIDTH="475">
				<TR>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="L1-29-1" VALUE="1"><FONT SIZE="2"> Accounting/Financial/Payroll</FONT></TD>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="L1-29-2" VALUE="1"><FONT SIZE="2"> CAD/CAM/CAE</FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="L1-29-3" VALUE="1"><FONT SIZE="2"> Communications/Remote Access</FONT></TD>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="L1-29-4" VALUE="1"><FONT SIZE="2"> Contact Management</FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="L1-29-5" VALUE="1"><FONT SIZE="2"> Data Warehousing</FONT></TD>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="L1-29-6" VALUE="1"><FONT SIZE="2"> Desktop Video Conferencing</FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="L1-29-7" VALUE="1"><FONT SIZE="2"> Document Imaging/Management</FONT></TD>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="L1-29-8" VALUE="1"><FONT SIZE="2"> E-mail/Messaging</FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="L1-29-9" VALUE="1"><FONT SIZE="2"> Education/Training</FONT></TD>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="L1-29-10" VALUE="1"><FONT SIZE="2"> Graphics/Multimedia/Video</FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="L1-29-11" VALUE="1"><FONT SIZE="2"> Groupware</FONT></TD>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="L1-29-12" VALUE="1"><FONT SIZE="2"> Internet/Intranet</FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="L1-29-13" VALUE="1"><FONT SIZE="2"> Inventory Management</FONT></TD>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="L1-29-14" VALUE="1"><FONT SIZE="2"> Office Automation</FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="L1-29-15" VALUE="1"><FONT SIZE="2"> Research &amp; Development</FONT></TD>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="L1-29-16" VALUE="1"><FONT SIZE="2"> RAD/CASE</FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="L1-29-17" VALUE="1"><FONT SIZE="2"> RDBMS</FONT></TD>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="L1-29-18" VALUE="1"><FONT SIZE="2"> Security/Firewalls</FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="L1-29-19" VALUE="1"><FONT SIZE="2"> Storage Management</FONT></TD>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="L1-29-20" VALUE="1"><FONT SIZE="2"> Systems/Network Management</FONT></TD>
				</TR>
				<TR>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="L1-29-21" VALUE="1"><FONT SIZE="2"> Telephony</FONT></TD>
					<TD VALIGN="TOP"><INPUT TYPE="CHECKBOX" NAME="L1-29-22" VALUE="1"><FONT SIZE="2"> Other services</FONT></TD>
				</TR>
			</TABLE>
</P>
</CENTER>
			<P>
			<TABLE BORDER="0" CELLPADDING="0" WIDTH="475">
				<TR>
					<TD><B>3)</B> How many systems will you purchase?&nbsp;&nbsp;</TD>
					<TD><INPUT TYPE="TEXT" NAME="quantity" SIZE="25"></TD>
				</TR>
				<TR>
					<TD><B>4)</B> How soon will these computers be purchased?&nbsp;&nbsp;</TD>
					<TD><INPUT TYPE="TEXT" NAME="timeframe" SIZE="25"></TD>
				</TR>
				<TR>
					<TD><B>5)</B> How many PCs are currently in use at your location?&nbsp;&nbsp;</TD>
					<TD>						<SELECT NAME="L1-5">
						<OPTION VALUE="8" SELECTED>Click here </OPTION>
						<OPTION VALUE="1"> 1-10 </OPTION>
						<OPTION VALUE="2"> 11-24 </OPTION>
						<OPTION VALUE="3"> 25-49 </OPTION>
						<OPTION VALUE="4"> 50-99 </OPTION>
						<OPTION VALUE="5"> 100-249 </OPTION>
						<OPTION VALUE="6"> 250-499 </OPTION>
						<OPTION VALUE="7"> 500+ </OPTION>
						<OPTION VALUE="9"> Decline to state </OPTION>
						</SELECT>
					</TD>
				</TR>
				<TR>
					<TD><B>6)</B> How many employees work at your location?&nbsp;&nbsp;</TD>
					<TD>						<SELECT NAME="L1-6">
						<OPTION VALUE="5" SELECTED>Click here </OPTION>
						<OPTION VALUE="1"> 1-10 </OPTION>
						<OPTION VALUE="2"> 10-99 </OPTION>
						<OPTION VALUE="3"> 100-499 </OPTION>
						<OPTION VALUE="4"> 500+ </OPTION>
						<OPTION VALUE="6"> Decline to state </OPTION>
						</SELECT>
					</TD>
				</TR>
				<TR>
					<TD><B>7)</B> Who makes the purchasing decision?&nbsp;&nbsp;</TD>
					<TD>						<SELECT NAME="L1-7">
						<OPTION VALUE="6" SELECTED>Click here </OPTION>
						<OPTION VALUE="1"> Myself </OPTION>
						<OPTION VALUE="2"> Direct supervisor </OPTION>
						<OPTION VALUE="3"> Management </OPTION>
						<OPTION VALUE="4"> A committee </OPTION>
						<OPTION VALUE="5"> Decline to state </OPTION>
						</SELECT>
					</TD>
				</TR>
				<TR>
					<TD><B>8)</B> How did you become aware of AST?&nbsp;&nbsp;</TD>
					<TD>						<SELECT NAME="L1-42">
						<OPTION VALUE="1">Click here </OPTION>
						<OPTION VALUE="2"> Advice of friend or co-worker </OPTION>
						<OPTION VALUE="3"> An AST Mailing </OPTION>
						<OPTION VALUE="4"> Billboards/Airport posters </OPTION>
						<OPTION VALUE="5"> Current AST Owner </OPTION>
						<OPTION VALUE="6"> Info-Quote </OPTION>
						<OPTION VALUE="7"> Internet Search Engine </OPTION>
						<OPTION VALUE="8"> Magazine ad </OPTION>
						<OPTION VALUE="9"> Magazine article or story </OPTION>
						<OPTION VALUE="10"> PCWeek RFQ </OPTION>
						<OPTION VALUE="11"> Saw AST computer at a store </OPTION>
						<OPTION VALUE="12"> Television ad </OPTION>
						<OPTION VALUE="13"> Trade Show </OPTION>
						<OPTION VALUE="14"> Trade-in and Asset Inventory </OPTION>
						<OPTION VALUE="15"> Use AST computer at work </OPTION>
						<OPTION VALUE="16"> Decline to state </OPTION>
						</SELECT>
					</TD>
				</TR>
			</TABLE>
</P>
			<P><B>9)</B> AST Computer will introduce new products throughout the year. May we send you an e-mail message inviting
			you to visit the AST Web Site for the latest product announcement?<BR>
			<DD><INPUT TYPE="RADIO" NAME="Announcement" VALUE="Y"  CHECKED>Yes<BR>
			<DD><INPUT TYPE="RADIO" NAME="Announcement" VALUE="N">No</P>
			<P>AST realizes it is important to maintain the confidentiality of e-mail addresses that our customers provide.
			AST does not redistribute e-mail mailing lists.</P>
			<P>&nbsp;</P>

			<P>If you have any other specific requests regarding your purchase, please include them here. Please direct any
			comments about our Sales Match system to <A HREF="mailto:sales.match@ast.com">sales.match@ast.com</A>, or use the
			online <A HREF="../../ast/feedback/main.html" target="body">feedback form</A>.

<DD><TEXTAREA ROWS="5" COLS="40" NAME="comments"></TEXTAREA></P>

<P><CENTER><IMG SRC="../../images/border_lines_3.GIF" WIDTH="470" HEIGHT=
"13" ALIGN="BOTTOM" NATURALSIZEFLAG="3"></CENTER></P>

<P>When you submit this information, AST will match you with a local reseller who will provide you with a
quotation on the computer system you specified.  If you are a reseller looking for pricing information,
check out <A HREF="../../resellers/log_in/main.html" TARGET="body">the AST Ovation Web Site</A>, the premier reseller information site
on the Internet.</P>

<P><CENTER>
			<CENTER>
			<P><IMG SRC="../../welcome/images/spacer.gif" WIDTH="1" HEIGHT="25" ALIGN="BOTTOM" BORDER="0"><BR>
			<INPUT TYPE="SUBMIT" VALUE="Submit"><INPUT TYPE="RESET" VALUE="Clear and Start Again"><BR>
			<IMG SRC="../../welcome/images/spacer.gif" WIDTH="1" HEIGHT="25" ALIGN="BOTTOM" BORDER="0">
</CENTER>
		</TD>
	</TR>
	<TR>
		<TD>
			<P ALIGN="CENTER"><FONT SIZE="4">Thank you for contacting AST Sales!</FONT></P>
			<P ALIGN="CENTER"><FONT SIZE="2">For further information, call AST Research, Inc. at 1-800-876-4278;<BR>
			international inquiries call (+1) (714) 727-9292.</FONT></P>
			<P><FONT SIZE="2">1998 AST Corporate Sales - </FONT><A HREF="mailto:sales.corporate@ast.com"><FONT SIZE="2">sales.corporate@ast.com</FONT></A>
		</TD>
	</TR>
</TABLE>
</P>
<P>
<P ALIGN="CENTER">&nbsp;
<P>
</FORM>

</BODY>

</HTML>