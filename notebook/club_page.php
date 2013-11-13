<div data-role="page" id="club_page">
	<div data-role="header" data-id="header">
		<a href="" data-add-back-btn="true" data-rel="back" data-icon="back">Back</a>
		<h1>Pagina Locale</h1>
	</div>
	<div data-role="content"  data-theme="a" align="center" style="background:#ff8030 !important;">
		<div class="showwithadmin" data-role="collapsible" data-collapsed="false" data-content-theme="c" data-mini="true" data-inset="true">
		   <h3>De/Activate</h3>
		   <div>
		   		<fieldset class="ui-grid-solo" id="" class="showwithadmin" style="width: 100%; text-align: center;">
					<div class="ui-block-a">
						<div data-role="fieldcontain" data-theme="a">
				        	<select name="admin_club_priority" id="admin_club_priority" data-role="slider" data-theme="c" data-mini="true" data-track-theme="a">
				                <option value="1" >Active</option>
				                <option value="0" >Inactive</option>
				        	</select>
						</div>
					</div>
					<div class="ui-block-a">
						<div id="admin_club_priority_button" data-role="button" data-inline="false" data-theme="a" data-mini="true">
							Save
						</div>		
					</div>
				</fieldset>
		   </div>
		</div>
		<div class="showwithadmin" data-role="collapsible" data-collapsed="false" data-content-theme="c" data-mini="true" data-inset="true">
           <h3>Update Location</h3>
           <div>
                <fieldset class="ui-grid-solo" id="" class="showwithadmin" style="width: 100%; text-align: center;">
                    <div id="map_canvas" style="width:100%; height:100%"></div>
                    <div class="ui-block-a">
                        <div id="show_lat" data-inline="false" data-theme="a" data-mini="true">
                            <div class="lat">Latitude: <span></span></div>
                            <div class="long">Longitute: <span></span></div>
                            <div class="name">Name: <span></span></div>
                        </div>
                        <div id="confirm_lat" data-role="button" data-inline="false" data-theme="a" data-mini="true">
                            Save
                        </div>
                    </div>
                </fieldset>
           </div>
        </div>
		<div class="hidewithadmin" data-role="collapsible" data-collapsed="false" data-content-theme="c" data-mini="true" data-inset="true">
           <h3>Check In Locali</h3>
           <div>
                <fieldset class="ui-grid-solo" id="" class="hidewithadmin" style="text-align: center;">
                    <div class="ui-block-a">
                        <select data-role="slider" data-theme="c" data-mini="true" data-track-theme="a">
                            <option value="1" >Share on Facebook</option>
                            <option value="0" >Hide from Facebook</option>
                        </select>
                    </div>
                </fieldset>
                <fieldset class="ui-grid-a" class="hidewithadmin">
                    <div class="ui-block-a">
                        <div data-role="button" id="update_locali" data-inline="false" data-theme="a" data-mini="true">
                            Update
                        </div>      
                    </div>
                    <div class="ui-block-b">
                        <a href="#update_local" data-role="button" data-mini="true">Cancel</a> 
                    </div>
                </fieldset>                
           </div>
        </div>
		<fieldset class="ui-grid-solo" id="current_Club_Show" style="width: 100%;">
			<div data-role="button" class="halfwidth hidefromanonymous hidewithadmin" data-mini="true" data-id=""><div class="follow_club"></div></div>
			<div data-role="button" data-mini="true" data-id=""> Users Following : <span class="follow_count"></span> </div>
			<div data-role="collapsible" data-collapsed="false" data-content-theme="c" data-mini="true" data-inset="true">
			   <h3>Nome Locale</h3>
			   <span class="sc_name"></span>
			</div>
			<div data-role="collapsible" data-collapsed="false" data-content-theme="c" data-mini="true" data-inset="true">
			   <h3>Immagini</h3>
			   <!-- <span><img src="" style="width: 100%;"/></span> -->
			   <fieldset id="ClubGalleryC" class="ui-grid-solo" style="width:100%; padding-bottom: 15px; margin:0 auto; overflow-y: hidden; overflow-x: auto;">
					<ul id="ClubGallery" data-role="none" style="margin:0 auto; width: 100%;white-space: nowrap; padding: 0px; display: table;">
						<li><a href="" rel="external"><img data-imgid='' src="" alt="" /></a></li>
					</ul>
				</fieldset>
			</div>
			<div data-role="collapsible" data-collapsed="false" data-content-theme="c" data-mini="true" data-inset="true">
			   <h3>Specialità</h3>
			   <span class="sc_specialita"></span>
			</div>
			<div data-role="collapsible" data-collapsed="true" data-content-theme="c" data-mini="true" data-inset="true">
			   <h3>Descrizione Locale</h3>
			   <span class="sc_description font100"></span>
			</div>
			<div data-role="collapsible" data-collapsed="false" data-content-theme="c" data-mini="true" data-inset="true">
			   <h3>Categoria</h3>
			   <span class="sc_categoria"></span>
			</div>
			<div data-role="collapsible" class="hidewithadmin" data-collapsed="false" data-content-theme="c" data-mini="true" data-inset="true">
			   <h3>Recapiti Telefonici</h3>
			   <p>Cellulare: <a href="" class="sc_cellulare"></a></p>
			   <p>Telefone: <a href="" class="sc_telefone"></a></p>
			   <p>Fax: <a href="" class="sc_fax"></a></p>
			</div>
			<div data-role="collapsible" class="showwithadmin" data-collapsed="false" data-content-theme="c" data-mini="true" data-inset="true">
			   <h3>Recapiti Telefonici</h3>
			   <p>Cellulare: <input type="text" pattern="\+?\d+\.?\/?(\d{0,})?" id="admin_save_cellulare" class="sc_cellulare" /></p>
			   <p>Telefone: <input type="text" pattern="\+?\d+\.?\/?(\d{0,})?" id="admin_save_telefone" class="sc_telefone" /></p>
			   <p>Fax: <input type="text" pattern="\+?\d+\.?\/?(\d{0,})?" id="admin_save_fax" class="sc_fax" /></p>
			   <div id="admin_save_telephone" data-role="button" data-inline="false" data-theme="a" data-mini="true">
					Save
				</div>	
			</div>
			<div data-role="collapsible" data-collapsed="false" data-content-theme="c" data-mini="true" data-inset="true">
			   <h3>Indirizzo</h3>
			   <span class="sc_indirizzo"></span><br/>
			   <span class="sc_provincia"></span><br/>
			   <span class="sc_localita"></span>
			</div>
			<!-- <div data-role="collapsible" data-collapsed="false" data-content-theme="c" data-mini="true" data-inset="true">
			   <h3>Locali Provincia</h3>
			   <span class="sc_provincia"></span>
			</div>
			<div data-role="collapsible" data-collapsed="false" data-content-theme="c" data-mini="true" data-inset="true">
			   <h3>Locali Localita</h3>
			   <span class="sc_localita"></span>
			</div> -->
		</fieldset>
	</div>
</div>