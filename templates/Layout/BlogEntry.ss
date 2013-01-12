<div class="row">

	<div class="<% if Menu(2) %>nine<% else %>twelve<% end_if %> columns">
		<div class="blogcontent">
			<div class="blogEntry">
				<h2 class="postTitle">$Title</h2>
				<p class="authorDate"><% _t('POSTEDBY', 'Posted by') %> $Author.XML <% _t('POSTEDON', 'on') %> $Date.Long | $Comments.Count <% _t('COMMENTS', 'Comments') %></p>
				<% if TagsCollection %>
					<p class="tags">
						 <% _t('TAGS', 'Tags:') %> 
						<% control TagsCollection %>
							<a href="$Link" title="<% _t('VIEWALLPOSTTAGGED', 'View all posts tagged') %> '$Tag'" rel="tag">$Tag</a><% if not Last %>,<% end_if %>
						<% end_control %>
					</p>
				<% end_if %>		
				$Content		
			</div>
			
			<% if IsOwner %><p class="edit-post"><a href="$EditURL" id="editpost" title="<% _t('EDITTHIS', 'Edit this post') %>"><% _t('EDITTHIS', 'Edit this post') %></a> | <a href="$Link(unpublishPost)" id="unpublishpost"><% _t('UNPUBLISHTHIS', 'Unpublish this post') %></a></p><% end_if %>
			
			<% if TrackBacksEnabled %>
				<% include TrackBacks %>
			<% end_if %>
			$PageComments
		</div>
	</div>

	<% if Menu(2) %>
	<div class="three columns">
		<% include SideBar %>
	</div>
	<% end_if %>

</div>