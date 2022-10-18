<!--#include file="../formgen.inc"-->
<%
'''****************************************
'''THIS IS A DATABASE DRIVEN/LINKED FORM CONTACT AARON COONEY
'''BEFORE MODIFICATIONS ARE MADE!

'''****************************************
'''REQUIRED FORM OPERATORS

'''VARIABLES
Dim formID, formSubmitter

FormID = 8 
FormSubmitter = "Latin America"
 


'''****************************************
'''REQUIRED/VALIDATED FIELDS

'''****************************************
'''FORM BODY
%>
<HTML>
<HEAD>
<TITLE>Formulario De Proteccion De Precios</TITLE>
</HEAD>
<BODY BGCOLOR="#FFFFFF">
<IMG SRC="../logo-white.gif" ALIGN="left" BORDER="0">
<P>&nbsp;
<TABLE BORDER="0" CELLPADDING="3" CELLSPACING="0">
<TR>
<TD BGCOLOR="#000000" VALIGN="middle">
<FONT SIZE="6" COLOR="#FFFFFF">Formulario De Proteccion De Precios</FONT>
</TD>
</TR>
</TABLE>
<P>&nbsp;
<BR>
AST verificar&aacute; todos las facturas antes de emitir un cr&eacute;dito.
Por favor comun&iacute;quese con el Representante de Ventas Local de AST para mayor informaci&oacute;n sobre la Pol&iacute;tica de Protecci&oacute;n de Precio de AST.
Este formulario debe enviarse en un per&iacute;odo de 30 d&iacute;as posteriores a la disminuci&oacute;n de precios.
No se aceptar&aacute; despu&eacute;s de esta fecha.
<HR SIZE="2" WIDTH="100%" COLOR="#000000" NOSHADE ALIGN="center">
<B>INFORMACION DEL DISTRIBUIDOR</B>
<FORM METHOD=post ACTION="submit.asp" NAME="PriceProtection" >
<I>Por favor complete la siguiente informaci&oacute;n.</I>
<TABLE BORDER="0" CELLPADDING="2">
<TR>
<TD ALIGN="right">Nombre del Distribuidor:</TD>
<TD><%Formtxtinput 1,35,"",""%></TD>
</TR>
<TR>
<TD ALIGN="right">N&uacute;mero de Cliente de AST:</TD>
<TD><%Formtxtinput 116,35,"",""%></TD>
</TR>
<TR>
<TD ALIGN="right">Persona Encargada:</TD>
<TD><%Formtxtinput 2,35,"",""%></TD>
</TR>
<TR>
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
</TABLE>
<HR SIZE="2" WIDTH="100%" COLOR="#000000" NOSHADE ALIGN="center">
<B>PRODUCTO EN INVENTARIO PARA PROTECCION DE PRECIO</B>
<TABLE BORDER="0" CELLPADDING="2">
<TR>
<TD ALIGN="left">Nombre del Producto/Modelo:</TD>
<TD ALIGN="right">Fecha de Vigencia:</TD>
</TR>
<TR>
<TD COLSPAN="2"><%FormTxtAreaInput 56,5,60,""%></TD>
</TR>
</TABLE>
<P><%FormChkInput 153,"No","Automatic Price Protect"%>
Emisi&oacute;n de Precio Autom&aacute;tica para los productos arriba mencionados comprados durante
los &uacute;ltimos 30 d&iacute;as.
<HR SIZE="2" WIDTH="100%" COLOR="#000000" NOSHADE ALIGN="center">
<B>FIRMA AUTORIZADA</B>
<P>
Certifico que la informaci&oacute;n arriba anotada es verdadera y correcta.  Tengo entendido que &uacute;nicamente el producto(s) de AST comprado directamente de AST son elegibles para protecci&oacute;n de precio.

<TABLE BORDER="0" CELLPADDING="2">
<TR>
<TD ALIGN="right">Nombre de la persona que Autoriza:</TD>
<TD><%Formtxtinput 88,35,"",""%></TD>
</TR>
<TR>
<TD ALIGN="right">Fecha:</TD>
<TD><%Formtxtinput 42,10,"",""%></TD>
</TR>
</TABLE>
<P>&nbsp;
<CENTER>
<%FormButton 13%>
</CENTER>
<%
FormHdnInput 11, formID
FormHdnInput 12, formSubmitter
%>
</FORM>
</BODY>
</HTML>
