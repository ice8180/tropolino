<div data-role="page" id="settings">
	<div data-role="header" data-id="header">
		<a href="#homepage" data-add-back-btn="true" data-icon="back" data-transition="slideup">Back</a>
		<h1>Settings</h1>
	</div>
	<div data-role="content"  data-theme="a" align="center" style="background:#ff8030 !important;">
		<div class="ui-grid-solo hidefromanonymous">
			<div class="ui-block-a">
				<div data-role="button" data-mini="true"><span id="settings_social_name"></span></div>
			</div>
			<div class="ui-block-a">
				<div data-role="button" data-mini="true"><span id="settings_user_name"></span></div>
			</div>
		</div>
		<div class="ui-grid-a hidefromanonymous">
			<div class="ui-block-a">
				<div data-role="fieldcontain" data-theme="a">
		        	<label for="flip-5">Localization:</label>
		        	<select name="flip-5" id="flip-5" data-role="slider" data-theme="c" data-mini="true" data-track-theme="a">
		                <option value="on">On</option>
		                <option value="off">Off</option>
		        	</select>
				</div>
			</div>
			<div class="ui-block-b">
				<div data-role="fieldcontain" data-theme="a">
		        	<label for="flip-6">Push Notification:</label>
		        	<select name="flip-6" id="flip-6" data-role="slider" data-theme="c" data-mini="true" data-track-theme="a">
		                <option value="on">On</option>
		                <option value="off">Off</option>
		        	</select>
				</div>
			</div>
		</div><br/>
		<div data-role="fieldcontain" data-theme="a">
        	<label for="settings_club_distance">Club Distance:</label>
			<input type="range" name="settings_club_distance" id="settings_club_distance" data-mini="true"
				 value="25" min="0" max="100" data-theme="a" data-track-theme="c" />
			 <a href="#homepage" id="settings_club_distance_submit" data-role="button" data-mini="true" 
				data-transition="fade" data-theme="a" class="slide" style="width: 100%;">Save</a>
		</div><br/>
		<div data-role="fieldcontain" class="hidefromanonymous">
			<div class="ui-block-solo">
				<a href="#homepage" id="log_me_out" data-role="button" data-mini="true" 
				data-transition="fade" data-theme="a" class="slide" style="width: 100%;">Logout</a>
			</div>
		</div>
	</div>
</div>