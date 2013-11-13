<div data-role="page" id="ricerca">
	<div data-role="header" data-id="header">
		<!-- <a data-transition="flip" data-role="button" href="#homepage" title="Back to Home Page" class="noinnerpad">
			<img src="./images/logo.png" style="height: 28px; alignment-adjust: central;" />
		</a> -->
		<a href="" data-add-back-btn="true" data-rel="back" data-icon="back">Back</a>
		<h1>Ricerca</h1>
	</div>
	<div data-role="content" data-theme="a" align="center" style="background:#FF8030; margin: auto;">
		<!-- <img  src="images/logo.png" align="center" width="20%;"/> -->
		<fieldset class="ui-grid-solo"><div class="ui-block-a">&nbsp;</div></fieldset>
				
		<form id="frm_ricerca">
			<fieldset class="ui-grid-solo">
				<div class="ui-block-a">
					<input type="search" name="search" id="ricerca_search_bar" value="" placeholder="Nome Locale" />	
				</div>
				<div class="ui-block-a">
					<select name="ricerca_provincia" id="ricerca_provincia" >
						<option value=""> PROVINCIA </option>
					</select>
				</div>
				<div class="ui-block-a">
					<select name="ricerca_citta" id="ricerca_citta" >
						<option value=""> CITTA </option>
					</select>
				</div>
				<div class="ui-block-a">
					<select name="ricerca_nazione" id="ricerca_nazione" >
						<option value=""> NAZIONE </option>
					</select>
				</div>
				<div class="ui-block-a">
					<select name="ricerca_comune" id="ricerca_comune" >
						<option value=""> TIPO </option>
					</select>
				</div>
				<div class="ui-block-a">&nbsp;</div>
				<div class="ui-block-a">
					<a href="#locali_found" id="ricerca_search" data-transition="fade" class="slide" data-theme="a" style="width: 100%;alignment-adjust: central">
						<img src="./images/asset/buttons1/cerca1.png" class="button_logo" style="alignment-adjust: central" />
					</a>
				</div>
			</fieldset>
		</form>
		<!-- <br/>
		<img src="images/promo2.jpg" alt="" height="50px" title="Example Ad"/>
		<br/> -->
	</div>
	<?php include('./pages/footer.php'); ?>
</div>
<div data-role="page" id="locali_found" data-position-to="window">
	<div data-role="header" data-id="header">
		<!-- <a data-transition="flip" data-role="button" href="#homepage" title="Back to Home Page" class="noinnerpad">
			<img src="./images/logo.png" style="height: 28px; alignment-adjust: central;" />
		</a> -->
		<a href="" data-add-back-btn="true" data-rel="back" data-icon="back">Back</a>
		<h1>Liste Locali</h1>
	</div>
	<div data-role="content" align="center" style="background-color:#ff8030;">
		<ul id="locali_found_list" data-role="listview" data-filter="true" data-theme="a" data-inset="true">
			<li class="clubToShow" data-id="">
				<a href="#club_page" data-transition="slide">
					<img src="" class="ricerca_club_img" style="height: 100%"/>
					<h3 class="ricerca_club_name"></h3>
					<span class="ricerca_club_locali"></span>	
				</a>				
			</li>
		</ul>
	</div>
	<?php include('./pages/footer.php'); ?>
</div>