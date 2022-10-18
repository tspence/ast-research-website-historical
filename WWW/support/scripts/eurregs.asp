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

         if (theform.Purchase_Date.value == "")
            {
            alert("Debes entrar un valor válido en la fecha de compra.");
            return (false);
            }

         if (theform.Purchase_Date.value == "12/25/1997")
            {
            alert("Debes entrar un valor válido en la fecha de compra.");
            return (false);
            }

         if (theform.Cust_City.value == "")
            {
            alert("Debes entrar un valor válido en la Ciudad.");
            return (false);
            }

}
	
</script>

<html>

<head>
<title>Warranty Registration</title>
</head>

<BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">

<h3><em>AST Warranty Registration - Europe</em></h3>

<p><strong><a href="eurregf.asp">En Français</a>&nbsp;&nbsp;&nbsp; <a href="eurregs.asp">En
Español</strong></a></p>

<form method="post" action="warranty.asp" name="reg" onsubmit="return validate(reg)">
  <input type="hidden" name="region" value="2"><table border="0" width="100%">
    <tr>
      <td width="29%"><b>Nombre de Cliente o de Compañía:</b></td>
      <td width="71%"><input type="text" name="Cust_name" size="20"></td>
    </tr>
    <tr>
      <td width="29%"><b>Dirección de E-mail:</b></td>
      <td width="71%"><input type="text" name="Cust_Email" size="50"
      value="nombre.apellido@domain.com"></td>
    </tr>
    <tr>
      <td width="29%"><b>Número de serie:</b><strong> </strong></td>
      <td width="71%"><input type="text" name="Serial_Number" size="20"></td>
    </tr>
    <tr>
      <td width="29%"><strong>Número de la parte:</strong></td>
      <td width="71%"><input type="text" name="Model_Number" size="10" value="50????-???"></td>
    </tr>
    <tr>
      <td width="29%"><strong>Parada de Correo, suite, o # de Apartamento:</strong></td>
      <td width="71%"><input type="text" name="Cust_address1" size="35"></td>
    </tr>
    <tr>
      <td width="29%"><b>Dirección fisica:</b></td>
      <td width="71%"><input type="text" name="Cust_address2" size="35"></td>
    </tr>
    <tr>
      <td width="29%"><b>Ciudad:</b><strong> </strong></td>
      <td width="71%"><input type="text" name="Cust_City" size="35"></td>
    </tr>
    <tr>
      <td width="29%"><strong>Teléfono <em>(Ej: 817-230-0591)</em>:</strong></td>
      <td width="71%"><input type="text" name="Cust_Telephone" size="20"></td>
    </tr>
    <tr>
      <td width="29%"><strong>Fecha de compra:</strong></td>
      <td width="71%"><select name="D1" size="1">
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
      <td width="29%"><strong>País de Compra:</strong></td>
      <td width="71%"><select name="Country_of_Purchase" size="1">
        <option>Albania</option>
        <option>Algeria</option>
        <option>Afghanistan</option>
        <option>Andorra</option>
        <option>Angola</option>
        <option>Armenia</option>
        <option>Austria</option>
        <option>Azerbaijan</option>
        <option>Bahrain</option>
        <option>Belgium</option>
        <option>Belarus</option>
        <option>Benin</option>
        <option>Bosnia and Herzegovina</option>
        <option>Bouvet Island</option>
        <option>Botswana</option>
        <option>Bulgaria</option>
        <option>Burkina Faso</option>
        <option>Burundi</option>
        <option>Cameroon</option>
        <option>Cape Verde</option>
        <option>Central African Republic</option>
        <option>Chad</option>
        <option>Comoros</option>
        <option>Congo</option>
        <option>Cote D'Ivoire (Ivory Coast)</option>
        <option>Czechoslovakia (former)</option>
        <option>Cyprus</option>
        <option>Czech Republic</option>
        <option>Denmark</option>
        <option>Djibouti</option>
        <option>Germany</option>
        <option>Egypt</option>
        <option>Estonia</option>
        <option>Eritrea</option>
        <option>Ethiopia</option>
        <option>Faroe Islands</option>
        <option>Finland</option>
        <option>France</option>
        <option>French Southern Territories</option>
        <option>Gabon</option>
        <option>Gambia</option>
        <option>Georgia</option>
        <option>Ghana</option>
        <option>Gibraltar</option>
        <option>Equatorial Guinea</option>
        <option>Great Britain (UK)</option>
        <option>Greece</option>
        <option>Guinea-Bissau</option>
        <option>Croatia (Hrvatska)</option>
        <option>Hungary</option>
        <option>Iran</option>
        <option>Iraq</option>
        <option>Iceland</option>
        <option>Ireland</option>
        <option>Israel</option>
        <option>Italy</option>
        <option>Jordan</option>
        <option>Kazakhstan</option>
        <option>Kenya</option>
        <option>Kyrgyzstan</option>
        <option>Kuwait</option>
        <option>Latvia</option>
        <option>Lebanon</option>
        <option>Lesotho</option>
        <option>Liechtenstein</option>
        <option>Liberia</option>
        <option>Libya</option>
        <option>Lithuania</option>
        <option>Luxembourg</option>
        <option>Macedonia</option>
        <option>Madagascar</option>
        <option>Mali</option>
        <option>Malawi</option>
        <option>Malta</option>
        <option>Mauritania</option>
        <option>Mauritius</option>
        <option>Mayotte</option>
        <option>Moldova</option>
        <option>Monaco</option>
        <option>Morocco</option>
        <option>Mozambique</option>
        <option>Namibia</option>
        <option>Netherlands</option>
        <option>Niger</option>
        <option>Nigeria</option>
        <option>Norway</option>
        <option>Oman</option>
        <option>Poland</option>
        <option>Portugal</option>
        <option>Qatar</option>
        <option>Reunion</option>
        <option>Romania</option>
        <option>Russian Federation</option>
        <option>Rwanda</option>
        <option>San Marino</option>
        <option>Sao Tome and Principe</option>
        <option>Saudi Arabia</option>
        <option>Senegal</option>
        <option>Sierra Leone</option>
        <option>Slovenia</option>
        <option>Slovak Republic</option>
        <option>Somalia</option>
        <option>South Africa</option>
        <option selected value="Spain">Spain</option>
        <option>Sudan</option>
        <option>Suriname</option>
        <option>Svalbard and Jan Mayen Islands</option>
        <option>Swaziland</option>
        <option>Sweden</option>
        <option>Switzerland</option>
        <option>Syria</option>
        <option>Tajikistan</option>
        <option>Tanzania</option>
        <option>Togo</option>
        <option>Turkmenistan</option>
        <option>Tunisia</option>
        <option>Turkey</option>
        <option>Uganda</option>
        <option>Ukraine</option>
        <option>United Arab Emirates</option>
        <option>United Kingdom</option>
        <option>Vatican City State</option>
        <option>Wallis and Futuna Islands</option>
        <option>Western Sahara</option>
        <option>Yemen</option>
        <option>Yugoslavia</option>
        <option>Zambia</option>
        <option>Zaire</option>
        <option>Zimbabwe</option>
      </select></td>
    </tr>
  </table>
  <p><input type="submit" value="Submit" name="B1"><input type="reset" value="Reset"
  name="B2"></p>
</form>
</body>
</html>
