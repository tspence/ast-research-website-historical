<script language="javascript">

function validate(theform)
	{

         if (theform.Cust_name.value == "")
            {
            alert("Vous devez entrer une valeur valide dans le domaine de nom de client ou le domaine de la compagnie.");
            return (false);
            }

         if (theform.Cust_Email.value == "")
            {
            alert("S'il vous plaît spécifier une adresse de courier electronique. Exemple: prénom.nom de famille@domaine.com.");
            return (false);
            }

         if (theform.Cust_Email.value == "prénom.nom de famille@domaine.com")
            {
            alert("S'il vous plaît spécifier une adresse de courier electronique. Exemple: prénom.nom de famille@domaine.com.");
            return (false);
            }
          
         if (theform.Serial_Number.value == "")
            {
            alert("Vous devez entrer une valeur valide dans le domaine de numéro de série.");
            return (false);
            }

         if (theform.Model_Number.value == "50????-???")
            {
            alert("Vous devez entrer une valeur valide dans le domaine de numéro de pièce.");
            return (false);
            }

         if (theform.Cust_address2.value == "")
            {
            alert("Vous devez entrer une valeur valide dans le domaine d'adresse.");
            return (false);
            }

         if (theform.Cust_City.value == "")
            {
            alert("Vous devez entrer une valeur valide dans le domaine de ville.");
            return (false);
            }

}
	
</script>

<html>

<head>
<title>Warranty Registration</title>
</head>

<BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">

<h3><em>AST Warranty Registration - Asia Pacific</em></h3>

<p><strong><a href="eurregf.asp">En Français</a>&nbsp;&nbsp;&nbsp; <a href="eurregs.asp">En
Español</strong></a></p>

<form method="post" action="warranty.asp" name="reg" onsubmit="return validate(reg)">
  <input type="hidden" name="region" value="3"><table border="0" width="100%">
    <tr>
      <td width="19%" valign="top"><h5>Le client ou<br>
      la compagnie nommer<font size="3">:</font></h5>
      </td>
      <td width="81%" valign="top"><input type="text" name="Cust_name" size="20"></td>
    </tr>
    <tr>
      <td width="19%" valign="top"><h5>Adresse de courier<br>
      electronique<font size="3">:</font></h5>
      </td>
      <td width="81%" valign="top"><input type="text" name="Cust_Email" size="50"
      value="prénom.nom de famille@domaine.com"></td>
    </tr>
    <tr>
      <td width="19%" valign="top"><h5>Numéro de série<font size="3">: </font></h5>
      </td>
      <td width="81%" valign="top"><input type="text" name="Serial_Number" size="20"></td>
    </tr>
    <tr>
      <td width="19%" valign="top"><h5>Numéro de pièce:</h5>
      </td>
      <td width="81%" valign="top"><input type="text" name="Model_Number" size="10"
      value="50????-???"></td>
    </tr>
    <tr>
      <td width="19%" valign="top"><h5>Le courrier arrêter, la suite, ou<br>
      l'appartement numéroter:</h5>
      </td>
      <td width="81%" valign="top"><input type="text" name="Cust_address1" size="35"></td>
    </tr>
    <tr>
      <td width="19%" valign="top"><h5>D'adresse<font size="3">:</font></h5>
      </td>
      <td width="81%" valign="top"><input type="text" name="Cust_address2" size="35"></td>
    </tr>
    <tr>
      <td width="19%" valign="top"><h5>Ville<font size="3">:</font></h5>
      </td>
      <td width="81%" valign="top"><input type="text" name="Cust_City" size="35"></td>
    </tr>
    <tr>
      <td width="19%" valign="top"><h5>Le téléphone numéroter<font size="3"> <br>
      </font>(ex: 817-230-0591):</h5>
      </td>
      <td width="81%" valign="top"><input type="text" name="Cust_Telephone" size="20"></td>
    </tr>
    <tr>
      <td width="19%" valign="top"><h5>L' achat dater:</h5>
      </td>
      <td width="81%" valign="top"><select name="vmonth" size="1">
        <option value="1">Janvier</option>
        <option value="2">Février</option>
        <option value="3">Marchez</option>
        <option value="4">Avril</option>
        <option value="5">Mai</option>
        <option value="6">Juin</option>
        <option value="7">Juillet</option>
        <option value="8">Août</option>
        <option value="9">Septembre </option>
        <option value="10">Octobre</option>
        <option value="11">Novembre</option>
        <option value="12">Décembre</option>
      </select><select name="vday" size="1">
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
        <option value="6">6</option>
        <option value="7">7</option>
        <option value="8">8</option>
        <option value="9">9</option>
        <option value="10">10</option>
        <option value="11">11</option>
        <option value="12">12</option>
        <option value="13">13</option>
        <option value="14">14</option>
        <option value="15">15</option>
        <option value="16">16</option>
        <option value="17">17</option>
        <option value="18">18</option>
        <option value="19">19</option>
        <option value="20">20</option>
        <option value="21">21</option>
        <option value="22">22</option>
        <option value="23">23</option>
        <option value="24">24</option>
        <option value="25">25</option>
        <option value="26">26</option>
        <option value="27">27</option>
        <option value="28">28</option>
        <option value="29">29</option>
        <option value="30">30</option>
        <option value="31">31</option>
      </select><select name="vyear" size="1">
        <option value="1997">1997</option>
        <option value="1998">1998</option>
        <option value="1999">1999</option>
        <option value="2000">2000</option>
        <option value="2001">2001</option>
        <option value="2002">2002</option>
        <option value="2003">2003</option>
        <option value="2004">2004</option>
        <option value="2005">2005</option>
        <option value="2006">2006</option>
        <option value="2007">2007</option>
        <option value="2008">2008</option>
        <option value="2009">2009</option>
        <option value="2010">2010</option>
      </select></td>
    </tr>
    <tr>
      <td width="19%" valign="top"><h5>Le pays de l'achat<font size="3">:</font></h5>
      </td>
      <td width="81%" valign="top"><select name="Country_of_Purchase" size="1">
        <option>Australia</option>
        <option>Bangladesh</option>
        <option>Bhutan</option>
        <option>Brunei Darussalam</option>
        <option>Cambodia</option>
        <option>China</option>
        <option>Cocos (Keeling) Islands</option>
        <option>Fiji</option>
        <option>Guam</option>
        <option>Hong Kong</option>
        <option>Heard and McDonald Islands</option>
        <option>Indonesia</option>
        <option>India</option>
        <option>British Indian Ocean Territory</option>
        <option>Japan</option>
        <option>Kiribati</option>
        <option>Korea (North)</option>
        <option>Korea (South)</option>
        <option>Laos</option>
        <option>Sri Lanka</option>
        <option>Macau</option>
        <option>Malaysia</option>
        <option>Maldives</option>
        <option>Marshall Islands</option>
        <option>Micronesia</option>
        <option>Mongolia</option>
        <option>Northern Mariana Islands</option>
        <option>Myanmar</option>
        <option>Nauru</option>
        <option>Nepal</option>
        <option>New Caledonia</option>
        <option>New Zealand (Aotearoa)</option>
        <option>Niue</option>
        <option>Norfolk Island</option>
        <option>Palau</option>
        <option>Pakistan</option>
        <option>Papua New Guinea</option>
        <option>Philippines</option>
        <option>French Polynesia</option>
        <option>Pitcairn</option>
        <option>Samoa</option>
        <option>Seychelles</option>
        <option>Singapore</option>
        <option>Solomon Islands </option>
        <option>Thailand</option>
        <option>Tibet</option>
        <option>Taiwan</option>
        <option>East Timor</option>
        <option>Tokelau</option>
        <option>Tonga</option>
        <option>Tuvalu</option>
        <option>Uzbekistan</option>
        <option>Vanuatu</option>
        <option>Viet Nam</option>
      </select></td>
    </tr>
  </table>
  <p><input type="submit" value="Submit" name="B1"><input type="reset" value="Reset"
  name="B2"></p>
</form>
</body>
</html>
