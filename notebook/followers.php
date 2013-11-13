<div data-role="page" id="followers">
	<div data-role="header" data-id="header">
		<!-- <a data-transition="flip" data-role="button" href="#homepage" title="Back to Home Page" class="noinnerpad">
			<img src="./images/logo.png" style="height: 28px; alignment-adjust: central;" />
		</a> -->
		<a href="" data-add-back-btn="true" data-rel="back" data-icon="back">Back</a>
		<h1>Friends</h1>
	</div>
	<div data-role="content" align="center" style="background-color:#ff8030;" class="no_shadow">
		<fieldset class="ui-grid-solo">
			<!-- <div class="ui-block-a">
				<img src="images/logo.png" align="center" width="20%;"/>
			</div> -->
			<div class="ui-block-a" style="margin: 10px 0 30px 0;">
				<h1>FOLLOWERS</h1>
			</div>
		</fieldset>
		<ul id="followerList" data-role="listview" data-filter="true" data-theme="a" data-inset="true">
			<li class="userToShow">
				<a href="#member_profile" data-transition="flip" data-split-icon="star" data-id="" title="Clicking on this will take you to the friends profile">
					<img src="" class="ui-li-thumb friend_image" style="height: 100%;">
					<h3 class="ui-li-heading friend_name"><!-- Broken Bells --></h3>
					<p class="ui-li-desc friend_status"><!-- Online --></p>					
				</a>
			</li>
		</ul>
		<!-- <br/>
		<img src="images/promo2.jpg" alt="" height="50px" title="Example Ad"/>
		<br/> -->
	</div>
</div>