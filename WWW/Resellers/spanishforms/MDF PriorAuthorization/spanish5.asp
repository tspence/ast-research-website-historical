<!--#include file="../formgen.inc"-->
<%
'''****************************************
'''THIS IS A DATABASE DRIVEN/LINKED FORM CONTACT AARON COONEY
'''BEFORE MODIFICATIONS ARE MADE!

'''****************************************
'''REQUIRED FORM OPERATORS

'''VARIABLES
Dim formID, formSubmitter

FormID = 11
FormSubmitter = "Latin America"
 

'''****************************************
'''REQUIRED/VALIDATED FIELDS


'''****************************************
'''FORM BODY
%>
<HTML>
<HEAD>
<TITLE>Program De MDF AST (Fondos para el Desarrollo de Mercado) Solicitud de Aprobacion Previa</TITLE>
</HEAD>
<BODY BGCOLOR="#FFFFFF">
<IMG SRC="../logo-white.gif" ALIGN="left" BORDER="0">
<P>&nbsp;
<TABLE BORDER="0" CELLPADDING="3" CELLSPACING="0">
<TR>
<TD BGCOLOR="#000000" VALIGN="middle">
<FONT SIZE="6" COLOR="#FFFFFF">Program De MDF AST (Fondos para el Desarrollo de Mercado) Solicitud de Aprobacion Previa</FONT>
</TD>
</TR>
</TABLE>
<P>Instrucciones:
<OL>
<LI>Llene esta aplicaci&oacute;n para solicitar con anticipaci&oacute;n autorizaci&oacute;n de AST en actividades de programas de mercadeo.</LI>
</OL>
<FORM METHOD=post ACTION="Submit.asp" NAME="MDFPrior" >
<HR SIZE="2" WIDTH="100%" COLOR="#000000" NOSHADE ALIGN="center">
<B>Informaci&oacute;n General</B>
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
<TD ALIGN="right">N&uacute;mero de Autorizaci&oacute;n Previa:</TD>
<TD><%Formtxtinput 117,35,"",""%></TD>
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
<B>Cu&aacute;l es es objetivo del uso de los Fondos para el Desarrollo de Mercadeo:</B><BR>
<FONT="1">Por favor inclu&iacute;r la siguiente informaci&oacute;n: (1) Nombre del evento o actividad,  (2)  Audiencia a alcanzar,
(3)  Costo estimado de esta actividad, (4) Otros detalles.</FONT>
<P>&nbsp;
<%FormTxtAreaInput 56,5,50,""%>
<P><B>Como beneficiar&aacute; directamente esta actividad a la venta de productos AST?</B>
<P>&nbsp;
<%FormTxtAreaInput 57,5,50,""%>
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
