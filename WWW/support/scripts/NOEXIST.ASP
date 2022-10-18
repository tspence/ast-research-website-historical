<html><head>
<title>System Information</title>
<BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">


<CENTER>
<H1>"<%=Request("PN")%>" Part Number Not found.</h1>
</center>
<table border="0" align="default" width="570">
  <tr>
    <td>
    <p><font face="default">From this section, you can find specific information about your
    AST system. To find information:</font> <ol>
      <li><font face="default">Locate the 50????-??? part number on the back or bottom of your
        system's chassis. </font></li>
      <li><font face="default"><a href="help.htm#pn">Click here if you have problems locating the
        part number.</a></font></li>
      <li><font face="default">Enter the part number in the following box.</font></li>
      <li><font face="default">Click the GO! button. </font></li>
    </ol>
    <form method="POST" action="../scripts/systems.asp">
      <p><input type="text" name="pn" maxlength="11" size="20"> <input type="SUBMIT" value="GO!">
      </p>
    </form>
    <font face="default"><p>Even if you cannot find the part number for your system, use the
    Discovery Process to find information about your AST product on this Web site. The
    Discovery Process will guide you through a series of choices about your system that will
    help you identify a part number. Once you can associate the system's description with a
    part number, then you can click on the link to view information about the system.&nbsp; </font></p>
    <form method="POST" action="../scripts/select.asp">
      <p><select name="sysselect" size="1">
        <option selected value="help.htm">Discovery Process</option>
        <option value="discover/AdvaDisc.htm">Advantage!</option>
        <option value="discover/ADVENtdi.HTM">Adventure!</option>
        <option value="discover/bravdisc.HTM">Bravo</option>
        <option value="discover/servdisc.HTM">Server</option>
        <option value="discover/portdisc.htm">Portable</option>
        <option value="discover/prmiadis.HTM">Premmia</option>
        <option value="discover/Prmumdis.HTM">Premium</option>
      </select><input type="submit" name="select" value="NEXT&gt;"> </p>
    </form>
    </td>
  </tr>
  <tr>
    <td></td>
  </tr>
</table>
</body>
</HTML>








