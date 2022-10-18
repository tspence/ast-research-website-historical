<!--#include file="../formgen.inc"-->
<%
'''****************************************
'''THIS IS A DATABASE DRIVEN/LINKED FORM CONTACT AARON COONEY
'''BEFORE MODIFICATIONS ARE MADE!

'''****************************************
'''REQUIRED FORM OPERATORS

'''VARIABLES
Dim formID, formSubmitter

FormID = 12 
FormSubmitter = "Latin America" 
 

'''****************************************
'''REQUIRED/VALIDATED FIELDS

'''****************************************
'''FORM BODY

%>



<HTML>
<HEAD>
<TITLE>Program De AST FlexFunds Solicitud de Aprobacion Previa</TITLE>
</HEAD>
<BODY BGCOLOR="#FFFFFF">
<IMG SRC="../logo-white.gif" ALIGN="left" BORDER="0">
<P>&nbsp;
<TABLE BORDER="0" CELLPADDING="3" CELLSPACING="0">
<TR>
<TD BGCOLOR="#000000" VALIGN="middle">
<FONT SIZE="6" COLOR="#FFFFFF">Program De AST FlexFunds Solicitud de Aprobacion Previa</FONT>
</TD>
</TR>
</TABLE>
<P>Instrucciones:
<OL>
<LI>Llene esta aplicaci&oacute;n para solicitar con anticipaci&oacute;n autorizaci&oacute;n de AST en actividades de programas de mercadeo.</LI>
</OL>
<HR SIZE="2" WIDTH="100%" COLOR="#000000" NOSHADE ALIGN="center">
<B>Informaci&oacute;n General:</B>
<FORM METHOD=post ACTION="Submit.asp" NAME="FlexFundReimbursement">
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
<B>Distribuidor</B> (Debe completarse):

<P>Tipo de publicidad o evento (Se necesita una muestra):<BR>
<%Formtxtinput 118,45,"",""%><BR>
Nombre de la publicaci&oacute;n o evento:<BR>
<%Formtxtinput 119,45,"",""%><BR>
Fecha(s) del evento, fecha de circulaci&oacute;n o distribuci&oacute;n:<BR>
<%Formtxtinput 120,45,"",""%><BR>
N&uacute;mero de personas esperadas o circulaci&oacute;n:<BR>
<%Formtxtinput 121,45,"",""%><BR>
Producto(s) de AST que se presentar&aacute;n:<BR>
<%Formtxtinput 122,45,"",""%><BR>
C&oacute;mo se exhibir&aacute; el producto(s):<BR>
<%Formtxtinput 123,45,"",""%><BR>
Costo total anticipado:<BR>
<%Formtxtinput 124,45,"",""%><BR>
Porci&oacute;n dedicada exclusivamente a los productos de AST:<BR>
<%Formtxtinput 125,45,"",""%><BR>
Otros detalles:<BR>
<%Formtxtareainput 56,5,50,""%><BR>
<P>&nbsp;
<%
FormHdnInput 11, formID
FormHdnInput 12, formSubmitter
%>
<CENTER>
<%
FormButton 13
%>
</CENTER>
</FORM>
<P>&nbsp;
<P>&nbsp;
</BODY>
</HTML>
