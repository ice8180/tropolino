<div data-role="page" id="profile_user" class="no_shadow">
	<div data-theme="a" data-role="header">
		<h1>
			<a data-role="button" data-icon="arrow-l" data-iconpos="left" data-transition="fade"  href="#social" class="ui-btn-left button_common">
				Back
			</a>User Profile
		</h1>
	</div><br/>
	<fieldset class="ui-grid-a" style="width:90%; margin:0 auto;">
		<div class="ui-block-a no_shadow">
			<a id="profile_user_pic_container" href="#upload_image">
				<img class="logo" id="profile_user_pic" src="" alt="" /><br/>
				<div id="profile_user_pic_edit">Edit Image</div>
			</a>
		</div>
		<div class="ui-block-b">
			<img src="images/logo.png" alt="metropolino" title="Metropolino logo" width="50px" height="50px" style="float: right;"/>
		</div>
		<div class="ui-block-a no_margin no_shadow">
			<h3 id="profile_user_name"><!-- Username --></h3>
			<a class="edit edit_profile" href="#register">Edit Profile</a>
			<p id="profile_user_city"><!-- City --></p>
		</div>
		<div class="ui-block-solo social">&nbsp;</div>
	</fieldset>
	<fieldset class="ui-grid-solo" style="width:90%; margin:0 auto;">
		<div class="ui-block-a social no_shadow" style="text-align: center;">			
			<div id="profile_des_edit">
				About Me
				<div class="des_edit" data-role="button" data-inline="true" data-mini="true">Edit</div>
				<div class="des_save" data-role="button" data-inline="true" data-theme="b" data-mini="true">Save</div>
			</div>
			<textarea id="profile_user_about"></textarea>
		</div>
	</fieldset>
	<fieldset id="GalleryC" class="ui-grid-solo" style="width:80%; padding-bottom: 15px; margin:0 auto; overflow-y: hidden; overflow-x: auto;">
		<ul id="Gallery" data-role="none" style="margin:20px auto; white-space: nowrap; display: table;">
			<li>
				<a href="" rel="external"><img data-imgid='' src="" alt="" /></a>
			</li>
		</ul>
	</fieldset>
	<div class="edit" >tap and hold an image to edit</div>
	<fieldset class="ui-grid-solo" style="width:90%; margin:0 auto; text-align: center;">
		<a class="edit edit_gallery" id="gallery_add_image" href="#upload_image">
			Add Images to Gallery
		</a>
	</fieldset>
</div>