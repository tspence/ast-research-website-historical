<!--#include file="../formgen.inc"-->
<%
'''****************************************
'''THIS IS A DATABASE DRIVEN/LINKED FORM CONTACT AARON COONEY
'''BEFORE MODIFICATIONS ARE MADE!

'''****************************************
'''REQUIRED FORM OPERATORS

'''VARIABLES
Dim formID, formSubmitter

FormID = 10 
FormSubmitter = "Latin America"
 


'''****************************************
'''REQUIRED/VALIDATED FIELDS

'''****************************************
'''FORM BODY
%>

<HTML>
<HEAD>
<TITLE>Formulario De Solicitud De Unidad De Demostracion</TITLE>
</HEAD>
<BODY BGCOLOR="#FFFFFF">
<IMG SRC="../logo-white.gif" ALIGN="left" BORDER="0">
<P>&nbsp;
<TABLE BORDER="0" CELLPADDING="1" CELLSPACING="0">
<TR>
<TD BGCOLOR="#000000" VALIGN="middle">
<FONT SIZE="5" COLOR="#FFFFFF">Formulario De Solicitud De Unidad De Demostracion
</TD>
</TR>
</TABLE>
<P>&nbsp;
<P>&nbsp;
<HR SIZE="2" WIDTH="100%" COLOR="#000000" NOSHADE ALIGN="center">
<FORM METHOD=post ACTION="submit.asp" NAME="DemoUnit" >
<TABLE BORDER="0" CELLPADDING="1">
<TR>
<TD ALIGN="right"><P>Fecha:</TD>
<TD><%Formtxtinput 42,10,"",""%></TD>
</TR>
<TR>
<TD ALIGN="right">No. Autorizaci&oacute;n:</TD>
<TD><%Formtxtinput 118,35,"",""%></TD>
</TR>
</TABLE>

<FONT SIZE=1><I>&nbsp;&nbsp;&nbsp;Para solicitar precio y disponibilidad de las Unidades de Demostraci&oacute;n, llame a la Administraci&oacute;n de Ventas de AST<BR>
  &nbsp;&nbsp;&nbsp;(714) 727-8859</I></FONT>
<HR SIZE="2" WIDTH="100%" COLOR="#000000" NOSHADE ALIGN="center">
<B>INFORMACION DE LA EMPRESA</B>
<P><B><I>Facturara</I></B>
<TABLE BORDER="0" CELLPADDING="2">
<TR>
<TD ALIGN="right">Nombre de la Empresa:</TD>
<TD><%Formtxtinput 1,35,"",""%></TD>
</TR>
<TR>
<TD ALIGN="right">Persona Encargada:</TD>
<TD><%Formtxtinput 2,35,"",""%></TD>
</TR>
<TR>
<TD ALIGN="right">Posici&oacute;n:</TD>
<TD><%Formtxtinput 116,35,"",""%></TD>
</TR>
<TD ALIGN="right">Direcci&oacute;n:</TD>
<TD><%Formtxtinput 3,35,"",""%></TD>
</TR>
<TR>
<TD ALIGN="right">Ciudad:</TD>
<TD><%Formtxtinput 5,35,"",""%></TD>
</TR>
<TR>
<TD ALIGN="right">Estado/Pa&iacute;s:</TD>
<TD><%Formtxtinput 6,35,"",""%></TD>
</TR>
<TR>
<TD ALIGN="right">C&oacute;digo Postal:</TD>
<TD><%Formtxtinput 7,35,"",""%></TD>
</TR>
<TR>
<TD ALIGN="right">Tel&eacute;fono:</TD>
<TD><%Formtxtinput 8,35,"",""%></TD>
</TR>
<TR>
<TD ALIGN="right">FAX:</TD>
<TD><%Formtxtinput 9,35,"",""%></TD>
</TR>
</TABLE>
<P>
<B><I>Direccion De Envio</I></B>
<TABLE BORDER="0" CELLPADDING="2">
<TR>
<TD ALIGN="right">Nombre de la Empresa:</TD>
<TD><%Formtxtinput 91,35,"",""%></TD>
</TR>
<TR>
<TD ALIGN="right">Persona Encargada:</TD>
<TD><%Formtxtinput 90,35,"",""%></TD>
</TR>
<TR>
<TD ALIGN="right">Posici&oacute;n:</TD>
<TD><%Formtxtinput 117,35,"",""%></TD>
</TR>
<TD ALIGN="right">Direcci&oacute;n:</TD>
<TD><%Formtxtinput 4,35,"",""%></TD>
</TR>
<TR>
<TD ALIGN="right">Ciudad:</TD>
<TD><%Formtxtinput 136,35,"",""%></TD>
</TR>
<TR>
<TD ALIGN="right">Estado/Pa&iacute;s:</TD>
<TD><%Formtxtinput 137,35,"",""%></TD>
</TR>
<TR>
<TD ALIGN="right">C&oacute;digo Postal:</TD>
<TD><%Formtxtinput 138,35,"",""%></TD>
</TR>
<TR>
<TD ALIGN="right">Tel&eacute;fono:</TD>
<TD><%Formtxtinput 92,35,"",""%></TD>
</TR>
<TR>
<TD ALIGN="right">FAX:</TD>
<TD><%Formtxtinput 93,35,"",""%></TD>
</TR>
</TABLE>
<HR SIZE="2" WIDTH="100%" COLOR="#000000" NOSHADE ALIGN="center">
<CENTER>
<B>INFORMACION DE COMPRA DE UNIDAD DE DEMOSTRACION</B>
<TABLE BORDER="0" CELLSPACING=1 CELLPADDING=1 WIDTH=570>
<TR>
<TD WIDTH="61" VALIGN="TOP"><B>Descripci&oacute;n Producto:</B></TD>
<TD WIDTH="22%" VALIGN="TOP"><B>N&uacute;mero de Parte(s):</B></TD>
<TD WIDTH="17%" VALIGN="TOP"><B>Precio Unidad:</B></TD>
</TR>
<TR>
<TD WIDTH="61%" VALIGN="TOP"><%Formtxtinput 116,50,"",""%></TD>
<TD WIDTH="22%" VALIGN="TOP"><%Formtxtinput 75,20,"",""%></TD>
<TD WIDTH="17%" VALIGN="TOP"><%Formtxtinput 97,10,"",""%></TD>
</TR>
<TR>
<TD WIDTH="61%" VALIGN="TOP"><%Formtxtinput 117,50,"",""%></TD>
<TD WIDTH="22%" VALIGN="TOP"><%Formtxtinput 76,20,"",""%></TD>
<TD WIDTH="17%" VALIGN="TOP"><%Formtxtinput 98,10,"",""%></TD>
</TR>
<TR>
<TD WIDTH="61%" VALIGN="TOP"><%Formtxtinput 118,50,"",""%></TD>
<TD WIDTH="22%" VALIGN="TOP"><%Formtxtinput 77,20,"",""%></TD>
<TD WIDTH="17%" VALIGN="TOP"><%Formtxtinput 99,10,"",""%></TD>
</TR>
<TR>
<TD WIDTH="61%" VALIGN="TOP"><%Formtxtinput 119,50,"",""%></TD>
<TD WIDTH="22%" VALIGN="TOP"><%Formtxtinput 78,20,"",""%></TD>
<TD WIDTH="17%" VALIGN="TOP"><%Formtxtinput 100,10,"",""%></TD>
</TR>
<TR>
<TD WIDTH="61%" VALIGN="TOP"><%Formtxtinput 120,50,"",""%></TD>
<TD WIDTH="22%" VALIGN="TOP"><%Formtxtinput 79,20,"",""%></TD>
<TD WIDTH="17%" VALIGN="TOP"><%Formtxtinput 101,10,"",""%></TD>
</TR>
<TR>
<TD COLSPAN="2" WIDTH="61%" VALIGN="TOP" ALIGN="right"><B>Total</B></TD>
<TD WIDTH="17%" VALIGN="TOP"><%Formtxtinput 102,10,"",""%></TD>
</TR>
</TABLE>
</CENTER>
<HR SIZE="2" WIDTH="100%" COLOR="#000000" NOSHADE ALIGN="center">
<B>METADO DE PAGO</B>
<P><%FormRdoInput 85,"No","Flexfund","Yes"%>Deducir de AST FlexFund<BR>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(Se verificar&aacute; la cantidad disponible en AST FlexFunds y el total ser&aacute; deducido autom&aacute;ticamente)<BR>
<%FormRdoInput 85,"No","Check Moneyorder","No"%>Adjunto Cheque de Caja o Giro Postal<BR>
<%FormRdoInput 85,"No","AMEX","No"%>American Express<BR>
<%FormRdoInput 85,"No","Mastercard","No"%>MasterCard<BR>
<%FormRdoInput 85,"No","Visa","No"%>VISA<BR>
<P>
<TABLE BORDER="0" CELLPADDING="1">
<TR>
<TD ALIGN="right">Tarjeta de Cr&eacute;dito #:</TD>
<TD><%Formtxtinput 86,20,"",""%></TD>
</TR>
<TR>
<TD ALIGN="right">Fecha Expiraci&oacute;n:</TD>
<TD><%Formtxtinput 87,20,"",""%></TD>
</TR>
</TABLE>
<HR SIZE="2" WIDTH="100%" COLOR="#000000" NOSHADE ALIGN="center">
 Por la presente certifico que los Productos que mi compa&ntilde;&iacute;a compre a trav&eacute;s
 del Programa Unidad de Demostraci&oacute;n se mantendr&aacute;n dentro de las ubicaciones de ventas
 de mi empresa por un per&iacute;odo cont&iacute;nuo de cuatro meses. La Unidad de Demostraci&oacute;n 
 no se puede revender, donar, rentar, prestar o transferir de ning&uacute;n modo por un per&iacute;odo
 de cuatro meses. Los productos de AST comprados a trav&eacute;s del programa Unidad de Demostraci&oacute;n
 no son elegibles para la Protecci&oacute;n de Precios o la Rotaci&oacute;n de inventario. Tengo entendido que
 si no cumplo con las bases de este programa, tendr&aacute; como resultado la terminaci&oacute;n de mi 
 participaci&oacute;n en el Programa de Unidad de Demostraci&oacute;n de AST por un per&iacute;odo de 12 meses.

<P>Nombre de la Persona que Autoriza:<%Formtxtinput 88,30,"",""%>Fecha:<%Formtxtinput 43,10,"",""%>
<P>&nbsp;
<CENTER>
<%FormButton 13%>
</CENTER>
<%
FormHdnInput 11, formID
FormHdnInput 12, formSubmitter
%>
</FORM>
<P>&nbsp;<P>&nbsp;
</BODY>
</HTML>
