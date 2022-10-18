<!--#include file="../formgen.inc"-->
<%
'''****************************************
'''THIS IS A DATABASE DRIVEN/LINKED FORM CONTACT AARON COONEY
'''BEFORE MODIFICATIONS ARE MADE!

'''****************************************
'''REQUIRED FORM OPERATORS

'''VARIABLES
'''Dim formID, formSubmitter

FormID = 7
FormSubmitter = "Latin America"
 
'''REQUIRED/VALIDATED FIELDS


'''****************************************
'''FORM BODY
%>

<HTML>
<HEAD>
<TITLE>Programa De MDF De AST (Fondos Para el Desarrollo de Mercadeo) Solicitud de Reembolso</TITLE>
</HEAD>
<BODY BGCOLOR="#FFFFFF">
<IMG SRC="../logo-white.gif" ALIGN="left" BORDER="0">
<P>&nbsp;
<TABLE BORDER="0" CELLPADDING="3" CELLSPACING="0">
<TR>
<TD BGCOLOR="#000000" VALIGN="middle">
<FONT SIZE="6" COLOR="#FFFFFF">Programa De MDF De AST (Fondos Para el Desarrollo de Mercadeo) Solicitud de Reembolso</FONT>
</TD>
</TR>
</TABLE>
<B><P>Instrucciones</B>
<OL>
<LI>Env&iacute;e esta solicitud junto con la Solicitud de Aprobaci&oacute;n Previa debidamente aprobada y la documentaci&oacute;n de prueba de ejecuci&oacute;n a:</LI>

<P>AST Computer<BR>
Marketing Programs Administration (M/S 1-55)<BR>
P.O. Box 57005<BR>
Irvine, CA  92619-7005<BR>
Tel&eacute;fono: (800) 288-1278<BR>
FAX: (714) 727-8563<BR>
<P>
<LI>Las solicitudes aprobadas se reembolsar&aacute;n por cheque.</LI>
</OL>

<HR SIZE="2" WIDTH="100%" COLOR="#000000" NOSHADE ALIGN="center">
<FORM METHOD=post ACTION="submit.asp" NAME="MDFReimburse" >
<I>Por favor complete la siguiente informaci&oacute;n.</I>
<TABLE BORDER="0" CELLPADDING="2">
<TR>
<TD ALIGN="right">Nombre de la Empresa:</TD>
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

<CENTER>
<B>ACTIVIDADES DE MDF</B>
<TABLE BORDER="0" CELLSPACING=1 CELLPADDING=1 WIDTH=570>
<TR>
<TD WIDTH="61" VALIGN="TOP"><B>Descripci&oacute;n:</B></TD>
<TD WIDTH="22%" VALIGN="TOP"><B>Fecha:</B></TD>
<TD WIDTH="17%" VALIGN="TOP"><B>Costo:</B></TD>
</TR>
<TR>
<TD WIDTH="61%" VALIGN="TOP"><%Formtxtinput 116,50,"",""%></TD>
<TD WIDTH="22%" VALIGN="TOP"><%Formtxtinput 42,20,"",""%></TD>
<TD WIDTH="17%" VALIGN="TOP"><%Formtxtinput 97,10,"",""%></TD>
</TR>
<TR>
<TD WIDTH="61%" VALIGN="TOP"><%Formtxtinput 117,50,"",""%></TD>
<TD WIDTH="22%" VALIGN="TOP"><%Formtxtinput 43,20,"",""%></TD>
<TD WIDTH="17%" VALIGN="TOP"><%Formtxtinput 98,10,"",""%></TD>
</TR>
<TR>
<TD WIDTH="61%" VALIGN="TOP"><%Formtxtinput 118,50,"",""%></TD>
<TD WIDTH="22%" VALIGN="TOP"><%Formtxtinput 44,20,"",""%></TD>
<TD WIDTH="17%" VALIGN="TOP"><%Formtxtinput 99,10,"",""%></TD>
</TR>
<TR>
<TD WIDTH="61%" VALIGN="TOP"><%Formtxtinput 119,50,"",""%></TD>
<TD WIDTH="22%" VALIGN="TOP"><%Formtxtinput 45,20,"",""%></TD>
<TD WIDTH="17%" VALIGN="TOP"><%Formtxtinput 100,10,"",""%></TD>
</TR>
<TR>
<TD WIDTH="61%" VALIGN="TOP"><%Formtxtinput 120,50,"",""%></TD>
<TD WIDTH="22%" VALIGN="TOP"><%Formtxtinput 46,20,"",""%></TD>
<TD WIDTH="17%" VALIGN="TOP"><%Formtxtinput 101,10,"",""%></TD>
</TR>
<TR>
<TD COLSPAN="2" WIDTH="61%" VALIGN="TOP" ALIGN="right"><B>Cantidad Total para Reembolso:</B></TD>
<TD WIDTH="17%" VALIGN="TOP"><%Formtxtinput 102,10,"",""%></TD>
</TR>
</TABLE>
<P>&nbsp;
<%FormButton 13%>
<P>&nbsp;
</CENTER>
<%
FormHdnInput 11, formID
FormHdnInput 12, formSubmitter
%>
</FORM>
</BODY>
</HTML>
