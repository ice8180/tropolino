<div data-role="page" id="cerca">
	<div data-role="header" data-id="header">
		<!-- <a data-transition="flip" data-role="button" href="#homepage" title="Back to Home Page" class="noinnerpad">
			<img src="./images/logo.png" style="height: 28px; alignment-adjust: central;" />
		</a> -->
		<a href="" data-add-back-btn="true" data-rel="back" data-icon="back">Back</a>
		<h1>Cerca</h1>
	</div>
	<div data-role="content"  data-theme="a" align="center" style="background:#ff8030; margin: auto;">
		<!-- <img  src="images/logo.png" align="center" class="logo"/> -->
		<fieldset class="ui-grid-solo"><div class="ui-block-a">&nbsp;</div></fieldset>
		<div data-role="navbar">
			<ul>
				<li><a href="javascript:cerca_toggle(false);" class="ui-btn-active ui-state-persist">Cerca</a></li>
				<li><a href="javascript:cerca_toggle(true);">Tutti I Membri</a></li>
			</ul>
		</div><!-- /navbar -->
		<form id="cerca_form">
			<fieldset class="ui-grid-solo">
				<div class="ui-block-a">
					<input type="search" name="search" id="cerca_input" value="" placeholder="Nome Locale" />	
				</div>
				<div class="ui-block-a cerca_eta_holder">
					<select name="ricerca_provincia" id="cerca_provincia">
						<option value=""> ETA </option>
						<option value="16-18"> 16 - 18 </option>
						<option value="18-25"> 18 - 25 </option>
						<option value="26-30"> 26 - 30 </option>
						<option value="31-35"> 31 - 35 </option>
						<option value="36-40"> 36 - 40 </option>
						<option value="41-45"> 41 - 45 </option>
						<option value="46-50"> 46 - 50 </option>
						<option value="51-55"> 51 - 55 </option>
						<option value="56-60"> 56 - 60 </option>
						<option value="61-65"> 61 - 65 </option>
						<option value="66-70"> 66 - 70 </option>
						<option value="56-60"> 71 - 75 </option>
						<option value="66-70"> 76 - 80 </option>
						<option value="61-65"> 81 - 85 </option>
						<option value="66-70"> 86 - 90 </option>
						<option value="56-60"> 91 - 95 </option>
						<option value="66-70"> 96 - 100 </option>
					</select>
				</div>
				<div class="ui-block-a cerca_sesso_holder">
					<select name="cerca_sesso" id="cerca_sesso" >
						<option value=""> SESSO </option>
						<option value="m"> Maschio </option>
						<option value="f"> Femmina </option>
					</select>
				</div>
				<div class="ui-block-a cerca_citta_holder">
					<select name="cerca_comune" id="cerca_comune" >
						<option value=""> PROVINCIA </option>
					</select>
				</div>
				<div class="ui-block-a">&nbsp;</div>
				<div class="ui-block-a">
					<a href="#users_found" id="cerca_search" data-transition="fade" class="slide" data-theme="a" style="width: 100%;alignment-adjust: central">
						<img src="./images/asset/buttons1/cerca1.png" class="button_logo" style="alignment-adjust: central" />
					</a>
				</div>
			</fieldset>
		</form>
		<fieldset class="ui-grid-solo" id="cerca_member_list_cont" style="display: none; margin-top: 20px; width: 100%;">
			<ul id="cerca_member_list" data-role="listview" data-filter="true" data-theme="a" data-inset="true">
				<li class="userToShow">
					<a href="#member_profile" data-transition="flip" data-split-icon="star" data-id="" title="Clicking on this will take you to the member profile page">
						<img class="cerca_user_image" src="" class="ui-li-thumb live_now_img" style="height: 100%;">
						<!-- <h3 class="ui-li-heading live_now_name" style="margin-top:-5px;"></h3>
						<p class="ui-li-desc live_now_city"></p>
						<span class="ui-li-desc live_now_date"></span> -->
						<h3 class="cerca_user_name"></h3>
					</a>
				</li>
			</ul>
		</fieldset>
		<!-- <br/>
		<img src="images/promo2.jpg" alt="" height="50px" title="Example Ad"/>
		<br/> -->
	</div>
	<?php include('./notebook/footer.php'); ?>
</div>

<div data-role="page" id="users_found">
	<div data-role="header" data-id="header">
		<a href="" data-add-back-btn="true" data-rel="back" data-icon="back">Back</a>
		<h1>Cerca</h1>
	</div>
	<fieldset class="ui-grid-solo" style="padding: 20px;">
		<ul class="cerca_found_users" data-theme="a" data-role="listview" data-inset="true">
			<li class="userToShow">
				<a data-id="" href="#member_profile" data-transition="slide">
					<img class="cerca_user_image" src="" class="ui-li-thumb live_now_img" style="height: 100%;">
					<h3 class="cerca_user_name"></h3>
					<p class="cerca_user_province"></p>
				</a>
			</li>
		<ul>
	</fieldset>
	<?php include('./notebook/footer.php'); ?>
</div>