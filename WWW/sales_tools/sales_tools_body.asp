<!--last modified on Friday, November 14, 1997 08:36 AM -->
<HTML>

<HEAD>
	<TITLE>ovation welcome</TITLE>
</HEAD>

<BODY BGCOLOR="#FFFFFF">

<P>
<TABLE BORDER="0" CELLPADDING="0" CELLSPACING="0" WIDTH="570">
	<TR>
		<TD>
			<P ALIGN="CENTER">&nbsp;</P>
			<CENTER>
			<P><IMG SRC="assets/images/chess.JPG" WIDTH="300" HEIGHT="222" ALIGN="BOTTOM" BORDER="0" NATURALSIZEFLAG="3"></P>

			<P>
			<TABLE BORDER="0" CELLPADDING="2" WIDTH="450">
				<TR>
					<TD WIDTH="100%" HEIGHT="12">&nbsp;</TD>
				</TR>
				<TR>
					<TD WIDTH="100%" VALIGN="TOP">
						<P>As a dedicated channel advocate, AST is committed to forming strong relationships with our resellers. And with
						this in mind, AST created an extensive menu of sales and marketing tools to help promote your business and make
						selling AST products easier than ever. The Sales Tools includes a series of programs designed to increase your
						sales.</P>
<% if session("ovation_level") <> "B" then %>
						<P><A HREF="end_user_leads/main.html" target="body"><B>The End User Lead Match program</B></A> matches profiled
						qualified business end user leads to your business. All leads are matched using a powerful lead matching system
						based on the information provided in the reseller registration form. Leads are delivered electronically within
						24 hours while they are still hot. All you have to do is follow up.</P>
<% if session("ovation_level") = "G" then %>
						<P><B>AST's product placement programs</B> make it easy to demonstrate and evaluate AST products. From the <A HREF="../sales_tools/seed_units/main.html"
						target="body">Seed Unit program</A> which provides reseller evaluation systems for 60 days, to the <A HREF="../sales_tools/notebook_purchase/main.html"
						target="body">Notebook Purchase Program</A>, designed to arm your sales reps with AST notebooks at significant
						discounts, AST's product placement programs cover all your needs.</P>
<% else %>
						<P><B>AST's product placement programs</B> make it easy to demonstrate and evaluate AST products. From the <A HREF="../sales_tools/demo_units/main.html"
						target="body">Demo Unit program</A> which allows resellers to purchase demonstration units at significant discounts, to the <A HREF="../sales_tools/notebook_purchase/main.html"
						target="body">Notebook Purchase Program</A>, designed to arm your sales reps with AST notebooks at significant
						discounts, AST's product placement programs cover all your needs.</P>
<% end if %>
						<P>We also understand the importance of displaying your status as an AST Ovation! Reseller. Through the Ovation!
						Program, you receive a package of merchandise that does just that.
<% end if %>
					</TD>
				</TR>
				<TR>
					<TD WIDTH="100%" HEIGHT="48"></TD>
				</TR>
				<TR>
					<TD WIDTH="100%" HEIGHT="68">
						<P ALIGN="CENTER"><B><I>&nbsp;For more detailed information, take a look at each section of the Sales Tools. We
						are sure you will find they will make it easier for you to sell AST products.</I></B>
					</TD>
				</TR>
			</TABLE>

</CENTER>
		</TD>
	</TR>
</TABLE>


</BODY>

</HTML>