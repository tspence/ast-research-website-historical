<!--- Template: stndsrcp.hts --->

<SCRIPT LANGUAGE="JavaScript">

	function setorder ()
	{
		if (document.CGISearch.SortField.options[document.CGISearch.SortField.options.selectedIndex].value == "Score")
			document.CGISearch.SortOrder.value = "Desc";
			
		else if (document.CGISearch.SortField.options[document.CGISearch.SortField.options.selectedIndex].value == "Title")
			document.CGISearch.SortOrder.value = "Asc";
	
		else if (document.CGISearch.SortField.options[document.CGISearch.SortField.options.selectedIndex].value == "URL")
			document.CGISearch.SortOrder.value = "Asc";
	}

</SCRIPT>

<HTML>
  <BODY BGCOLOR="#FFFFFF" LINK="#00698C" VLINK="#3A4D52" ALINK="#FFA600">
    <TABLE BORDER=0 WIDTH=570>
      <TR>
        <TD ALIGN="LEFT">
          <FORM METHOD="GET" NAME="CGISearch" ACTION="/search97cgi/s97_cgi.exe">
            <INPUT TYPE=HIDDEN NAME="Action" VALUE="Search">
            <INPUT TYPE=HIDDEN NAME="AdminImagePath" VALUE="">
            <INPUT TYPE=HIDDEN NAME="ServerKey" VALUE="Primary">
            <INPUT TYPE=HIDDEN NAME="ResultTemplate" VALUE="ast_results.hts">
			<INPUT TYPE=HIDDEN NAME="QueryMode" VALUE="Simple">
			<INPUT TYPE=HIDDEN NAME="SortOrder" VALUE="Desc">
            <BR>
            <TABLE BORDER=0>
				<TR>
					<TD ALIGN="LEFT">Return Results:&nbsp;&nbsp;<INPUT TYPE="TEXT" SIZE="5" NAME="ResultCount" VALUE="10"></TD>
			
					<TD ALIGN="LEFT">Sort By:&nbsp;
						<SELECT NAME="SortField" onChange='setorder()'>
						<OPTION SELECTED VALUE="Score">Score
						<OPTION VALUE="Title">Title
						<OPTION VALUE="URL">URL
						</SELECT>
					</TD>
				</TR>
				<TR><TD COLSPAN="2">&nbsp;</TD>
				</TR>
				<TR>
                <TD COLSPAN=2><b>Enter your query expression here:</b></TD>
				</TR>
				<TR>
					<TD COLSPAN=2><TEXTAREA NAME="QueryText" ROWS=2 COLS=60></TEXTAREA></TD>
				</TR>
				<TR>
					<TD COLSPAN="2" ALIGN="RIGHT">
						<INPUT TYPE=submit NAME="SEARCH-97" VALUE="Search">&nbsp;&nbsp;
						<INPUT TYPE="reset" VALUE=" Clear ">
					</TD>
				</TR>
            </TABLE>
          </FORM>
        </TD>   
      </TR>
	  <TR><TD>&nbsp;</TD></TR>
	  <TR>
		<TD ALIGN="LEFT">
			<B>Search Query Guidelines: </B>
			<P>All searches are performed without case-sensitivity.  Thus, "AST" and "ast" are equivalent search words.  Also,
			wildcards and regular expressions are not supported as search criteria.
			<P>Searches can be based on an individual word, a single phrase, or Boolean combinations of both words and phrases.
			<P>Searches based on a single word may be entered with or without quotes.  When a single word is surrounded by quotes
			in a query expression it is referred to as a <I>literal word</I>, otherwise it is a <I>stemmed word</I>.  A search
			for a stemmed word broadens the search to include the word itself along with stemmed variations of the word. For example,
			in a search for: meet (without double quotes) the search engine will look for the words 'meet', 'meets', 'meeting', etc.
			If on the other hand a search was made on: "meet" the search engine will only look for the literal word 'meet'.
			<P>Searches based on a single phrase operate much like a query based on a single word.  The search engine considers a
			phrase to be two or more words separated by spaces, with or without quotes.  Like a single word search, the quotes define
			either a <I>literal phrase</I>, or <I>stemmed phrase</I> search.  For example, in a search for: board meetings (without
			double quotes) the search engine will look for the phrases 'board meetings', 'board meeting', 'boards meeting', etc.  Like
			the single word query expression, a	search for a quoted phrase will only look for the literal phrase itself, and ignore all
			stemmed variations.
			<P>Searches based on Boolean expressions use the following three keywords (in order of decreasing precedence) to create
			logical combinations of words and phrases:
			<BR><BR>(1) Not - interpreted as the logical NOT operator.
			<BR>(2) And - interpreted as the logical AND operator.
			<BR>(3) Or - interpreted as the logical OR operator.
			<P>For example, to find documents containing the words 'premium' and 'server', use the query expression:
			<BR><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;premium and server<BR>
			<P>This expression will return all documents containing both of the words 'premium' and 'server', in any location on the page.
			If the desired search string was the literal 'premium and server', then the expression would be entered:
			<BR><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;premium "and" server<BR>
			<P>This expression will return all documents containing the phrase 'premium and server'.  In general, to avoid any of the special
			Boolean keywords from being interpreted as operators, surround them with double quotes.  Boolean operator precedence may
			be overridden through the use of parenthesis.  For example:
			<BR><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;training or premium and server<BR>
			<P>means the document must contain both the words 'premium' and 'server', or just contain the word 'training'. But the expression:
			<BR><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(training or premium) and server<BR>
			<P>means the document must contain the word 'server', and either one of the words 'training' or 'premium'.  Any number or
			combination of Boolean operators and parenthesis are allowed.

		</TD>
	  </TR>
    </TABLE>
  </BODY>
</HTML>
