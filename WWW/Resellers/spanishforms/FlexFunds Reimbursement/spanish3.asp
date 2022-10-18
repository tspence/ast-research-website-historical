<!--#include file="../formgen.inc"-->
<%
'''****************************************
'''THIS IS A DATABASE DRIVEN/LINKED FORM CONTACT AARON COONEY
'''BEFORE MODIFICATIONS ARE MADE!

'''****************************************
'''REQUIRED FORM OPERATORS

'''VARIABLES
Dim formID, formSubmitter

FormID = 9
FormSubmitter = "Latin America"
 

'''****************************************
'''REQUIRED/VALIDATED FIELDS

'''****************************************
'''FORM BODY
%>
<HTML>
<HEAD>
<TITLE>Programa De AST Flexfunds Solicitud De Reembolso</TITLE>
</HEAD>
<BODY BGCOLOR="#FFFFFF">
<IMG SRC="../logo-white.gif" ALIGN="left" BORDER="0">
<P>&nbsp;
<TABLE BORDER="0" CELLPADDING="3" CELLSPACING="0">
<TR>
<TD BGCOLOR="#000000" VALIGN="middle">
<FONT SIZE="6" COLOR="#FFFFFF">Programa De AST Flexfunds Solicitud De Reembolso</FONT>
</TD>
</TR>
</TABLE>
<B><P>Instrucciones</B>
<OL>
<LI>Adjunte a esta solicitud la documentaci&oacute;n de prueba de ejecuci&oacute;n (consulte el Folleto de Programas para los Distribuidores de AST) y env&iacute;ela a:</LI>

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
<FORM METHOD=post ACTION="submit.asp" NAME="FlexFundReimburse" >
<I>Por favor complete la siguiente informaci&oacute;n.</I>
<TABLE BORDER="0" CELLPADDING="2">
<TR>
<TD ALIGN="right">Nombre del Distribuidor</TD>
<TD><%Formtxtinput 1,35,"",""%></TD>
</TR>
<TR>
<TD ALIGN="right">N&uacute;mero de Autorizaci&oacute;n del Distribuidor:</TD>
<TD><%Formtxtinput 116,35,"",""%></TD>
</TR>
<TR>
<TD ALIGN="right">N&uacute;mero de Local:</TD>
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

<CENTER>
<TABLE BORDER=0 CELLSPACING=1 CELLPADDING=1 WIDTH=570>
<TR>
<TD VALIGN="TOP" ALIGN="Center" COLSPAN=5><B>ACTIVIDADES DE FLEXFUNDS<P>&nbsp;</TD>
</TR>
<TR>
<TD  VALIGN="middle"><B><FONT SIZE=1>PUBLICIDAD</B></FONT></TD>
<TD  VALIGN="middle" COLSPAN=2><B><FONT SIZE=1>PROMOCIONES</B></FONT></TD>
<TD  VALIGN="middle" COLSPAN=2><B><FONT SIZE=1>GASTOS DE NEGOCIOS</B></FONT></TD>
</TR>
<TR>
<TD  VALIGN="TOP" NOWRAP><FONT SIZE=2><%FormChkInput 153,"No","Local Newspaper"%>Peri&oacute;dicos Locales*</FONT></TD>
<TD  VALIGN="TOP" NOWRAP COLSPAN=2><FONT SIZE=2><%FormChkInput 154,"No","Direct Mail"%> Campa&ntilde;as de Correo Directo *</FONT></TD>
<TD  VALIGN="TOP" NOWRAP COLSPAN=2><FONT SIZE=2><%FormChkInput 155,"No","Sales and Service Training"%> Capacitaci&oacute;n en Ventas y Servicio</FONT></TD>
</TR>
<TR>
<TD  VALIGN="TOP"><FONT SIZE=2><%FormChkInput 156,"No","Magazines"%>Revistas*</FONT></TD>
<TD  VALIGN="TOP" COLSPAN=2><FONT SIZE=2><%FormChkInput 157,"No","TradeSeminars"%>Exhibiciones/Seminarios</FONT></TD>
<TD  VALIGN="TOP" COLSPAN=2><FONT SIZE=2><%FormChkInput 158,"No","Produced Videos"%>Videos producidos por AST</FONT></TD>
</TR>
<TR>
<TD  VALIGN="TOP"><FONT SIZE=2><%FormChkInput 159,"No","Radio"%>Radio **</FONT></TD>
<TD  VALIGN="TOP" COLSPAN=2><FONT SIZE=2><%FormChkInput 160,"No","Telemarketing"%>Telemercadeo *</FONT></TD>
<TD  VALIGN="TOP" COLSPAN=2><FONT SIZE=2><%FormChkInput 161,"No","Pronto Pro"%>Repuestos/Pronto! Pro</FONT></TD>
</TR>
<TR>
<TD  VALIGN="TOP"><FONT SIZE=2><%FormChkInput 162,"No","TV"%>TV *</FONT></TD>
<TD  VALIGN="TOP" COLSPAN=2><FONT SIZE=2><%FormChkInput 176,"No","Product Giveaway"%>Art&iacute;culos de promoci&oacute;n *</FONT></TD>
<TD  VALIGN="TOP" COLSPAN=2><FONT SIZE=2><%FormChkInput 178,"No","Demo Units"%>Unidades de Demostraci&oacute;n *</FONT></TD>
</TR>
<TR>
<TD  VALIGN="TOP"><FONT SIZE=2><%FormChkInput 179,"No","Regional Marketing"%>Revistas y Noticias Regionales **</FONT></TD>
<TD  VALIGN="TOP" COLSPAN=2><P>&nbsp;</TD>
<TD  VALIGN="TOP" COLSPAN=2><FONT SIZE=2><%FormChkInput 180,"No","Other"%>Otros *</FONT></TD>
</TR>
<TR>
<TD  VALIGN="TOP"><FONT SIZE=2><%FormChkInput 181,"No","Outdoor Advertising"%>Publicidad Exterior *</FONT></TD>
<TD  VALIGN="TOP" COLSPAN=2><P>&nbsp;</TD>
<TD  VALIGN="TOP" COLSPAN=2><P>&nbsp;</TD>
</TR>
<TR>
<TD  VALIGN="TOP"><FONT SIZE=2><P>P&aacute;ginas Amarillas</FONT></TD>
<TD  VALIGN="TOP" COLSPAN=2><P>&nbsp;</TD>
<TD  VALIGN="TOP" COLSPAN=2><P>&nbsp;</TD>
</TR>
<TR>
<TD  VALIGN="TOP"><FONT SIZE=2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%FormChkInput 182,"No","Trade Name"%>Nombre Comercial</FONT></TD>
<TD  VALIGN="TOP" COLSPAN=2><P>&nbsp;</TD>
<TD  VALIGN="TOP" COLSPAN=2><P>&nbsp;</TD>
</TR>
<TR>
<TD  VALIGN="TOP"><FONT SIZE=2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%FormChkInput 183,"No","Display"%>Anuncio *</FONT></TD>
<TD  VALIGN="TOP" COLSPAN=2><P>&nbsp;</TD>
<TD  VALIGN="TOP" COLSPAN=2><P>&nbsp;</TD>
</TR>
<TR>
<TD  VALIGN="TOP"><P>&nbsp;</TD>
<TD  VALIGN="TOP" COLSPAN=2><P>&nbsp;</TD>
<TD  VALIGN="TOP" COLSPAN=2><P>&nbsp;</TD>
</TR>
<TR>
<TD VALIGN="TOP" COLSPAN=4><FONT SIZE=1>* Requiere Previa Autorizaci&oacute;n<BR>
** Requiere Previa Autorizaci&oacute;n si es dise&ntilde;ado por el Distribuidor</FONT></TD>
</TR>
</TABLE>
<P>
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
</BODY>
</HTML>
