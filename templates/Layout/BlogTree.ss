<div class="row">

	<div class="<% if Menu(2) %>nine<% else %>twelve<% end_if %> columns">
		<div class="blogcontent">
			<% if SelectedTag %>
				<h3><% _t('VIEWINGTAGGED', 'Viewing entries tagged with') %> '$SelectedTag'</h3>
			<% else_if SelectedDate %>
				<h3><% _t('VIEWINGPOSTEDIN', 'Viewing entries posted in') %> $SelectedNiceDate</h3>
			<% end_if %>
			
			<% if BlogEntries %>
				<% control BlogEntries %>
					<% include BlogSummary %>
				<% end_control %>
			<% else %>
				<h2><% _t('NOENTRIES', 'There are no blog entries') %></h2>
			<% end_if %>
			
			<% include BlogPagination %>
		</div>
	</div>

	<% if Menu(2) %>
	<div class="three columns">
		<% include SideBar %>
	</div>
	<% end_if %>

</div>
