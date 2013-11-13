<div data-role="page" id="inbox">
	<div data-role="header" data-id="header">
		<div id="notification" class="hidefromanonymous">
			<a href="#inbox" data-role="none" class="white_link unread_msg" 
			class="unread_msg" data-transition="flip">
			</a>
		</div>
		<h1>Messaggi</h1>
		<a href="" data-add-back-btn="true" data-rel="back" data-icon="back" class="ui-btn-right">Back</a>
	</div>
	<div data-role="content" align="center" style="background-color:#ff8030;">
		<fieldset class="ui-grid-solo">
			<!-- <div class="ui-block-a">
				<img src="images/logo.png" align="center" class="logo"/>
			</div> -->
			<div class="ui-block-a">
				<img  class="logo_title" src="images/asset/buttons2/messaggi1.png" align="center"/>
			</div>
			<div class="ui-block-a" style="margin: 10px 0 20px 0;">
				<a href="#scrivi" data-transition="flip" title="Compose Message">
					<img src="images/asset/buttons2/scrivi.png" align="left" width="40%;"/>
				</a>
			</div>
		</fieldset>

		<ul id="inboxList" data-role="listview" data-filter="true" data-inset="true" data-theme="a">
			<li data-role="collapsible-set" class="userToShow">
				<a href="#popupmessage" class="no_dec no_margin im" data-id="" data-type="" data-transition="slide" title="Compose Message">
					<img src="" class="ui-li-thumb inbox_image" />
					<fieldset class="ui-grid-solo">
						<div class="ui-block-a">
							<span class="inbox_from"></span>
						</div>
						<div class="ui-block-a">
							<span class="inbox_time"></span>
						</div>
						<div class="ui-block-a">
							<p class="inbox_message"></p>
						</div>
					</fieldset>
				</a>
			</li>
		</ul>
	</div>
</div>
<div data-role="page" id="popupmessage">
	<div data-role="header" data-id="header">
		<a href="" data-add-back-btn="true" data-rel="back" data-icon="back">Back</a>
		<h1>Messaggi Detail</h1>
	</div>
	<div data-role="content" align="center" style="background-color:#ff8030;">
		<fieldset class="ui-grid-solo" id="popupMessageDetail" style="width: 100%;">
			<div class="ui-grid-solo noinnerpad" id="popupMessageDetail" >
				<div class="ui-block-a"><button type="button" data-theme="a" data-mini="true">
					<img src="" class="im_image" style="max-width:25%; height: 40px; float: left">
					<span class="ui-li-heading im_from" data-role="none" style="text-transform: capitalize;"></span>
				</button></div>	   
			</div>
		</fieldset>
		<fieldset class="ui-grid-solo" style="width: 100%;">
			<ul data-role="listview" id="popupMessageContent" data-inset="true" class="noshadow">
				<li class="no_margin msg_received"  data-theme="a">
					<div>
						<span class="ui-li-desc im_time"></span>
						<p class="im_msg" style="word-wrap: break-word; white-space: pre;"></p>
					</div>	
				</li>
				<li class="no_margin msg_sent"  data-theme="c">
					<div>
						<span class="ui-li-desc im_time"></span>
						<p class="im_msg" style="word-wrap: break-word; white-space: pre;"></p>
					</div>	
				</li>
			</ul>
		</fieldset>
		<div data-theme="c" data-role="footer" id="popupmessage_footer" data-position="fixed" class="no_margin">
	        <div data-role="fieldcontain">
	            <textarea name="textarea" id="msg_to_send" style="float:left; margin-left: 5px; width:80%"></textarea>
		        <div data-role="button"  id="msg_to_send_button" style="margin-top: 8px;" data-inline="true" data-icon="check" 
		        class="ui-btn-right" data-iconpos="top">&nbsp;Send&nbsp;</div>
	        </div>
	    </div>
	</div>
</div>