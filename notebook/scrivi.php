<div data-role="page" id="scrivi">
	<div data-role="header" data-id="header">
		<!-- <a data-transition="flip" data-role="button" href="#homepage" title="Back to Home Page" class="noinnerpad">
			<img src="./images/logo.png" style="height: 28px; alignment-adjust: central;" />
		</a> -->
		<a href="" data-add-back-btn="true" data-rel="back" data-icon="back">Back</a>
		<h1>Messaggi</h1>
	</div>
	<div data-role="content" align="center" style="background:#ff8030;">
		<fieldset class="ui-grid-solo">
			<!-- <div class="ui-block-a">
				<img src="images/logo.png" align="center" width="20%;"/>
			</div> -->
			<div class="ui-block-a">
				<img src="images/asset/buttons2/messaggi1.png" align="center" class="logo_title"/>
			</div>
		</fieldset>

		<fieldset class="ui-grid-solo">
			<div class="ui-block-a">
	        	<select name="select-choice-month" id="select-recepient" data-theme="a">
		            <option value="-1">DESTINATARIO</option>
		            <option class="showwithadmin" value="all">All</option>
	            	<!-- etc. -->
	        	</select>
	   		</div><br/>
	        <div class="ui-block-a">
				<textarea id="compose_message" cols="40" rows="8" placeholder="Scrivi Messaggio" name="textarea" id="textarea"></textarea>
			</div>
		</div>
		<fieldset class="ui-grid-solo">
			<div class="ui-block-a" style="margin: auto; width: 65%;">
				<div id="sendMessage" data-theme="a" data-role="button">INVIA</div>
			</div>
		</fieldset>
		<!-- <br/>
		<img src="images/promo2.jpg" alt="" height="50px" title="Example Ad"/>
		<br/> -->
	</div>
</div>
<div data-role="page" id="scrivi_no_name">
	<div data-role="header" data-id="header">
		<!-- <a data-transition="flip" data-role="button" href="#homepage" title="Back to Home Page" class="noinnerpad">
			<img src="./images/logo.png" style="height: 28px; alignment-adjust: central;" />
		</a> -->
		<a href="" data-add-back-btn="true" data-rel="back" data-icon="back">Back</a>
		<h1>Messaggi</h1>
	</div>
	<div data-role="content" align="center" style="background:#ff8030;">
		<fieldset class="ui-grid-solo">
			<!-- <div class="ui-block-a">
				<img src="images/logo.png" align="center" width="20%;"/>
			</div> -->
			<div class="ui-block-a">
				<img src="images/asset/buttons2/messaggi1.png" align="center" class="logo_title"/>
			</div>
		</fieldset>

		<fieldset class="ui-grid-solo">
	        <div class="ui-block-a">
				<textarea id="compose_message_no_name" cols="40" rows="8" placeholder="Scrivi Messaggio"></textarea>
			</div>
		</div>
		<fieldset class="ui-grid-solo">
			<div class="ui-block-a" style="margin: auto; width: 65%;">
				<div id="sendMessage_no_name" data-theme="a" data-role="button">INVIA</div>
			</div>
		</fieldset>
		<!-- <br/>
		<img src="images/promo2.jpg" alt="" height="50px" title="Example Ad"/>
		<br/> -->
	</div>
</div>