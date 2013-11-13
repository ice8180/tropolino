<div data-role="page" id="social">
	<div data-role="content" align="center" class="social hidewithadmin">
		<fieldset class="ui-grid-solo">
			<div class="ui-block-a">
				<img src="images/asset/buttons2/social1.png" alt="" class="logo_title"/><br/>
			</div> 
		</fieldset><br/>
		<fieldset class="ui-grid-a">
			<div class="ui-block-a">
				<a data-transition="pop" href="#profile_user">
					<img src="images/asset/profilo.png" alt="" /><br/>
					Profilo
				</a>
			</div>
			<div class="ui-block-b" id="amici_icon">
				<a data-transition="fade" href="#friends">
					<img src="images/asset/amici.png" alt="" />
					<sup id="amici_count"></sup>
					<br/>
					<span>Amici</span>
				</a>
			</div>	   
		</fieldset>
		<fieldset class="ui-grid-a">
			<div class="ui-block-a">
				<a data-transition="fade" href="#inbox">
					<img src="images/asset/messaggi.png" alt=""/><br/>
					Messagi
				</a>
			</div>
			<div class="ui-block-b" id="cerca_icon">
				<a data-transition="fade"  href="#cerca">
					<img src="images/asset/cerca.png" alt=""/><br/>
					<span>Cerca</span>
				</a>
			</div>	   
		</fieldset>
		<fieldset class="ui-grid-a" id="locali_icon">
			<div class="ui-block-a social userToShow" style="text-align: center;">
				<a data-transition="pop" href="#member_profile_clubList" data-id="auth">
					<img src="images/asset/il_locale.png" alt="" />
					<sup id="locali_count"></sup>
					<br/>
					Locali
				</a>
			</div>
			
			<!--div class="ui-block-b">
				<a data-transition="fade" href="#eventi" class="otherUser">
					<img src="images/asset/events.png" alt="" /><br/>
					Eventi
				</a>
			</div-->
				   
		</fieldset>
	</div>
	<div data-role="content" align="center" class="social showwithadmin" style="display: none;">
		<fieldset class="ui-grid-solo no_shadow">
			<div class="ui-block-a">
				<h3>Broadcast Message</h3>
			   	<textarea id="broadcast_mail_message" placeholder="Write message here"></textarea>
			   	<a data-role="button" data-mini="true" data-id=""  id="broadcast_mail">Send Mail</a>
			</div>
		</fieldset>
		<fieldset class="ui-grid-a no_shadow">
			<div class="ui-block-a">
				<a data-transition="fade" href="#inbox">
					<img src="images/asset/messaggi.png" alt=""/><br/>
					Messagi
				</a>
			</div>
			<div class="ui-block-b">
				<a data-transition="fade"  href="#cerca">
					<img src="images/asset/cerca.png" alt=""/><br/>
					Cerca
				</a>
			</div>	 
		</fieldset>
	</div>
	
	<?php include('./notebook/footer.php'); ?>
</div>