<script language="javascript">

function validate(theform)
	{

         if (theform.Cust_name.value == "")
            {
            alert("Debes entrar un valor válido en el Nombre de Cliente o Compañía.");
            return (false);
            }

         if (theform.Cust_Email.value == "")
            {
            alert("Favor de especificar una dirección de email. Ej: nombre.apellido@domain.com.");
            return (false);
            }

         if (theform.Cust_Email.value == "nombre.apellido@domain.com")
            {
            alert("Favor de especificar una dirección de email. Ej: nombre.apellido@domain.com.");
            return (false);
            }
          
         if (theform.Serial_Number.value == "")
            {
            alert("Debes entrar un valor válido en el número de serie.");
            return (false);
            }

         if (theform.Model_Number.value == "50????-???")
            {
            alert("Debes entrar un valor válido en el Numero de Parte.");
            return (false);
            }

         if (theform.Cust_address2.value == "")
            {
            alert("Debes entrar un valor válido en la Dirección Fisica.");
            return (false);
            }


         if (theform.Cust_City.value == "")
            {
            alert("Debes entrar un valor válido en la Ciudad.");
            return (false);
            }

         if (theform.Purchase_Date.value == "")
            {
            alert("Debes entrar un valor válido en la fecha de compra.");
            return (false);
            }

         if (theform.Cust_zip.value == "")
            {
            alert("Debes entrar un valor válido en el Codigo Postal.");
            return (false);
            }

}
	
</script>

<html>

<head>
<title>Warranty Registration</title>
</head>

<BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">

<h3><em>AST Warranty Registration - Americas</em></h3>

<p><strong><a href="amrregf.asp">En Français</a>&nbsp;&nbsp;&nbsp; <a href="amrregs.asp">En
Español</strong></a></p>

<form method="post" action="warranty.asp" name="reg" onsubmit="return validate(reg)">
  <input type="hidden" name="Region" value="1"><table border="0" width="100%"
  cellspacing="1">
    <tr>
      <td width="20%" valign="top"><h5>Nombre de Cliente<br>
      o de Compañía:</h5>
      </td>
      <td width="80%" valign="top"><input type="text" name="Cust_name" size="20"></td>
    </tr>
    <tr>
      <td width="20%" valign="top"><h5>Dirección de E-mail:</h5>
      </td>
      <td width="80%" valign="top"><input type="text" name="Cust_Email" size="50"
      value="nombre.apellido@domain.com"></td>
    </tr>
    <tr>
      <td width="20%" valign="top"><h5>Número de serie:</h5>
      </td>
      <td width="80%" valign="top"><input type="text" name="Serial_Number" size="20"></td>
    </tr>
    <tr>
      <td width="20%" valign="top"><h5>Número de la parte:</h5>
      </td>
      <td width="80%" valign="top"><input type="text" name="Model_Number" size="10"
      value="50????-???"></td>
    </tr>
    <tr>
      <td width="20%" valign="top"><h5>Parada de Correo, suite, o # de<br>
      Apartamento:</h5>
      </td>
      <td width="80%" valign="top"><input type="text" name="Cust_address1" size="35"></td>
    </tr>
    <tr>
      <td width="20%" valign="top"><h5>Dirección fisica:</h5>
      </td>
      <td width="80%" valign="top"><input type="text" name="Cust_address2" size="35"></td>
    </tr>
    <tr>
      <td width="20%" valign="top"><h5>Ciudad:</h5>
      </td>
      <td width="80%" valign="top"><input type="text" name="Cust_City" size="35"></td>
    </tr>
    <tr>
      <td width="20%" valign="top"><h5>Estado/Provincia, <br>
      y Codigo Postal:</h5>
      </td>
      <td width="80%" valign="top"><select name="Cust_state" size="1">
        <option selected value="AL">Alabama</option>
        <option value="AB">Alberta</option>
        <option value="AA">Armed Forces America (except Canada)</option>
        <option value="AE">Armed Forces (Europe, Canada, Middle East, Africa)</option>
        <option value="AP">Armed Forces Pacific</option>
        <option value="AK">Alaska</option>
        <option value="AS">American Samoa</option>
        <option value="AR">Arkansas</option>
        <option value="AZ">Arizona</option>
        <option value="BC">British Colombia</option>
        <option value="CA">California</option>
        <option value="CO">Colorado</option>
        <option value="CT">Connecticut</option>
        <option value="DE">Deleware</option>
        <option value="DC">District of Columbia</option>
        <option value="FM">Federated States of Micronesia</option>
        <option value="FL">Florida</option>
        <option value="GA">Georgia</option>
        <option value="GU">Guam</option>
        <option value="HI">Hawaii</option>
        <option value="ID">Idaho</option>
        <option value="IL">Illinois</option>
        <option value="IN">Indiana</option>
        <option value="IA">Iowa</option>
        <option value="KS">Kansas</option>
        <option value="KY">Kentucky</option>
        <option value="LA">Louisiana</option>
        <option value="ME">Maine</option>
        <option value="MB">Manitoba</option>
        <option value="MD">Maryland</option>
        <option value="MA">Massachusetts</option>
        <option value="MH">Marshall Islands</option>
        <option value="MI">Michigan</option>
        <option value="MN">Minnesota</option>
        <option value="MS">Mississippi</option>
        <option value="MO">Missouri</option>
        <option value="MT">Montana</option>
        <option value="NE">Nebraska</option>
        <option value="NV">Nevada</option>
        <option value="NW">Newfoundland</option>
        <option value="NH">New Hampshire</option>
        <option value="NJ">New Jersey</option>
        <option value="NM">New Mexico</option>
        <option value="NY">New York</option>
        <option value="NC">North Carolina</option>
        <option value="ND">North Dakota</option>
        <option value="MP">Northern Mariana Islands</option>
        <option value="OH">Ohio</option>
        <option value="ON">Ontario</option>
        <option value="OK">Oklahoma</option>
        <option value="OR">Oregon</option>
        <option value="PW">Palau</option>
        <option value="PA">Pennsylvania</option>
        <option value="PR">Puerto Rico</option>
        <option value="QU">Quebec</option>
        <option value="RI">Rhode Island</option>
        <option value="SK">Saskatchewan</option>
        <option value="SC">South Carolina</option>
        <option value="SD">South Dakota</option>
        <option value="TN">Tennessee</option>
        <option value="TE">Terre-Neuve</option>
        <option value="TX">Texas</option>
        <option value="UT">Utah</option>
        <option value="VT">Vermont</option>
        <option value="VA">Virginia</option>
        <option value="VI">Virgin Islands</option>
        <option value="WA">Washington</option>
        <option value="WI">Wisconsin</option>
        <option value="WV">West Virginia</option>
        <option value="WY">Wyoming</option>
      </select><input type="text" name="Cust_zip" size="10"></td>
    </tr>
    <tr>
      <td width="20%" valign="top"><h5>Teléfono <br>
      (Ej: 817-230-0591):</h5>
      </td>
      <td width="80%" valign="top"><input type="text" name="Cust_Telephone" size="20"></td>
    </tr>
    <tr>
      <td width="20%" valign="top"><h5>Fecha de compra:</h5>
      </td>
      <td width="80%" valign="top"><select name="D1" size="1">
        <option value="1">Enero</option>
        <option value="2">Febrero</option>
        <option value="3">Marzo</option>
        <option value="4">Abril</option>
        <option value="5">Mayo</option>
        <option value="6">Junio</option>
        <option value="7">Julio</option>
        <option value="8">Agosto</option>
        <option value="9">Septiembre</option>
        <option value="10">Octubre</option>
        <option value="11">Noviembre</option>
        <option value="12">Diciembre</option>
      </select><select name="D2" size="1">
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
      </select><select name="D3" size="1">
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
      <td width="20%" valign="top"><h5>País de Compra:</h5>
      </td>
      <td width="80%" valign="top"><select name="Country_of_Purchase" size="1">
        <option> Antigua and Barbuda</option>
        <option> Anguilla</option>
        <option> Netherlands Antilles</option>
        <option> Antarctica</option>
        <option> Argentina</option>
        <option> American Samoa</option>
        <option> Aruba</option>
        <option> Barbados</option>
        <option> Bermuda</option>
        <option> Bolivia</option>
        <option> Brazil</option>
        <option> Bahamas</option>
        <option> Belize</option>
        <option> Canada</option>
        <option> Cook Islands</option>
        <option> Chile</option>
        <option> Colombia</option>
        <option> Costa Rica</option>
        <option> Cuba</option>
        <option> Christmas Island</option>
        <option> Dominica</option>
        <option> Dominican Republic</option>
        <option> Ecuador</option>
        <option> Falkland Islands (Malvinas)</option>
        <option> Grenada</option>
        <option> French Guiana</option>
        <option> Greenland</option>
        <option> Guinea</option>
        <option> Guadeloupe</option>
        <option> S. Georgia and S. Sandwich Isls. </option>
        <option> Guatemala</option>
        <option> Guyana</option>
        <option> Honduras</option>
        <option> Haiti</option>
        <option> Jamaica</option>
        <option> Saint Kitts and Nevis</option>
        <option> Cayman Islands</option>
        <option> Saint Lucia</option>
        <option> Martinique</option>
        <option> Montserrat</option>
        <option> Mexico</option>
        <option> Network</option>
        <option> Nicaragua</option>
        <option> Panama</option>
        <option> Peru</option>
        <option> St. Pierre and Miquelon </option>
        <option> Puerto Rico</option>
        <option> Paraguay</option>
        <option> St. Helena</option>
        <option> El Salvador</option>
        <option> Turks and Caicos Islands</option>
        <option> Trinidad and Tobago</option>
        <option> US Minor Outlying Islands</option>
        <option selected value="United States">United States</option>
        <option> US Military</option>
        <option> Uruguay</option>
        <option> Saint Vincent and the Grenadines</option>
        <option>Venezuela</option>
        <option> Virgin Islands (British)</option>
        <option> Virgin Islands (U.S.)</option>
      </select></td>
    </tr>
  </table>
  <p><input type="submit" value="Submit" name="B1"><input type="reset" value="Reset"
  name="B2"></p>
</form>
</body>
</html>
