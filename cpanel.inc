<!--#include file="basic.inc"-->
<%

dim panel_dir, panel_icon, panel_menu, panel_items, panel_html
dim InOtherSite

'******************************************************************************
'*
'* Define the KARE control panel variables
'*
'******************************************************************************
function kare_panel()

  panel_dir   = "cpanel/kare/"
  panel_icon  = "americas"
  
  panel_menu  = Array("ast","products","services","support","kare","contacts","ast_worldwide","search")
  panel_items = Array(Array("newsroom","history","contacts","feedback"), _
                      Array("bravo","ascentia","server","ast_vision","custom","ordering"), _
                      Array("manuals","warranties","asc_locator"), _
                      Array("faq","file_index","bulletins","web_forum","phone_support","system"), _
                      Array("procedures","installed_base","reports"), _
                      Array("kare","sales_contacts","service_contacts"), _
                      Array(""), _
                      Array(""))
end function


'******************************************************************************
'*
'* Define the Ovation control panel variables
'*
'******************************************************************************
function ovation_panel()
  
  '*************** Gold Level Resellers
  if session("ovation_level") = "G" then
    panel_dir   = "cpanel/ovation/gold/"
    panel_menu  = Array("ast","products_reseller","services","support","marketing_tools","sales_tools","training","search")
    panel_icon  = "gold"
    panel_items = Array(Array("newsroom","history","contacts","feedback"), _
                        Array("bravo","ascentia","server","ast_vision","sourcing","ast_wares"), _
                        Array("manuals","warranties"), _
                        Array("faq","file_index","bulletins","web_forum","phone_support","system"), _
                        Array("marketing_temp","trade_show","business_workshops","advertising_tools","development_tools"), _
                        Array("end_user_leads","seed_units","demo_units","notebook_purchase","volume_incentive","profitable_programs","your_representative","gov_edu"), _
                        Array("business_skills","sales_skills"), _
                        Array(""), _
                        Array(""))

  '*************** Silver Level Resellers
  else
    if session("ovation_level") = "S" then
      panel_dir   = "cpanel/ovation/silver/"
      panel_menu  = Array("ast","products_reseller","services","support","marketing_tools","sales_tools","search")
      panel_icon  = "silver"
      panel_items = Array(Array("newsroom","history","contacts","feedback"), _
                          Array("bravo","ascentia","server","ast_vision","sourcing","ast_wares"), _
                          Array("manuals","warranties"), _
                          Array("faq","file_index","bulletins","web_forum","phone_support","system"), _
                          Array("marketing_temp","development_tools"), _
                          Array("end_user_leads","demo_units","notebook_purchase","profitable_programs","your_representative","gov_edu"), _
                          Array(""), _
                          Array(""))

    '*************** Bronze Level Resellers
    else
      panel_dir   = "cpanel/ovation/bronze/"
      panel_menu  = Array("ast","products_reseller","services","support","sales_tools","search")
      panel_icon  = "bronze"
      panel_items = Array(Array("newsroom","history","contacts","feedback"), _
                          Array("bravo","ascentia","server","ast_vision","sourcing","ast_wares"), _
                          Array("manuals","warranties"), _
                          Array("faq","file_index","bulletins","web_forum","phone_support","system"), _
                          Array("demo_units","notebook_purchase","profitable_programs","gov_edu"), _
                          Array(""), _
                          Array(""))
    end if
  end if
  
end function


'******************************************************************************
'*
'* Define the Latin America control panel variables
'*
'******************************************************************************
function latin_panel()

  panel_dir   = "cpanel/latin/"
  panel_icon  = "latin"
   
  panel_menu  = Array("ast","products","services","support","ventas_mercadeo","resellers","ast_worldwide","search")
  panel_items = Array(Array("newsroom","history","contacts","feedback"), _
                      Array("bravo","ascentia","server","ast_vision"), _
                      Array("manuals","asc_locator"), _
                      Array("faq","file_index","bulletins","phone_support","system"), _
                      Array("sales","marketing"), _
                      Array("latin_tools","register"), _
                      Array(""), _
                      Array(""))

end function


'******************************************************************************
'*
'* Define the Regular control panel variables
'*
'******************************************************************************
function control_panel()

  panel_dir   = "cpanel/normal/"
  panel_icon  = "americas"
   
  panel_menu  = Array("ast","products","services","support","business_customers","resellers","ast_worldwide","search")
  panel_items = Array(Array("newsroom","history","contacts","feedback","employment"), _
                      Array("bravo","ascentia","server","ast_vision"), _
                      Array("manuals","warranties","asc_locator"), _
                      Array("faq","file_index","bulletins","web_forum","phone_support","system"), _
                      Array("sm_med","large","programs","kare"), _
                      Array("log_in","register"), _
                      Array(""), _
                      Array(""))

end function


'******************************************************************************
'*
'* Build a java applet control panel
'*
'******************************************************************************
function applet()
  dim MenuText

  '************** Print out the standard items
  Response.Write("<PARAM NAME=""dir"" VALUE=""" + panel_dir + """>" + newline)
  Response.Write("<PARAM NAME=""icon"" VALUE=""" + panel_icon + """>" + newline)
  Response.Write("<PARAM NAME=""html"" VALUE=""" + panel_html + """>" + newline)
  
  '************** Now build the menu parameters
  for i = 0 to ubound(panel_menu)
    if i = 0 then
      MenuText = MenuText + panel_menu(i)
    else
      MenuText = MenuText + "," + panel_menu(i)
    end if
  next
  Response.Write("<PARAM NAME=""menu"" VALUE=""" + MenuText + """>" + newline)

  '************** Now build the submenu parameters
  for i = 0 to ubound(panel_menu)
    MenuText = ""
    for j = 0 to ubound(panel_items(i))
      if j = 0 then
        MenuText = MenuText + panel_items(i)(j)
      else
        MenuText = MenuText + "," + panel_items(i)(j)
      end if
    next
    Response.Write("<PARAM NAME=""menu" + cstr(i + 1) + """ VALUE=""" + MenuText + """>" + newline)
  next
end function


'******************************************************************************
'*
'* Build a non-java, image-only control panel
'*
'******************************************************************************
function image_panel()
  dim MenuText

%>
   <A HREF="welcome<%=panel_html%>" TARGET=body><IMG SRC="<%=panel_dir%>icon_<%=panel_icon%>.gif" BORDER=0></A><BR>
<%  Response.Write("" + newline)
  
  '************** Now build the menu parameters
  for i = 0 to ubound(panel_menu)
  
    '************** Draw the control panel image map if necessary
    if len(panel_items(i)(0)) = 0 then
%>
      <A HREF="<%=panel_menu(i) + panel_html%>" TARGET=body><IMG SRC="<%=panel_dir%>tab_<%=panel_menu(i)%>.gif" BORDER=0 VSPACE=1></A><BR>
<%
    else
%>
      <MAP NAME="tab_<%=panel_menu(i)%>">
        <AREA SHAPE="rect" COORDS="12,0,112,15" HREF="<%=panel_menu(i) + panel_html%>" TARGET="body">
        <AREA SHAPE="rect" COORDS="1,0,12,15" HREF="control_panel.asp?open=<%=cstr(i)%>">
      </MAP>
      <IMG SRC="<%=panel_dir%>tab_<%=panel_menu(i)%>.gif" BORDER=0 VSPACE=1 USEMAP="#tab_<%=panel_menu(i)%>" ISMAP WIDTH=116 HEIGHT=16><BR>
<%
    end if
    
    '************** If this control panel tab is open, draw menu items
    if Request("open") = cstr(i) then
%>
      <IMG SRC="<%=panel_dir%>text_<%=panel_menu(i)%>.gif" BORDER=0 VSPACE=1 USEMAP="#text_<%=panel_menu(i)%>" ISMAP WIDTH=122><BR>
      <MAP NAME="text_<%=panel_menu(i)%>">
<%
      y = 0
      for j = 0 to ubound(panel_items(i))
        if len(panel_items(i)(j)) > 0 then
%>
          <AREA SHAPE="rect" COORDS="2,<%=y%>,120,<%=y+11%>" HREF="<%=panel_menu(i) + "/" + panel_items(i)(j) + panel_html%>" TARGET="body">
<%
          y = y + 12
        end if
      next
%>
      </MAP>
<%
    end if
  next

end function


'******************************************************************************
'*
'* Load the proper control panel into memory
'*
'******************************************************************************
panel_html = "/main.html"
if session("source") = "kare" then
  call kare_panel()
  InOtherSite = true
else
  if session("source") = "ovation" or session("source") = "ast" then
    call ovation_panel()
    InOtherSite = true
  else
    if LatinAmerica = 1 then
      panel_html = "/spanish.html"
      call latin_panel()
      InOtherSite = true
    else
      call control_panel()
    end if
  end if
end if


%>