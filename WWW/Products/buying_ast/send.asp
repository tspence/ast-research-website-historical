<!--#include file="../lead.inc"-->
<%

Randomize

'************** Fix up all the fields
bad = 0
sbm = 0

if len(Trim(Request("firstname"))) = 0 then bad = 1
if len(Trim(Request("lastname"))) = 0 then bad = 1
if len(Trim(Request("address1"))) = 0 then bad = 1
if len(Trim(Request("city"))) = 0 then bad = 1
if len(Trim(Request("state"))) = 0 then bad = 1
if len(Trim(Request("zipcode"))) = 0 then bad = 1
if len(Trim(Request("country"))) = 0 then bad = 1
if len(Trim(Request("phone"))) = 0 then bad = 1

if Request("source") <> "cir" then
  if len(Trim(Request("email"))) = 0 then bad = 1
end if

if bad = 1 then
  Response.Redirect("incomplete.asp?field=1")
end if

'************** Figure out what computer they're interested in
Advantage = Trim(Request("AdvProcessor") + " " + Request("AdvSpeed") + " " + Request("AdvMemory") + " " + Request("AdvOS") + " " + Request("AdvCDROM") + " " + Request("AdvMonitor"))
Ascentia  = Trim(Request("AscProcessor") + " " + Request("AscSpeed") + " " + Request("AscMemory") + " " + Request("AscOS") + " " + Request("AscCDROM") + " " + Request("AscMonitor"))
Bravo     = Trim(Request("BrvProcessor") + " " + Request("BrvSpeed") + " " + Request("BrvMemory") + " " + Request("BrvOS") + " " + Request("BrvCDROM") + " " + Request("BrvMonitor"))
Manhattan = Trim(Request("ManProcessor") + " " + Request("ManSpeed") + " " + Request("ManMemory") + " " + Request("ManOS") + " " + Request("ManCDROM") + " " + Request("ManMonitor"))

ok = 0

if len(trim(Request("advantage") + advantage)) > 0 then
  ok = 1
  Inquiry = Inquiry + "  Advantage: " + Advantage + newline
  Advantage = "Y"
else
  Advantage = "N"
end if

if len(trim(Request("ascentia") + ascentia)) > 0 then
  ok = 1
  Inquiry = Inquiry + "  Ascentia: " + Ascentia + newline
  Ascentia = "Y"
else
  Ascentia = "N"
end if

if len(trim(Request("bravo") + bravo)) > 0 then
  ok = 1
  Inquiry = Inquiry + "  Bravo: " + Bravo + newline
  Bravo = "Y"
else
  Bravo = "N"
end if

if len(trim(Request("manhattan") + manhattan)) > 0 then
  ok = 1
  Inquiry = Inquiry + "  Manhattan: " + Manhattan + newline
  Manhattan = "Y"
else
  Manhattan = "N"
end if

if ok = 0 then
  Response.Redirect("incomplete.asp?field=2")
end if

'************** Add the lead to the database
set conn = NewConnection()
line = "sp_Add_New_Lead "
line = line + sql(Request("FirstName")) + ","
line = line + sql(Request("LastName")) + ","
line = line + sql(Request("Title")) + ","
line = line + sql(Request("Company")) + ","
line = line + sql(Request("Address1")) + ","
line = line + sql(Request("Address2")) + ","
line = line + sql(Request("City")) + ","
line = line + sql(Request("State")) + ","
line = line + sql(Request("Zipcode")) + ","
line = line + Request("Country") + ","
line = line + sql(Request("Email")) + ","
line = line + sql(Request("Phone")) + ","
line = line + sql(Request("Fax")) + ","
line = line + sql(Inquiry) + ","
line = line + sql(Advantage) + ","
line = line + sql(Ascentia) + ","
line = line + sql(Bravo) + ","
line = line + sql(Manhattan) + ","
line = line + sql(Request("Announcement")) + ","
line = line + Request("L1-2") + ","
if Request("source") = "cir" then
  line = line + "'CIR',"
else
  line = line + "'WEB',"
end if
line = line + sql(Request("comments"))

set rs = conn.Execute(line)
lead_id=nstr(rs("lead_id"))
rs.Close

'************** Add the packages if this is a CIR request
if len(trim(Request("packages"))) > 0 then
  conn.Execute("INSERT INTO lead_packages (lead_id, packages) VALUES (" + lead_id + "," + sql(Request("packages")) + ")")
end if

'************** Assemble the lead information for the email
text =        "   NAME: " + Request("FirstName") + " " + Request("LastName") + newline
text = text + "COMPANY: " + Request("Company") + newline
text = text + "ADDRESS: " + Request("Address1") + newline
text = text + "         " + Request("Address2") + newline
text = text + "         " + Request("City") + ", " + Request("State") + " " + Request("Zipcode") + newline
text = text + "         " + Request("Country") + newline
text = text + "  EMAIL: " + Request("Email") + newline
text = text + "  PHONE: " + Request("Phone") + newline
text = text + "    FAX: " + Request("Fax") + newline + newline

text = text + "SYSTEM REQUESTED:" + newline + Inquiry + newline

text = text + "COMMENTS:" + newline + Request("comments") + newline + newline

'************** Add the lead questionnaire to the database
set conn2 = NewConnection()
set conn3 = NewConnection()

set rs = conn.Execute("sp_Get_Page_Objects 'L1'")
do while not rs.EOF

  name = "L1-" + CSTR(rs("category_id"))
  
  text = text + nstr(rs("category_descr")) + newline

  set rs2 = conn2.Execute("sp_Get_Category 'L1'," + CSTR(rs("category_id")))
  do while not rs2.EOF
    if not IsEmpty(Request(name + "-" + CSTR(rs2("code_value")))) then
      line = "INSERT INTO lead_data (lead_id, category_id, code_value) VALUES ("
      line = line + lead_id + "," + CSTR(rs("category_id")) + "," + CSTR(rs2("code_value")) + ")"
      conn3.Execute(line)
      text = text + "  " + nstr(rs2("code_descr")) + newline
    end if
    
    rs2.MoveNext
  loop

  if not IsEmpty(Request(name)) then
    value = Request(name)
    
    p = InStr(value,",")
    if p <> 0 then
      value = Left(value,p - 1)
    end if
    
    line = "INSERT INTO lead_data (lead_id, category_id, code_value) VALUES ("
    line = line + lead_id + "," + CSTR(rs("category_id")) + "," + CSTR(value) + ")"
    conn3.Execute(line)
    set rs2 = conn2.Execute("SELECT * FROM code WHERE category_id=" + cstr(rs("category_id")) + " AND code_value=" + value)
    text = text + "  " + nstr(rs2("code_descr")) + newline
  end if  

  text = text + newline
  
  rs.MoveNext  
loop
rs.Close

conn2.Close
conn3.Close

dim scores(101,3)

'************** If this lead isn't supposed to get matched at all - !!!
if Request("nomatch") = "true" then
  conn.Execute("UPDATE lead SET nomatch='Y' WHERE lead_id=" + lead_id)

  Response.Redirect("thanks.html")
end if

'************** If this is just a lowly Advantage lead
if advantage="Y" and bravo="N" and ascentia="N" and manhattan="N" then
  Response.Redirect("thanks.html")
end if

'************** If this is a Fake Lead Form, deal with it quickly and pre-empt any other options
if len(Request("locked")) > 0 then
  conn.Execute("UPDATE lead SET source='FLF' WHERE lead_id=" + lead_id)

  call MatchLead(lead_id, Request("locked"), nstr(text))
  
  Response.Redirect("match.asp?locid=" + Request("locked"))
end if
    
'************** If this lead goes to a country other than America
if Request("country") <> "174" then
  call MatchInternational(Request("country"), nstr(text))
  Response.Redirect("thanks.html")
end if

'************** Place this lead in a region/territory
set rs = conn.Execute("sp_Lookup_Region " + sql(Request("zipcode")))
if not rs.EOF then
  region_id=nstr(rs("region"))
  territory_id=nstr(rs("territory"))
  isr=nstr(rs("isr"))
  fsr=nstr(rs("fsr"))
  sbm=nstr(rs("sbm"))
  rsd=nstr(rs("rsd"))
end if
rs.Close

if len(region_id) > 0 then
  conn.Execute("UPDATE lead SET lead_region_id=" + region_id + ", lead_territory_id=" + territory_id + ", region_id=NULL, territory_id=NULL WHERE lead_id=" + lead_id)
end if

'************** Check to see if this is a high-quantity lead
quantity = Request("L1-2")
if cint(quantity) > 3 and cint(quantity) < 9 then

  call SendUnmatchedLead(lead_id, nstr(text))
  
  Response.Redirect("thanks2.html")
end if
    
'*********************************************************************
'* NOW DO THE ACTUAL LEAD MATCH...
'* Three times - check first 15 mile radius, then 30, then 60...
'*********************************************************************
distance = "15"
ovation = "'G'"
set rs = conn.Execute("sp_Lead_Match_Test " + lead_id + ",15,'G'")
if rs("cnt") = 0 then
  rs.Close
  
  ovation = "NULL"
  set rs = conn.Execute("sp_Lead_Match_Test " + lead_id + ",15,NULL")
  if rs("cnt") = 0 then
    rs.Close
    
    ovation = "'G'"
    distance = "30"
    set rs = conn.Execute("sp_Lead_Match_Test " + lead_id + ",30,'G'")
    if rs("cnt") = 0 then
      rs.Close
      
      ovation = "NULL"
      set rs = conn.Execute("sp_Lead_Match_Test " + lead_id + ",30,NULL")
      if rs("cnt") = 0 then
        rs.Close
        
        ovation = "'G'"
        distance = "60"
        set rs = conn.Execute("sp_Lead_Match_Test " + lead_id + ",60,'G'")
        if rs("cnt") = 0 then
          rs.Close
          
          ovation = "NULL"
          set rs = conn.Execute("sp_Lead_Match_Test " + lead_id + ",60,NULL")
          if rs("cnt") = 0 then
  
            call SendUnmatchedLead(lead_id, nstr(text))
            
            Response.Redirect("thanks.html")
          end if
        end if
      end if
    end if
  end if
end if
          
rs.Close
set rs = conn.Execute("sp_Lead_Match4 " + lead_id + "," + ovation + "," + distance)

'*************** Now that we've actually located some resellers (we hope)...
do while not rs.EOF

  for i = 1 to 100
    if scores(i,1) = rs("location_id") or IsEmpty(scores(i,1)) then
      index = i
      exit for
    end if
  next
  
  scores(i,1) = rs("location_id")
  if IsEmpty(scores(i,2)) then
    value = 0
  else
    value = scores(i,2)
  end if
  
  if rs("profile") = rs("lead") then
    scores(i,2) = value + 1
  else
    scores(i,2) = value
  end if
  
  rs.MoveNext
loop
rs.Close
 
value = -1
index = -1
count = 0

'************* Figure out the highest score so far
for i = 1 to 100
  if IsEmpty(scores(i,1)) then
    exit for
  end if
  
  if scores(i,2) >= value then
    index = i
    value = scores(i,2)
  end if
  count = count + 1
next

'************** If we found absolutely zero matches
if index = -1 then

  call SendUnmatchedLead(lead_id, nstr(text))
  
  Response.Redirect("thanks.html")
  
else

  '************* Figure out how many match the highest score
  highcount = 0
  for i = 1 to 100
    if IsEmpty(scores(i,1)) then
      exit for
    end if
    
    if scores(i,2) = value then
      highcount = highcount + 1
    end if
  next

  '************** Pick one of the highest scorers at random
  highcount = Int((highcount) * Rnd + 1)
  for i = 1 to 100
    if IsEmpty(scores(i,1)) then
      exit for
    end if
    
    if scores(i,2) = value then
      highcount = highcount - 1
      if highcount = 0 then
        index = i
      end if
    end if
  next
  
  match = nstr(scores(index,1))
  
  '************** If they fall under the domain of the server business development manager
  if len(trim(sbm)) > 0 and manhattan = "Y" then
    
    call SendSBMLead(lead_id, nstr(text))
    
    Response.Redirect("sbm.asp")

  '************** Nope - this is a genuine lead.  Match it.
  else
    call MatchLead(lead_id, match, nstr(text))
    
    Response.Redirect("match.asp?locid=" + match)
  end if
end if

%>

