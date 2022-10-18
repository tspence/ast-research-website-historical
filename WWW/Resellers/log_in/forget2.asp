<!--#include file="../../../basic.inc"-->
<!--#include file="../../../email.inc"-->
<%

server.scripttimeout = 600

set conn = NewConnection()
qualifier = " WHERE email_addr like " + sql("%" + trim(Request("email")) + "%")
set rs = conn.execute("SELECT username, password, email_addr FROM contact " + qualifier)

if (not rs.EOF) then
  if (ucase(rs("email_addr")) = ucase(Request("email"))) then

    '********** Send a reminder to a reseller of their username/password
    call SendResellerPassword(Request("email"),rs("username"),rs("password"))
  else
    bad = 1
  end if
else
  bad = 1
end if
rs.Close

if bad = 1 then
  set conn = NewWebster()
  query = "SELECT acl_username, acl_password, acl_badge_num, acl_email FROM acl WHERE acl_email=" + sql(trim(Request("email")))
  set rs = conn.execute(query)
  
  if (not rs.EOF) then
    if (ucase(trim(rs("acl_email"))) = ucase(trim(Request("email")))) then
    
      if IsNull(rs("acl_username")) then
        query2 = "sp_Ted_Give_Username " + sql(rs("acl_badge_num"))
        rs.Close
        conn.Execute(query2)
        set rs = conn.Execute(query)
      end if
      
      '********** Send a reminder to an AST employee of their username/password
      call SendASTPassword(Request("email"),rs("acl_username"),rs("acl_password"))
    
      bad = 0
    end if
  end if
  rs.Close
end if


'********** We couldn't locate your email address
if bad = 1 then
  call SendLostPassword(Request("email"))
end if

%>

<HTML>
  <HEAD>
    <TITLE>AST OVATION</TITLE>
  </HEAD>
  <BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">
    <TABLE WIDTH=95% HEIGHT=92% BORDER=0>
      <TR>
        <TD ALIGN=middle>
<% if Request("source") = "interchange" then %>
          <IMG SRC="images/splash2.gif" BORDER=0 ALT="Interchange">
<% else %>
          <IMG SRC="images/splash.gif" BORDER=0 ALT="OVATION">
<% end if %>
        </TD>
        <TD ALIGN=right>
        
          Thanks for notifying us!  If your email address was in our database correctly,
          you should receive within a few hours a reminder of your current password.<P>
          
          If you don't receive anything from us, please contact your inside sales rep or send
          email to <A HREF="mailto:ovation@ast.com">ovation@ast.com</A>.<P>
          
          <BR><BR><BR><BR>
          
          <A HREF="http://www.ast.com"><IMG SRC="/images/logo-01.gif" BORDER=0 ALT="AST Computer" WIDTH=147 HEIGHT=71></A>
        </TD>
      </TR>
    </TABLE>
  </BODY>
</HTML>

