<script language="javascript">

function validate(theform)
	{

         if (theform.Cust_name.value == "")
            {
            alert("You must enter a valid value in the Customer Name or Company field.");
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
            alert("You must enter a valid value in the Serial Number field.");
            return (false);
            }

         if (theform.Model_Number.value == "50????-???")
            {
            alert("You must enter a valid value in the Part Number field.");
            return (false);
            }

         if (theform.Cust_address2.value == "")
            {
            alert("You must enter a valid value in the Street Address field.");
            return (false);
            }


         if (theform.Cust_City.value == "")
            {
            alert("You must enter a valid value in the City field.");
            return (false);
            }


         if (theform.Cust_zip.value == "")
            {
            alert("You must enter a valid value in the Zip Code field.");
            return (false);
            }

}
	
</script>

<html>

<head>
<title>Warranty Registration</title>
</head>

<BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">

<table border="0" width="570">
  <tr>
    <td><h3><em>AST Warranty Registration - Americas</em></h3>
    <p><strong><a href="amrregf.asp">En Français</a>&nbsp;&nbsp;&nbsp; <a href="amrregs.asp">En
    Español</strong></a></p>
    <form method="post" action="warranty2.asp" name="reg" onsubmit="return validate(reg)">
      <input type="hidden" name="Region" value="1"><table border="0" width="101%">
        <tr>
          <td width="26%" align="left" valign="top"><h5>Customer or <br>
          Company Name:</h5>
          </td>
          <td width="74%" valign="top"><input <%= request.form ("cust_name")%> type="text"
          name="Cust_name" size="20"></td>
        </tr>
        <tr>
          <td width="26%" align="left" valign="top"><h5>E-Mail Address:</h5>
          </td>
          <td width="74%" valign="top"><input <%= request.form("cust_email")%> type="text"
          name="Cust_Email" size="50" value="john.doe@domain.com"></td>
        </tr>
        <tr>
          <td width="26%" align="left" valign="top"><h5>Serial Number: </h5>
          </td>
          <td width="74%" valign="top"><input <%= request.form("serial_number")%> type="text"
          name="Serial_Number" size="20"></td>
        </tr>
        <tr>
          <td width="26%" align="left" valign="top"><h5>Part Number:</h5>
          </td>
          <td width="74%" valign="top"><input <%= request.form("model_number")%> type="text"
          name="Model_Number" size="10" value="50????-???"></td>
        </tr>
        <tr>
          <td width="26%" align="left" valign="top"><h5>Mail Stop, Suite,<br>
          or Apt #:</h5>
          </td>
          <td width="74%" valign="top"><input <%= request.form("cust_address1")%> type="text"
          name="Cust_address1" size="35"></td>
        </tr>
        <tr>
          <td width="26%" align="left" valign="top"><h5>Street Address:</h5>
          </td>
          <td width="74%" valign="top"><input <%= request.form("cust_address2")%> type="text"
          name="Cust_address2" size="35"></td>
        </tr>
        <tr>
          <td width="26%" align="left" valign="top"><h5>City:</h5>
          </td>
          <td width="74%" valign="top"><input <%= request.form("cust_city")%> type="text"
          name="Cust_City" size="35"></td>
        </tr>
        <tr>
          <td width="26%" align="left" valign="top"><h5>State/Province, <br>
          and Zip Code:</h5>
          </td>
          <td width="74%" valign="top"><select <%= request.form("cust_state")%> name="Cust_state"
          size="1">
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
          </select><input type="text" <%= request.form("cust_zip")%> name="Cust_zip" size="10"></td>
        </tr>
        <tr>
          <td width="26%" align="left" valign="top"><h5>Telephone <br>
          (ex: 817-230-0591):</h5>
          </td>
          <td width="74%" valign="top"><input <%= request.form("cust_telephone")%> type="text"
          name="Cust_Telephone" size="20"></td>
        </tr>
        <tr>
          <td width="26%" align="left" valign="top"><h5>Purchase Date:</h5>
          </td>
          <td width="74%" valign="top"><select name="Vmonth" size="1">
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
          <td width="26%" align="left" valign="top"><h5>Country of Purchase:</h5>
          </td>
          <td width="74%" valign="top"><select <%= request.form("country_of_purchase")%>
          name="Country_of_Purchase" size="1">
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
        <tr>
          <td width="26%" align="left" valign="top"><h5>Send me <br>
          E-mail updates:</h5>
          </td>
          <td width="74%" valign="top"><table border="0" width="99%">
            <tr>
              <td valign="top" width="22%"><input type="radio" value="Yes" checked name="E_updates"> Yes</td>
              <td valign="top" width="19%"><input type="radio" name="E_Updates" value="No">No</td>
              <td valign="top" width="117%"><font size="1">Choosing &quot;Yes&quot; will allow AST to
              send you important update information for your system. AST will not distribute your E-mail
              address to third-party vendors.</font></td>
            </tr>
          </table>
          </td>
        </tr>
      </table>
      <table border="0" width="100%">
        <tr>
          <td width="100%"><h5>In what environment will this computer be used?</h5>
          <div align="center"><center><table border="0" width="550">
<TBODY>
            <tr>
              <td valign="top"><input name="REG_45_1" type="checkbox" value="1"><font size="2">Agriculture/Mining</font></td>
              <td valign="top"><input name="REG_45_2" type="checkbox" value="1"><font size="2">Business
              Services</font></td>
              <td valign="top"><input name="REG_45_3" type="checkbox" value="1"><font size="2">Banking/Finance/Accounting</font></td>
            </tr>
            <tr>
              <td valign="top"><input name="REG_45_4" type="checkbox" value="1"><font size="2">Chemical/Pharmaceutical</font></td>
              <td valign="top"><input name="REG_45_5" type="checkbox" value="1"><font size="2">Communications</font></td>
              <td valign="top"><input name="REG_45_6" type="checkbox" value="1"><font size="2">Construction</font></td>
            </tr>
            <tr>
              <td valign="top"><input name="REG_45_7" type="checkbox" value="1"><font size="2">Education
              - K-12</font></td>
              <td valign="top"><input name="REG_45_8" type="checkbox" value="1"><font size="2">Edu. -
              College/Univ/Trade</font></td>
              <td valign="top"><input name="REG_45_9" type="checkbox" value="1"><font size="2">Engineering/Architecture</font></td>
            </tr>
            <tr>
              <td valign="top"><input name="REG_45_10" type="checkbox" value="1"><font size="2">Entertainment</font></td>
              <td valign="top"><input name="REG_45_11" type="checkbox" value="1"><font size="2">Gov't -
              Federal</font></td>
              <td valign="top"><input name="REG_45_12" type="checkbox" value="1"><font size="2">Gov't -
              State/County/Local</font></td>
            </tr>
            <tr>
              <td valign="top"><input name="REG_45_13" type="checkbox" value="1"><font size="2">Gov't -
              U.S. Armed Forces</font></td>
              <td valign="top"><input name="REG_45_14" type="checkbox" value="1"><font size="2">Healthcare</font></td>
              <td valign="top"><input name="REG_45_15" type="checkbox" value="1"><font size="2">Legal</font></td>
            </tr>
            <tr>
              <td valign="top"><input name="REG_45_16" type="checkbox" value="1"><font size="2">Manufacturing</font></td>
              <td valign="top"><input name="REG_45_17" type="checkbox" value="1"><font size="2">Personal
              Services</font></td>
              <td valign="top"><input name="REG_45_18" type="checkbox" value="1"><font size="2">Real
              Estate/Insurance</font></td>
            </tr>
            <tr>
              <td valign="top"><input name="REG_45_19" type="checkbox" value="1"><font size="2">Religious/Membership
              Org.</font></td>
              <td valign="top"><input name="REG_45_20" type="checkbox" value="1"><font size="2">Restaurant/Lodging</font></td>
              <td valign="top"><input name="REG_45_21" type="checkbox" value="1"><font size="2">Social
              Services</font></td>
            </tr>
            <tr>
              <td valign="top"><input name="REG_45_22" type="checkbox" value="1"><font size="2">Transportation</font></td>
              <td valign="top"><input name="REG_45_23" type="checkbox" value="1"><font size="2">Utilities</font></td>
              <td valign="top"><input name="REG_45_24" type="checkbox" value="1"><font size="2">Wholesale/Retail
              Trade</font></td>
            </tr>
</TBODY>
          </table>
          </center></div></td>
        </tr>
        <tr>
          <td>&nbsp;<table>
            <tr>
              <td valign="top"><h5>Pick the term that best describes your department:&nbsp;&nbsp;</h5>
              </td>
              <td valign="top"><select name="L1_1" size="1">
                <option value="11">Click here to display choices </option>
                <option value="1">Executive </option>
                <option value="2">Finance &amp; Accounting </option>
                <option value="3">Engineering, R&amp;D </option>
                <option value="4">Sales &amp; Marketing </option>
                <option value="5">Manufacturing &amp; Distribution </option>
                <option value="6">Information Services </option>
                <option selected value="7">Operations </option>
                <option value="8">Administration </option>
                <option value="9">Other </option>
                <option value="12">Decline to state</option>
              </select> </td>
            </tr>
          </table>
          <h5>What applications will be used on this computer?</h5>
          <div align="center"><center><table border="2" cellpadding="3" cellspacing="3">
<TBODY>
            <tr>
              <td valign="top"><input name="L1_29_1" type="checkbox" value="1"> <small>Accounting/Financial/Payroll</small></td>
              <td valign="top"><input name="L1_29_2" type="checkbox" value="1"> <small>CAD/CAM/CAE</small></td>
            </tr>
            <tr>
              <td valign="top"><input name="L1_29_3" type="checkbox" value="1"> <small>Communications/Remote
              Access</small></td>
              <td valign="top"><input name="L1_29_4" type="checkbox" value="1"> <small>Contact
              Management</small></td>
            </tr>
            <tr>
              <td valign="top"><input name="L1_29_5" type="checkbox" value="1"> <small>Data Warehousing</small></td>
              <td valign="top"><input name="L1_29_6" type="checkbox" value="1"> <small>Desktop Video
              Conferencing</small></td>
            </tr>
            <tr>
              <td valign="top"><input name="L1_29_7" type="checkbox" value="1"> <small>Document
              Imaging/Management</small></td>
              <td valign="top"><input name="L1_29_8" type="checkbox" value="1"> <small>E-mail/Messaging</small></td>
            </tr>
            <tr>
              <td valign="top"><input name="L1_29_9" type="checkbox" value="1"> <small>Education/Training</small></td>
              <td valign="top"><input name="L1_29_10" type="checkbox" value="1"> <small>Graphics/Multimedia/Video</small></td>
            </tr>
            <tr>
              <td valign="top"><input name="L1_29_11" type="checkbox" value="1"> <small>Groupware</small></td>
              <td valign="top"><input name="L1_29_12" type="checkbox" value="1"> <small>Internet/Intranet</small></td>
            </tr>
            <tr>
              <td valign="top"><input name="L1_29_13" type="checkbox" value="1"> <small>Inventory
              Management</small></td>
              <td valign="top"><input name="L1_29_14" type="checkbox" value="1"> <small>Office
              Automation</small></td>
            </tr>
            <tr>
              <td valign="top"><input name="L1_29_15" type="checkbox" value="1"> <small>Research &amp;
              Development</small></td>
              <td valign="top"><input name="L1_29_16" type="checkbox" value="1"> <small>RAD/CASE</small></td>
            </tr>
            <tr>
              <td valign="top"><input name="L1_29_17" type="checkbox" value="1"> <small>RDBMS</small></td>
              <td valign="top"><input name="L1_29_18" type="checkbox" value="1"> <small>Security/Firewalls</small></td>
            </tr>
            <tr>
              <td valign="top"><input name="L1_29_19" type="checkbox" value="1"> <small>Storage
              Management</small></td>
              <td valign="top"><input name="L1_29_20" type="checkbox" value="1"> <small>Systems/Network
              Management</small></td>
            </tr>
            <tr>
              <td valign="top"><input name="L1_29_21" type="checkbox" value="1"> <small>Telephony</small></td>
              <td valign="top"><input name="L1_29_22" type="checkbox" value="1"> <small>Other services</small></td>
            </tr>
</TBODY>
          </table>
          </center></div><p>&nbsp;</p>
          <table border="0" cellpadding="0" cellspacing="2">
<TBODY>
            <tr>
              <td><h5>How many PCs are currently in use at your location?&nbsp;&nbsp;</h5>
              </td>
              <td valign="top"><select name="L1_5" size="1">
                <option selected value="8">Click here to display choices </option>
                <option value="1">10 or fewer </option>
                <option value="2">11-24 </option>
                <option value="3">25-49 </option>
                <option value="4">50-99 </option>
                <option value="5">100-249 </option>
                <option value="6">250-499 </option>
                <option value="7">500+ </option>
                <option value="9">Decline to state</option>
              </select> </td>
            </tr>
            <tr>
              <td><h5>How many employees work at your location?&nbsp;&nbsp;</h5>
              </td>
              <td><select name="L1_6" size="1">
                <option selected value="5">Click here to display choices </option>
                <option value="1">Less than 10 (no minimum) </option>
                <option value="2">10-99 </option>
                <option value="3">100-499 </option>
                <option value="4">500+ </option>
                <option value="6">Decline to state</option>
              </select> </td>
            </tr>
            <tr>
              <td><h5>Who makes the purchasing decision?&nbsp;&nbsp;</h5>
              </td>
              <td><select name="L1_7" size="1">
                <option selected value="6">Click here to display choices </option>
                <option value="1">Myself </option>
                <option value="2">Direct supervisor </option>
                <option value="3">Management </option>
                <option value="4">A committee </option>
                <option value="5">Decline to state</option>
              </select> </td>
            </tr>
            <tr>
              <td><h5>How did you become aware of AST?&nbsp;&nbsp;</h5>
              </td>
              <td><select name="L1_42" size="1">
                <option value="17">Comdex '97</option>
                <option selected value="1">Click here to display choices</option>
                <option value="2">Advice of friend or co-worker </option>
                <option value="3">An AST Mailing </option>
                <option value="4">Billboards/Airport posters </option>
                <option value="5">Current AST Owner </option>
                <option value="6">Info-Quote </option>
                <option value="7">Internet Search Engine </option>
                <option value="8">Magazine ad </option>
                <option value="9">Magazine article or story </option>
                <option value="10">PCWeek RFQ </option>
                <option value="11">Saw AST computer at a store </option>
                <option value="12">Television ad </option>
                <option value="13">Trade Show </option>
                <option value="14">Trade-in and Asset Inventory</option>
                <option value="15">Use AST computer at work </option>
                <option value="16">Decline to state</option>
              </select> </td>
            </tr>
</TBODY>
          </table>
          <div align="center"><center><p><input type="submit" value="Submit" name="B1"><input
          type="reset" value="Reset" name="B2"> </td>
        </tr>
      </table>
      <div align="center"><center><p><i>For further information, call AST Research, Inc. at
      1-800-876-4278;<br>
      international inquiries call (+1) (714) 727-9292.</i></p>
      </center></div>
    </form>
    </td>
  </tr>
</table>
</body>
</html>
