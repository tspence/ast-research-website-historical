<%
'******************************************************************************
'*
'* WARNING WARNING You must include basic.inc before this file will work!
'*
'******************************************************************************


'******************************************************************************
'*
'* This sends an notice to an Ovation! reseller of a new account.
'*
'******************************************************************************
function SendAccountOvation(byval email, byval username, byval password)
  dim text

  '*********** Write the text of the message
  text =        "Dear Valued Reseller," + newline + newline

  text = text + "Congratulations! You have been authorized for AST's Ovation! " + newline
  text = text + "Program.  As an AST Ovation! Reseller you have access to a wide " + newline
  text = text + "range of business development and training tools designed to " + newline
  text = text + "increase your sales." + newline + newline

  text = text + "Communication is the most important aspect of a strong " + newline
  text = text + "relationship.  AST has developed a web site, Interchange, " + newline
  text = text + "exclusively for Ovation! resellers that will keep you up to date " + newline
  text = text + "on everything from AST.  " + newline + newline

  text = text + "The site is available at http://interchange.ast.com" + newline + newline

  text = text + "Your Interchange account is:" + newline + newline

  text = text + "  USERNAME:  " + username + newline
  text = text + "  PASSWORD:  " + password + newline + newline

  text = text + "We encourage you to review the site immediately to get all the current " + newline
  text = text + "information on AST products, promotions, programs and more.  Most importantly, " + newline
  text = text + "you have access to one of the most exciting elements of the program, AST's end " + newline
  text = text + "user lead match.  Just by registering for the Ovation! program you have provided" + newline
  text = text + "everything we need to being to send you qualified end user leads electronically." + newline + newline

  text = text + "Stay tuned to receive your leads." + newline + newline

  text = text + "We are excited about working with you through the Ovation! Program.  We know " + newline
  text = text + "that the only way AST can be successful is if you are successful.  We look " + newline
  text = text + "forward to a long and mutually beneficial relationship." + newline + newline

  text = text + "--AST Ovation! Interchange Team" + newline
  text = text + "interchange@ast.com" + newline
  text = text + "http://interchange.ast.com"

  '*********** Send the message
  call SendMail(email, "interchange@ast.com", "Interchange Account", text, 4, "")
end function


'******************************************************************************
'*
'* This sends an notice to a non-Ovation reseller of a new account.
'*
'******************************************************************************
function SendAccount(byval email, byval username, byval password)
  dim text

  '*********** Write the text of the message
  text =        "Dear Valued Reseller," + newline + newline
     
  text = text + "Thank you for taking the time to complete our on-line Reseller " + newline
  text = text + "Registration form.  You may purchase AST products from an AST National " + newline
  text = text + "Channel Account." + newline + newline
     
  text = text + "How can you make sure you have the most current information on AST " + newline
  text = text + "products, promotions and programs?  AST has developed a web site " + newline
  text = text + "exclusively for Resellers, Interchange.  " + newline + newline
     
  text = text + "This site will be updated regularly with current prices, programs, and sales " + newline
  text = text + "tools.  Be sure to check back often for the most recent information!" + newline + newline
     
  text = text + "The site is available at http://www.ast.com/interchange" + newline + newline

  text = text + "Your Interchange account is:" + newline + newline

  text = text + "  USERNAME:  " + username + newline
  text = text + "  PASSWORD:  " + password + newline + newline

  text = text + "We know that the only way AST is successful is if you are successful.  We look " + newline
  text = text + "forward to a long and mutually beneficial relationship." + newline + newline
     
  text = text + "--AST Interchange Team" + newline
  text = text + "interchange@ast.com" + newline
  text = text + "http://www.ast.com/interchange"

  '*********** Send the message
  call SendMail(email, "interchange@ast.com", "Interchange Account", text, 4, "")
end function


'******************************************************************************
'*
'* This sends an notice of Ovation! approval
'*
'******************************************************************************
function SendOvation(byval email, byval username, byval password)
  dim text

  '*********** Write the text of the message
  text =        "Dear Valued Reseller," + newline + newline

  text = text + "Congratulations!  You have just been authorized for AST's Ovation! " + newline 
  text = text + "Program.  As an AST Ovation! Reseller you have access to a wide " + newline 
  text = text + "range of business development and training tools designed to " + newline 
  text = text + "increase your sales." + newline + newline 
     
  text = text + "One of the most exciting elements of the Ovation! Program is the end " + newline 
  text = text + "user lead match program.  Leads generated by AST are matched " + newline 
  text = text + "exclusively to Ovation! resellers.  Our dynamic lead system gives " + newline 
  text = text + "you real time information electronically, so you can take advantage " + newline 
  text = text + "of the leads while they are hot." + newline + newline 
     
  text = text + "But that is not all. The Ovation! Program is packed with exciting " + newline 
  text = text + "tools that increase your efficiency and allow your business to grow." + newline + newline 
     
  text = text + "To get more information on all your benefits, take a look at the web " + newline 
  text = text + "site designed exclusively for Ovation! Resellers, Interchange." + newline + newline 
     
  text = text + "The site is available at http://interchange.ast.com" + newline + newline

  text = text + "Your Interchange account is:" + newline + newline

  text = text + "  USERNAME:  " + username + newline
  text = text + "  PASSWORD:  " + password + newline + newline

  text = text + "We are excited about working with you through the Ovation! Program.  " + newline
  text = text + "We know that the only way we are successful is if you are " + newline
  text = text + "successful.  " + newline + newline
     
  text = text + "--AST Ovation! Interchange Team" + newline
  text = text + "interchange@ast.com" + newline
  text = text + "http://interchange.ast.com"

  '*********** Send the message
  call SendMail(email, "interchange@ast.com", "AST Ovation! Program", text, 4, "")
end function


'******************************************************************************
'*
'* This sends an notice of Registered status
'*
'******************************************************************************
function SendRegistered(byval email, byval username, byval password)
  dim text

  '*********** Write the text of the message
  text =        "Dear Valued Reseller," + newline + newline

  text = text + "Thank you for taking the time to complete the AST on line " + newline
  text = text + "Reseller Registration form.  You are now authorized to " + newline
  text = text + "purchase AST products from an AST National Channel Account." + newline + newline
     
  text = text + "You are an important business partner and we believe the only " + newline
  text = text + "way we can be successfull is if you are successful.  To ensure " + newline
  text = text + "your success with AST, we will keep you up to date on all the " + newline
  text = text + "latest product offerings, promotions and programs." + newline + newline
     
  text = text + "To make sure you always have the most current information, we " + newline
  text = text + "have given you access to Interchange, AST's web site " + newline
  text = text + "exclusively for resllers.  The Interchange site includes " + newline
  text = text + "information on all of AST's promotions, products and programs. " + newline + newline

  text = text + "The site is available at http://www.ast.com/interchange" + newline + newline

  text = text + "Your Interchange account is:" + newline + newline

  text = text + "  USERNAME:  " + username + newline
  text = text + "  PASSWORD:  " + password + newline + newline

  text = text + "This site will be updated regularly with current prices, programs, and sales " + newline
  text = text + "tools.  We encourage you to access the site often to get the latest " + newline
  text = text + "information.  " + newline + newline
     
  text = text + "Again, we wish you much success in selling AST products." + newline + newline

  text = text + "--AST Interchange Team" + newline
  text = text + "interchange@ast.com" + newline
  text = text + "http://www.ast.com/interchange"

  '*********** Send the message
  call SendMail(email, "interchange@ast.com", "AST Reseller Registration", text, 4, "")
end function


'******************************************************************************
'*
'* This reminds a reseller of their password
'*
'******************************************************************************
function SendResellerPassword(byval email, byval username, byval password)
  dim text

  '*********** Write the text of the message
  text =        "Dear Valued Reseller," + newline + newline

  text = text + "Thank you for your interest in AST Interchange.  You recently " + newline 
  text = text + "asked us to confirm your Interchange account." + newline + newline 
  
  text = text + "Your Interchange account is:" + newline + newline
  
  text = text + "  USERNAME:  " + username + newline
  text = text + "  PASSWORD:  " + password + newline + newline
  
  text = text + "We look forward to serving you!" + newline + newline

  text = text + "--AST Interchange Team" + newline
  text = text + "interchange@ast.com" + newline
  text = text + "http://www.ast.com/interchange"

  '*********** Send the message
  call SendMail(email, "interchange@ast.com", "Interchange Account Confirmation", text, 4, "")
end function



'******************************************************************************
'*
'* This sends an AST employee their webster password
'*
'******************************************************************************
function SendASTPassword(byval email, byval username, byval password)
  dim text

  '*********** Write the text of the message
  text =        "Dear AST Employee," + newline + newline
  
  text = text + "For the latest in AST reseller information, look to Interchange:" + newline
  text = text + "  http://interchange.ast.com" + newline + newline 
  
  text = text + "Your AST Intranet account is:" + newline + newline
  
  text = text + "  USERNAME:  " + username + newline
  text = text + "  PASSWORD:  " + password + newline + newline
  
  text = text + "This password is valid on Webster (http://webster.ast.com) and" + newline
  text = text + "Interchange (http://interchange.ast.com).  This account is non-" + newline
  text = text + "distributable, and is for your use only." + newline + newline
  
  text = text + "--AST Information Services" + newline
  text = text + "interchange@ast.com"
      
  '*********** Send the message
  call SendMail(email, "interchange@ast.com", "AST Intranet Login", text, 4, "")
end function



'******************************************************************************
'*
'* This sends a person a notice that we don't have their email addr
'*
'******************************************************************************
function SendLostPassword(byval email)
  dim text

  '*********** Write the text of the message
  text =        "We're sorry.  We could not find your email address in our database." + newline + newline
  
  text = text + "To obtain more information about AST Interchange, contact your sales representative at:" + newline + newline
  
  text = text + "  Northwest      1-800-361-8210" + newline
  text = text + "  North-Central  1-800-400-9816" + newline
  text = text + "  Northeast      1-800-400-0265" + newline
  text = text + "  Southwest      1-800-385-6045" + newline
  text = text + "  South-Central  1-800-400-0235" + newline
  text = text + "  Southeast      1-800-400-0328" + newline + newline
  
  text = text + "We look forward to serving you!" + newline + newline
  
  text = text + "-- AST Interchange Project Team" + newline
  text = text + "interchange@ast.com"

  '*********** Send the message
  call SendMail(email, "interchange@ast.com", "Interchange Account Confirmation", text, 4, "")
end function



%>