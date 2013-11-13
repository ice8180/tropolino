<div data-role="page" id="friends">
	<div data-role="header" data-id="header">
		<div id="notification" class="hidefromanonymous">
			<a href="#friend_requests" data-role="none" class="white_link friend_request" 
			class="friend_request" data-transition="flip">
			</a>
		</div>
		<h1>Friends</h1>
		<a href="" data-add-back-btn="true" data-rel="back" data-icon="back" class="ui-btn-right">Back</a>
	</div>
	<div data-role="content" align="center" style="background-color:#ff8030;">
		<fieldset class="ui-grid-solo">
			<div class="ui-block-a">
				<img src="images/asset/buttons2/amici1.png" align="center" class="logo_title"/>
			</div>
		</fieldset>
		<fieldset class="ui-grid-solo" id="friend_req_icon">
			<div class="ui-block-a" style="margin: 0px 0 30px 0;">
				<a href="#friend_requests" data-role="button" class="width70" data-theme="a" data-id=""><span class="view_friend_requests" id="view_friend_requests"></span></a>
			</div>			
		</fieldset>
		<ul id="friendList" data-role="listview" data-filter="true" data-theme="a" data-inset="true" data-mini="true">
			<li class="userToShow">
				<a href="#member_profile" data-transition="flip" data-split-icon="star" data-id="" title="Clicking on this will take you to the friends profile">
					<img src="" class="ui-li-thumb friend_image">
					<h3 class="ui-li-heading friend_name"></h3>
					<p class="ui-li-desc friend_status"></p>					
				</a>
			</li>
		</ul>
	</div>
</div>
<div data-role="page" id="friend_requests">
	<div data-role="header" data-id="header">
		<a href="" data-add-back-btn="true" data-rel="back" data-icon="back">Back</a>
		<h1>Friend Requests</h1>
	</div>
	<div data-role="content" align="center" style="background-color:#ff8030;">
		<ul id="friendRequestsList" data-role="listview" data-filter="true" data-theme="a" data-inset="true" data-mini="true">
			<li class="userToShow no_margin">
				<a href="#member_profile" data-transition="flip" data-split-icon="star" data-id="" title="Clicking on this will take you to the friends profile">
					<img src="" class="ui-li-thumb friend_image">
					<h3 class="ui-li-heading friend_name"></h3>
					<p class="ui-li-desc friend_localita"></p>
					<p class="ui-li-desc friend_msg"></p>				
				</a>
				<fieldset class="ui-grid-a no_margin">
					<div class="ui-block-a"><button class="did" id="friendRequestsListAccept" data-mini="true" data-id="" data-theme="b" data-icon="check">Accept</button></div>
					<div class="ui-block-b"><button class="did" id="friendRequestsListReject" data-mini="true" data-id="" data-theme="a" data-icon="delete">Reject</button></div>
				</fieldset>
			</li>
		</ul>
	</div>
</div>