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

         if (theform.Purchase_Date.value == "")
            {
            alert("You must enter a valid date in the Purchase Date field.");
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

<h3><em>AST Warranty Registration - Europe</em></h3>

<p><strong><a href="eurregf.asp">En Français</a>&nbsp;&nbsp;&nbsp; <a href="eurregs.asp">En
Español</strong></a></p>

<form method="post" action="warranty.asp" name="reg" onsubmit="return validate(reg)">
  <input type="hidden" name="region" value="2"><table border="0" width="100%">
    <tr>
      <td width="29%"><strong>Le client ou la compagnie nommer<font size="3">:</strong></font></td>
      <td width="71%"><input type="text" name="Cust_name" size="20"></td>
    </tr>
    <tr>
      <td width="29%"><b>Adresse de courier electronique</b><font size="3"><strong>:</strong></font></td>
      <td width="71%"><input type="text" name="Cust_Email" size="50"
      value="prénom.nom de famille@domaine.com"></td>
    </tr>
    <tr>
      <td width="29%"><b>Numéro de série</b><font size="3"><strong>: </strong></font></td>
      <td width="71%"><input type="text" name="Serial_Number" size="20"></td>
    </tr>
    <tr>
      <td width="29%"><strong>Numéro de<i><b> </b></i>pièce:</strong></td>
      <td width="71%"><input type="text" name="Model_Number" size="10" value="50????-???"></td>
    </tr>
    <tr>
      <td width="29%"><strong>Le courrier arrêter<font size="3">, la suite, ou <br>
      l'appartement numéroter:</strong></font></td>
      <td width="71%"><input type="text" name="Cust_address1" size="35"></td>
    </tr>
    <tr>
      <td width="29%"><b>D'adresse</b><font size="3"><strong>:</strong></font></td>
      <td width="71%"><input type="text" name="Cust_address2" size="35"></td>
    </tr>
    <tr>
      <td width="29%"><b>Ville</b><font size="3"><strong>:</strong></font></td>
      <td width="71%"><input type="text" name="Cust_City" size="35"></td>
    </tr>
    <tr>
      <td width="29%"><strong>Le téléphone numéroter<font size="3"> <em>(ex: 817-230-0591)</em>:</strong></font></td>
      <td width="71%"><input type="text" name="Cust_Telephone" size="20"></td>
    </tr>
    <tr>
      <td width="29%"><strong>L' achat dater:</strong></td>
      <td width="71%"><select name="D1" size="1">
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
      <td width="29%"><strong>Le pays de l'achat<font size="3">:</strong></font></td>
      <td width="71%"><select name="Country_of_Purchase" size="1">
        <option>Andorra</option>
        <option>Austria</option>
        <option>United Arab Emirates</option>
        <option>Afghanistan</option>
        <option>Albania</option>
        <option>Armenia</option>
        <option>Angola</option>
        <option>Azerbaijan</option>
        <option>Bosnia and Herzegovina</option>
        <option>Belgium</option>
        <option>Burkina Faso</option>
        <option>Bulgaria</option>
        <option>Bahrain</option>
        <option>Burundi</option>
        <option>Benin</option>
        <option>Bouvet Island</option>
        <option>Botswana</option>
        <option>Belarus</option>
        <option>Chad</option>
        <option>Central African Republic</option>
        <option>Congo</option>
        <option>Switzerland</option>
        <option>Cote D'Ivoire (Ivory Coast)</option>
        <option>Cameroon</option>
        <option>Czechoslovakia (former)</option>
        <option>Cape Verde</option>
        <option>Cyprus</option>
        <option>Czech Republic</option>
        <option>Germany</option>
        <option>Djibouti</option>
        <option>Denmark</option>
        <option>Algeria</option>
        <option>Estonia</option>
        <option>Egypt</option>
        <option>Western Sahara</option>
        <option>Eritrea</option>
        <option>Spain</option>
        <option>Ethiopia</option>
        <option>Finland</option>
        <option>Faroe Islands</option>
        <option selected value="France">France</option>
        <option>French Southern Territories</option>
        <option>Gabon</option>
        <option>Great Britain (UK)</option>
        <option>Georgia</option>
        <option>Ghana</option>
        <option>Gibraltar</option>
        <option>Gambia</option>
        <option>Equatorial Guinea</option>
        <option>Greece</option>
        <option>Guinea-Bissau</option>
        <option>Croatia (Hrvatska)</option>
        <option>Hungary</option>
        <option>Ireland</option>
        <option>Israel</option>
        <option>Iraq</option>
        <option>Iran</option>
        <option>Iceland</option>
        <option>Italy</option>
        <option>Jordan</option>
        <option>Kenya</option>
        <option>Kyrgyzstan</option>
        <option>Comoros</option>
        <option>Kuwait</option>
        <option>Kazakhstan</option>
        <option>Lebanon</option>
        <option>Liechtenstein</option>
        <option>Liberia</option>
        <option>Lesotho</option>
        <option>Lithuania</option>
        <option>Luxembourg</option>
        <option>Latvia</option>
        <option>Libya</option>
        <option>Morocco</option>
        <option>Monaco</option>
        <option>Moldova</option>
        <option>Madagascar</option>
        <option>Macedonia</option>
        <option>Mali</option>
        <option>Mauritania</option>
        <option>Malta</option>
        <option>Mauritius</option>
        <option>Malawi</option>
        <option>Mozambique</option>
        <option>Namibia</option>
        <option>Niger</option>
        <option>Nigeria</option>
        <option>Netherlands</option>
        <option>Norway</option>
        <option>Oman</option>
        <option>Poland</option>
        <option>Portugal</option>
        <option>Qatar</option>
        <option>Reunion</option>
        <option>Romania</option>
        <option>Russian Federation</option>
        <option>Rwanda</option>
        <option>Saudi Arabia</option>
        <option>Sudan</option>
        <option>Sweden</option>
        <option>Slovenia</option>
        <option>Svalbard and Jan Mayen Islands</option>
        <option>Slovak Republic</option>
        <option>Sierra Leone</option>
        <option>San Marino</option>
        <option>Senegal</option>
        <option>Somalia</option>
        <option>Suriname</option>
        <option>Sao Tome and Principe</option>
        <option>Syria</option>
        <option>Swaziland</option>
        <option>Togo</option>
        <option>Tajikistan</option>
        <option>Turkmenistan</option>
        <option>Tunisia</option>
        <option>Turkey</option>
        <option>Tanzania</option>
        <option>Ukraine</option>
        <option>Uganda</option>
        <option>United Kingdom</option>
        <option>Vatican City State</option>
        <option>Wallis and Futuna Islands</option>
        <option>Yemen</option>
        <option>Mayotte</option>
        <option>Yugoslavia</option>
        <option>South Africa</option>
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
