<script language="javascript">

function validate(theform)
	{

         if (theform.Cust_name.value == "")
            {
            alert("You must enter a valid name in the Customer Name or Company field.");
            return (false);
            }

         if (theform.Cust_Email.value == "")
            {
            alert("Please specify an email address. Ex: firstname.lastname@domain.com.");
            return (false);
            }

         if (theform.Cust_Email.value == "john.doe@domain.com")
            {
            alert("Please specify an email address. Ex: firstname.lastname@domain.com.");
            return (false);
            }
          
         if (theform.Serial_Number.value == "")
            {
            alert("You must enter a valid 10-digit serial number in the Serial Number field.");
            return (false);
            }

         if (theform.Model_Number.value == "50????-???")
            {
            alert("You must enter a valid nine-digit part number in the Part Number field.");
            return (false);
            }

         if (theform.Cust_address2.value == "")
            {
            alert("You must enter a valid address in the Street Address field.");
            return (false);
            }

         if (theform.Cust_City.value == "")
            {
            alert("You must enter a valid city in the City field.");
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
      <td width="19%" valign="top"><h5>Customer or <br>
      Company Name:</h5>
      </td>
      <td width="81%" valign="top"><input type="text" name="Cust_name" size="20"></td>
    </tr>
    <tr>
      <td width="19%" valign="top"><h5>E-Mail Address:</h5>
      </td>
      <td width="81%" valign="top"><input type="text" name="Cust_Email" size="50"
      value="john.doe@domain.com"></td>
    </tr>
    <tr>
      <td width="19%" valign="top"><h5>Serial Number: </h5>
      </td>
      <td width="81%" valign="top"><input type="text" name="Serial_Number" size="20"></td>
    </tr>
    <tr>
      <td width="19%" valign="top"><h5>Part Number:</h5>
      </td>
      <td width="81%" valign="top"><input type="text" name="Model_Number" size="10"
      value="50????-???"></td>
    </tr>
    <tr>
      <td width="19%" valign="top"><h5>Suite/Apt #:</h5>
      </td>
      <td width="81%" valign="top"><input type="text" name="Cust_address1" size="35"></td>
    </tr>
    <tr>
      <td width="19%" valign="top"><h5>Street Address:</h5>
      </td>
      <td width="81%" valign="top"><input type="text" name="Cust_address2" size="35"></td>
    </tr>
    <tr>
      <td width="19%" valign="top"><h5>City: </h5>
      </td>
      <td width="81%" valign="top"><input type="text" name="Cust_City" size="35"></td>
    </tr>
    <tr>
      <td width="19%" valign="top"><h5>County and <br>
      Postal Code:</h5>
      </td>
      <td width="81%" valign="top"><input type="text" name="Cust_County" size="20"
      value="County"><input type="text" name="Cust_Zip" size="20" value="Postal Code"></td>
    </tr>
    <tr>
      <td width="19%" valign="top"><h5>Telephone:</h5>
      </td>
      <td width="81%" valign="top"><input type="text" name="Cust_Telephone" size="20"></td>
    </tr>
    <tr>
      <td width="19%" valign="top"><h5>Purchase Date:</h5>
      </td>
      <td width="81%" valign="top"><select name="Vmonth" size="1">
        <option value="1">January</option>
        <option value="2">February</option>
        <option value="3">March</option>
        <option value="4">April</option>
        <option value="5">May</option>
        <option value="6">June</option>
        <option value="7">July</option>
        <option value="8">August</option>
        <option value="9">September</option>
        <option value="10">October</option>
        <option value="11">November</option>
        <option value="12">December</option>
      </select><select name="Vday" size="1">
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
      </select><select name="Vyear" size="1">
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
      <td width="19%" valign="top"><h5>Country of Purchase:</h5>
      </td>
      <td width="81%" valign="top"><select name="Country_of_Purchase" size="1">
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
        <option>France</option>
        <option>French Southern Territories</option>
        <option>Gabon</option>
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
    <tr>
      <td width="19%" valign="top"><h5>Send me E-mail updates:</h5>
      </td>
      <td width="81%" valign="top"><table border="0" width="99%">
        <tr>
          <td valign="top" width="22%"><input type="radio" value="V3" checked name="R1"> Yes</td>
          <td valign="top" width="19%"><input type="radio" name="R1" value="V4">No</td>
          <td valign="top" width="117%"><font size="1">Choosing &quot;Yes&quot; will allow AST to
          send you important update information for your system. AST will not distribute your E-mail
          address to third-party vendors.</font></td>
        </tr>
      </table>
      </td>
    </tr>
  </table>
  <p><input type="submit" value="Submit" name="B1"><input type="reset" value="Reset"
  name="B2"></p>
</form>
</body>
</html>
