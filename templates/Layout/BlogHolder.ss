<div class="row">

	<div class="nine columns">
		<div class="blogcontent">
			<% if SelectedTag %>
				<div class="selectedTag">
					<em>
					<% _t('VIEWINGTAGGED', 'Viewing entries tagged with') %> '$SelectedTag'
					</em>
				</div>
			<% else_if SelectedDate %>
				<div class="selectedTag">
					<em>
					<% _t('VIEWINGPOSTEDIN', 'Viewing entries posted in') %> $SelectedNiceDate
					</em>
				</div>
			<% end_if %>
			
			<% if BlogEntries %>
				<% loop BlogEntries %>
					<% include BlogSummary %>
				<% end_loop %>
			<% else %>
				<h2><% _t('NOENTRIES', 'There are no blog entries') %></h2>
			<% end_if %>
			
			<% include BlogPagination %>
		</div>
	</div>

	<div class="three columns">
		<% if Menu(2) %>
			<% include SideBar %>
		<% end_if %>
		<% include BlogSideBar %>
		<% include BlogPagination %>
	</div>

</div>