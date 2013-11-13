<div data-role="page" id="event">
	<div data-role="header" data-id="header">
		<a href="" data-add-back-btn="true" data-rel="back" data-icon="back">Back</a>
		<h1>Eventi</h1>
	</div>
	<div data-role="content" data-theme="a" align="center" style="background:#ff8030;">
		<!--fieldset class="ui-grid-solo">
			<div class="ui-block-a">
			</div>
			<div class="ui-block-a">
				<img src="images/asset/buttons2/eventi.png" align="center" class="logo_title"/>
			</div>
		</fieldset-->
		<div class="showwithadmin" data-role="collapsible" data-collapsed="false" data-content-theme="c" data-mini="true" data-inset="true">
		   <h3>Admin</h3>
		   <div>
		   		<fieldset class="ui-grid-a" id="" class="showwithadmin" style="width: 100%; text-align: center;">
					<div class="ui-block-a">
						<div data-role="fieldcontain" data-theme="a">
				        	<label for="admin_event_live_now">Live Now:</label>
				        	<select name="admin_event_live_now" id="admin_event_live_now" data-role="slider" data-theme="c" data-mini="true" data-track-theme="a">
				                <option value="1" >On</option>
				                <option value="0" >Off</option>
				        	</select>
						</div>
					</div>
					<div class="ui-block-b">
						<div data-role="fieldcontain" data-theme="a">
				        	<label for="admin_event_prioritise">Alta Visibilita:</label>
				        	<select name="admin_event_prioritise" id="admin_event_prioritise" data-role="slider" data-theme="c" data-mini="true" data-track-theme="a">
				                <option value="1">On</option>
				                <option value="0">Off</option>
				        	</select>
						</div>
					</div>
				</fieldset>
				<fieldset class="ui-grid-solo" id="" class="showwithadmin" style="width: 100%;">
					<div class="ui-block-a">
						<div id="admin_event_button" data-role="button" data-inline="false" data-theme="a" data-mini="true">
							Save
						</div>		
					</div>
				</fieldset>
		   </div>
		</div>
		
		<fieldset class="ui-grid-solo" id="current_Event_Show" style="width: 100%;">
			<a data-role="button" class="halfwidth hidefromanonymous" data-mini="true" data-id="" style="display: inline-block;">
				<div class="follow_event"></div>
			</a>
			<div data-role="collapsible" data-collapsed="false" data-content-theme="c" data-mini="true" data-inset="true">
			   <h3>Evento</h3>
			   <span class="se_name"></span>
			</div>
			<div data-role="collapsible" data-collapsed="false" data-content-theme="c" data-mini="true" data-inset="true">
			   <h3>Flyer</h3>
			   <span><img src="" style="max-width: 100%;"/></span>
			</div>
			<div data-role="collapsible" data-collapsed="true" data-content-theme="c" data-mini="true" data-inset="true">
			   <h3>Descrizione</h3>
			   <span class="se_description desc"></span>
			</div>
			<div data-role="collapsible" data-collapsed="false" data-content-theme="c" data-mini="true" data-inset="true">
			   <h3>Data</h3>
			   <span class="se_date"></span>
			</div>
			<div data-role="collapsible" data-collapsed="false" data-content-theme="c" data-mini="true" data-inset="true">
			   <h3>Indirizzo</h3>
			   <a href="#club_page" data-id="" class="se_club se_club_name clubToShow"></a><br/>
			   <a href="#club_page" data-id="" class="se_club se_club_localita clubToShow"></a><br/>
			   <a href="#club_page" data-id="" class="se_club se_club_provincia clubToShow"></a>
			</div>
			<!-- <div data-role="collapsible" data-collapsed="false" data-content-theme="c" data-mini="true" data-inset="true">
			   <h3>Localita</h3>
			   <a href="#club_page" data-id="" class="se_club se_club_localita clubToShow"></a>
			</div>
			<div data-role="collapsible" data-collapsed="false" data-content-theme="c" data-mini="true" data-inset="true">
			   <h3>Provincia</h3>
			   <a href="#club_page" data-id="" class="se_club se_club_provincia clubToShow"></a>
			</div> -->
		</fieldset>
	</div>
</div>