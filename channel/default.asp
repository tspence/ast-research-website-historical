<html>

<head>
<title>AST Channel</title>

<script language="VBScript">

''
'' This sub runs when the page is done
'' loading.
''
Sub Window_onLoad()

	pthCONTROL_BACK.Play
	pthBACK_WELCOME.Play

end Sub

''
'' This sub runs when pthBACK_WELCOME
'' stops playing
''
sub pthBACK_WELCOME_onStop()

    imgLOGO.filters.blendtrans.Apply()
    imgLOGO.style.visibility = ""
    imgLOGO.filters.blendtrans.Play()

    imgICON_AMERICAS.filters.blendtrans.Apply()
    imgICON_AMERICAS.style.visibility = ""
    imgICON_AMERICAS.filters.blendtrans.Play()

end sub

''
'' This sub runs when imgICON_AMERICAS is done
'' fading in.
''
sub imgICON_AMERICAS_onFilterChange()

    divMainGraphic.filters.blendtrans.Apply()
    divMainGraphic.style.visibility = ""
    divMainGraphic.filters.blendtrans.Play()

end Sub

''
'' This sub runs when divMainGraphic is done
'' fading in.
''
sub divMainGraphic_onFilterChange()

    divMainGraphicTop.filters.blendtrans.Apply()
    divMainGraphicTop.style.visibility = ""
    divMainGraphicTop.filters.blendtrans.Play()

end sub

''
'' This sub runs when divMainGraphicTop is done
'' fading in.
''
sub divMainGraphicTop_onFilterChange()

	pthLeftNav.Play

end sub

''
'' The sub below handles mouseover
'' events on the side navigation.
''
sub divLeftNav_onmouseover
	blah = Window.Event.srcElement.id
        
	if(blah = "") then
		exit sub
	end if

	if(blah = "divLeftNav") then
		exit sub
	end if

	Window.Event.srcElement.src = "images/" + blah + "_on.gif"

	select Case blah

		case "bravo"
			imgDesktops.style.visibility = "visible"
		case "acent"
			imgNotebooks.style.visibility = "visible"
		case "serv"
			imgServers.style.visibility = "visible"
		case "mon"
			imgMonitors.style.visibility = "visible"
		case "sm"
			imgSmallBiz.style.visibility = "visible"
		case "large"
			imgLargeBiz.style.visibility = "visible"
		case "kare"
			imgKare.style.visibility = "visible"

	end select

end sub

''
'' The sub below handles mouseout
'' events on the side navigation
''
sub divLeftNav_onmouseout
	blah = Window.Event.srcElement.id
        
	if(blah = "") then
		exit sub
	end if

	if(blah = "divLeftNav") then
		exit sub
	end if

	Window.Event.srcElement.src = "images/" + blah + "_off.gif"

	imgDesktops.style.visibility = "hidden"
	imgNotebooks.style.visibility = "hidden"
	imgServers.style.visibility = "hidden"
	imgMonitors.style.visibility = "hidden"
	imgSmallBiz.style.visibility = "hidden"
	imgLargeBiz.style.visibility = "hidden"
'	imgKare.style.visibility = "hidden"

end sub



</script>

</head>

<body bgcolor="white">

<img id="imgCONTROL_BACK" src="images/CONTROL_BACK.GIF" style="position:absolute;top:0;left:-150;z-index:0">
<OBJECT ID="pthCONTROL_BACK" CLASSID="CLSID:D7A7D7C3-D47F-11D0-89D3-00A0C90833E6">
    <PARAM NAME="AutoStart" VALUE="0">
    <PARAM NAME="Bounce" VALUE="0">
    <PARAM NAME="Shape" VALUE="KeyFrame(2, -150,0, 0,0, 1.00)">
    <PARAM NAME="Target" VALUE="imgCONTROL_BACK">
</OBJECT>

<img id="imgLOGO" src="images/LOGO.GIF" style="filter:blendtrans(duration=1.5);visibility:hidden;position:absolute;top:10;left:0;z-index:1">
<img id="imgICON_AMERICAS" src="images/ICON_AMERICAS.GIF" style="filter:blendtrans(duration=1.5);visibility:hidden;position:absolute;top:65;left:0;z-index:1">


<img id="imgBACK_WELCOME" src="images/BACK_WELCOME.GIF" style="position:absolute;top:-100;left:130;z-index:1">
<OBJECT ID="pthBACK_WELCOME" CLASSID="CLSID:D7A7D7C3-D47F-11D0-89D3-00A0C90833E6">
    <PARAM NAME="AutoStart" VALUE="0">
    <PARAM NAME="Bounce" VALUE="0">
    <PARAM NAME="Shape" VALUE="KeyFrame(2, 130,-100, 130,0, 1.00)">
    <PARAM NAME="Target" VALUE="imgBACK_WELCOME">
</OBJECT>

<div id="divLeftNav" style="position:absolute;left:-150;top:150;z-index:1">
	<img src="images/prod.gif" id=""><br>
	<a href="http://www.ast.com/Products/bravo/bravo_ms/"><img border="0" src="images/bravo_off.gif" id="bravo"></a><br>
	<a href="http://www.ast.com/Products/ascentia/"><img border="0" src="images/acent_off.gif" id="acent"></a><br>
	<a href="http://www.ast.com/Products/server/"><img border="0" src="images/serv_off.gif" id="serv"></a><br>
	<a href="http://www.ast.com/products/AST_vision/"><img border="0" src="images/mon_off.gif" id="mon"></a><br>
	<img src="images/bus.gif" id=""><br>
	<a href="http://www.ast.com/business_customers/sm_med/"><img border="0" src="images/sm_off.gif" id="sm"></a><br>
	<a href="http://www.ast.com/business_customers/large/"><img border="0" src="images/large_off.gif" id="large"></a><br>
	<!-- <img src="images/kare_off.gif" id="kare"> -->
</div>
<OBJECT ID="pthLeftNav" CLASSID="CLSID:D7A7D7C3-D47F-11D0-89D3-00A0C90833E6">
    <PARAM NAME="AutoStart" VALUE="0">
    <PARAM NAME="Bounce" VALUE="0">
    <PARAM NAME="Shape" VALUE="KeyFrame(2, -150,150, 0,150, 1.00)">
    <PARAM NAME="Target" VALUE="divLeftNav">
</OBJECT>

<div id="divMainGraphic" style="filter:blendtrans(duration=1.5);position:absolute;left:122;top:50;z-index:1;visibility:hidden">
	<img src="images/mainstart.jpg" id="imgMainGraphic">
</div>

<div id="divMainGraphicTop" style="filter:blendtrans(duration=1.5);position:absolute;left:122;top:50;z-index:2;visibility:hidden">
	<img src="images/mainstart_top.jpg" id="imgMainGraphicTop">
</div>

<img id="imgDesktops" src="images/desktops.jpg" style="position:absolute;left:128;top:233;z-index:2;visibility:hidden">
<img id="imgNotebooks" src="images/notebooks.jpg" style="position:absolute;left:128;top:233;z-index:2;visibility:hidden">
<img id="imgServers" src="images/Servers.jpg" style="position:absolute;left:128;top:233;z-index:2;visibility:hidden">
<img id="imgMonitors" src="images/monitors.jpg" style="position:absolute;left:128;top:233;z-index:2;visibility:hidden">

<img id="imgSmallBiz" src="images/smallbus.jpg" style="position:absolute;left: 122;top:186;z-index:2;visibility:hidden">
<img id="imgLargeBiz" src="images/large.jpg" style="position:absolute;left: 122;top:186;z-index:2;visibility:hidden">
<!--
<img id="imgKare" src="images/kare.jpg" style="position:absolute;left: 122;top:186;z-index:2;visibility:hidden">
-->
</body>

</html>