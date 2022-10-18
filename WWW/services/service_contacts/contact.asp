<!--#include file="../../../basic.inc"-->
<%
set conn = NewCAM()
set rs = conn.Execute("sp_Get_Contact " + Request("contid"))

%>

<html>

<body bgcolor="#FFFFFF">

<table border="0">
  <tr>
    <td><table border="1">
      <tr>
        <td><font size="4"><em><strong>K.A.R.E. Support Number:</strong></em></font></td>
        <td><font size="3"><em><strong>888-PLUS1AST</strong></em></font></td>
      </tr>
      <tr>
        <td><font color="#000040" size="3"><em><strong>Primary Service Contact:</strong></em></font></td>
        <td><font color="#000000"><strong><%=rs("first_name") + " " + rs("last_name") + ", " + rs("title")%></strong></font></td>
      </tr>
      <tr>
        <td><font size="3"><em><strong>Phone:</strong></em></font></td>
        <td><font color="#000000"><strong><%=rs("direct_phone")%></strong></font></td>
      </tr>
      <tr>
        <td><font size="3"><em><strong>Fax:</strong></em></font></td>
        <td><font color="#000000"><strong><%=rs("direct_fax")%></strong></font></td>
      </tr>
      <tr>
        <td><font size="3"><em><strong>Pager:</strong></em></font></td>
        <td><font color="#000000"><strong><%=rs("pager")%></strong></font></td>
      </tr>
      <tr>
        <td><font size="3"><em><strong>Email:</strong></em></font></td>
        <td><a href="<%=rs("email_addr")%>"><font color="#000000"><strong><%=rs("email_addr")%></strong></font></a></td>
      </tr>
      <tr>
        <td><font size="3"><em><strong>Mailing Address:</strong></em></font></td>
        <td><font color="#000000"><strong><%=rs("addr")%></strong></font></td>
      </tr>
    </table>
    </td>
<% if len(trim(nstr(rs("photograph")))) > 0 then %>
    <td><img src="../../accounts/photos/<%=rs("photograph")%>"></td>
<% end if %>
  </tr>
</table>

<table border="0">
  <tr>
    <td><table border="0">
      <tr>
        <td></td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td></td>
  </tr>
</table>
<div align="left">

<table border="1">
  <tr>
    <td><font color="#000080"><strong><font size="+1">To Page <%=rs("first_name")%>:</font> </strong></font></td>
    <td><font size="3" color="#000080"><strong>To Call <%=rs("first_name")%>:</strong></font></td>
  </tr>
  <tr>
    <td><div align="center"><center><table border="0">
      <tr>
        <td><div align="right"><table border="0">
          <tr>
            <td><form action="http://www.mobile.att.net/nohost/messaging/pager_send.cgi" method="POST">
              <input type="hidden" name="htmlsource" value="<%=rs("first_name") + " " + rs("last_name")%>"><input type="hidden" name="pin" value="<%=rs("pager_pin")%>"><input type="hidden" name="subject" value><p><font color="#000080">From:</font><br>
              <font color="#FFFFFF"><input type="text" size="15" maxlength="15" name="from" cols="15" align="LEFT"></font><br>
              <br>
              <font color="#000080">Message:</font><br>
              <font color="#FFFFFF"><textarea name="message" rows="4" cols="30" align="LEFT" wrap="HARD"></textarea></font><br>
              <font color="#FFFFFF"><input type="submit" value="Send Message"></font> </p>
            </form>
            </td>
          </tr>
        </table>
        </div></td>
      </tr>
    </table>
    </center></div></td>
    <td><form action="http://www2.webcentric.net/biz/call_now" method="GET">
<input type="HIDDEN" name="ACCOUNT_NUM" value="7030:16JPCZVEQWUJZ">
<input type="HIDDEN" name="BACKURL" value>
<table cellpadding="2" border="1"><tr>
<td colspan="2"><font size="2"><b>To use:</b><br>
<ol><li>Internet access &amp; available phone line required.<br>
<li>Enter a phone number that's not in use.<br><li>
Enter extension number (if any).<br><li>Choose <b>
Speak Extension</b>if number rings to <br>
receptionist. If not, choose <b>Touch Tone Menu</b>
.<br><li>When ready, click graphic.<br><li>
We'll call you in seconds.</font></ol></td></tr>
<tr><td><font size="2">Enter area code &amp; number below:<br>
<input type="TEXT" name="PHONE" size="20" maxlength="30"><br>
Extension number: <input type="TEXT" name="EXT" size="5"><select name="EXT_TYPE"><br>
<option value="VOICE">Speak Extension<option value="TONE">
Touch Tone Menu<option value="NONE" selected>No Extension</select>
</font></td><td>
<input type="SUBMIT" value="Call Now!">
</td></tr></table></form>

    </td>
  </tr>
</table>
</div><div align="left">

<table border="0" cellpadding="0" alighn="center">
  <tr>
    <td align="center"><p align="center"><a href="mailto:ron.hubbard@ast.com"><font color="#FFFFFF" size="5"><em><strong>Click here to email Ron</strong></em></font></a></td>
  </tr>
</table>
</div>
</body>
</html>
