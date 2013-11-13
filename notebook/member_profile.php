<div data-role="page" id="member_profile">
	<div data-role="header" data-id="header">
		<a href="" data-add-back-btn="true" data-rel="back" data-icon="back">Back</a>
		<h1>Membri</h1>
	</div>
	<div data-role="content" data-theme="a" align="center" style="background:#ff8030;">
		<fieldset class="ui-grid-solo">
			<!-- <div class="ui-block-a">
				<img src="images/logo.png" align="center" class="logo"/>
			</div>
			<div class="ui-block-a">
				<img src="images/asset/buttons2/membri.png" align="center" class="logo_title"/>
			</div-->
		</fieldset>
		<div id="member_profile_Show" style="width: 100%;">
			<fieldset class="ui-grid-a no_shadow">
				<div class="ui-block-a no_shadow">
					<img class="logo" id="ms_pic" src="images/dummy/user.png" alt="" />
				</div>
				<div class="ui-block-b hidewithadmin" id="add_delete_friend">
					<a data-role="button" data-id="" class="button no_margin" data-mini="true"></a>
					<fieldset data-role="control-group">
						<textarea id="add_friend_msg" data-mini="true">Please add me as a friend.</textarea>						
					</fieldset>
				</div>
				<div class="ui-block-b showwithadmin" id="delete_user">
					<a data-role="button" data-id="" class="no_margin" data-mini="true">Delete<br/>User</a>
				</div>
				<div class="ui-block-a no_shadow">&nbsp;</div>
				<div class="ui-block-b no_shadow"></div>
				<div class="ui-block-a no_margin">
					<h3 class="ms_name"></h3>
				</div>
				<div class="ui-block-b no_margin">
					<p class="ms_localita"></p>			
				</div>
				<div class="ui-block-a no_margin">
					<p class="ms_gender"></p>					
				</div>
				<div class="ui-block-b no_margin">
					<p class="ms_provincia"></p>					
				</div>
				<div class="ui-block-a no_margin">
					<p class="ms_date"></p>					
				</div>
				<div class="ui-block-b no_margin">
					<p class="ms_indirizzo"></p>					
				</div>
			</fieldset>
			<fieldset class="ui-grid-solo no_shadow">
				<div class="ui-block-a">
					<p class="ms_email" style="font-style:italic; "></p>
				</div>
			</fieldset>
			<fieldset class="ui-grid-a no_shadow">
				<div class="ui-block-a">
					<p>Mobile </p>					
				</div>
				<div class="ui-block-b">
					<p class="ms_mobile"></p>
			   		<p class="ms_phone1"></p>
				</div>
				<div class="ui-block-a">
					<p>Description </p>					
				</div>
				<div class="ui-block-b">
					<p class="ms_description"></p>
				</div>
			</fieldset>
			<fieldset id="MemberGalleryC" class="ui-grid-solo" style="width:80%; padding-bottom: 15px; margin:0 auto; overflow-y: hidden; overflow-x: auto;">
				<ul id="MemberGallery" data-role="none" style="margin:20px auto; white-space: nowrap; display: table;">
					<li>
						<a href="" rel="external"><img data-imgid='' src="" alt="" /></a>
					</li>
				</ul>
			</fieldset>
			<fieldset class="ui-grid-b" style="width:90%; margin:10px auto;">
				<div class="ui-block-a social userToShow" style="text-align: center;">
					<a data-transition="pop" href="#member_profile_clubList" id="member_profile_locali" data-id=''>
						<img src="images/asset/il_locale.png" alt="" />
						<sup id="amici_locali_count"></sup>
						<br/>
						Locali
					</a>
				</div>
				<div class="ui-block-b social" style="text-align: center;">
					<a data-transition="pop" href="#scrivi_no_name" class="emailToSend" data-id="">
						<img src="images/asset/im.png" alt="" /><br/>
						Scrivi
					</a>
				</div>
				<div class="ui-block-c social" style="text-align: center;">
					<a data-transition="pop" class="userToShow_list_events" href="#eventi">
						<img src="images/asset/events.png" alt="" /><br/>
						Eventi
					</a>
				</div>
			</fieldset>
			<!-- <fieldset class="ui-grid-solo no_shadow">
				<div class="ui-block-a">
					<h3>Send Mail</h3>
				   	<textarea class="ms_mail" id="ms_mail" placeholder="Write message here"></textarea>
				   	<a data-role="button" data-mini="true" data-id="" class="ms_send_mail">Send Mail</a>
				</div>
			</fieldset> -->
			
		</div>
	</div>
</div>