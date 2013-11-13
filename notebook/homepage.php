<div data-role="page" id="homepage">
	<div data-theme="a" data-role="header">
		<div id="notification" class="hidefromanonymous">
			<a href="#inbox" data-role="none" class="white_link unread_msg" 
			class="unread_msg" data-transition="flip">&nbsp;
			</a>
			<a href="#friend_requests" data-role="none" class="white_link friend_request" 
			data-transition="flip">&nbsp;
			</a>
		</div>
		<h1>
			Home Page
			<a data-role="button" data-transition="slidedown"  href="#settings" class="ui-btn-right button_common" style="right:2%">
				Settings
			</a>
		</h1>
	</div>
	<div data-role="content" align="center" style="margin: auto;">
		<!-- <fieldset class="ui-grid-solo">
			<div class="ui-block-a">
				<img src="images/logo.png" align="center" class="logo"/>
			</div>
		</fieldset> -->
		<fieldset class="ui-grid-solo">
			<div class="ui-block-a">
				<img src="images/asset/buttons2/homepage.png" class="logo_title"/>
			</div>
			<div class="ui-block-a hidewithadmin" >
				<a href="#livenow" data-transition="fade" data-theme="a" class="slide" style="alignment-adjust:central">
					<img src="./images/asset/hui.png" style="width: 90%; height: 100px; alignment-adjust: central" />
				</a>		
			</div>
			<div class="ui-block-a hidewithadmin" style="margin: 10px 0 0 0;">
				<a href="#ricerca" data-transition="fade" data-theme="a" class="slide" style="alignment-adjust:central">
					<img src="./images/asset/RICERCA GRANDE.png" style="width: 90%; height: 100px; alignment-adjust: central" />
				</a>		
			</div>
			
			<div class="ui-block-a showwithadmin" >
                <a href="#locali_found" id="classifica_locali" data-transition="fade" data-theme="a" data-role="button" class="slide" style="alignment-adjust:central">
                    <span>Classifica Locali</span>
                </a>        
            </div>
            <div class="ui-block-a showwithadmin" style="margin: 10px 0 0 0;">
                <a href="#ricerca" data-transition="fade" data-theme="a" data-role="button" class="slide" style="alignment-adjust:central">
                    <span>Ricerca</span>
                </a>        
            </div>
            <div class="ui-block-a showwithadmin" style="margin: 10px 0 0 0;">
                <a href="#correggi_locali" data-transition="fade" data-theme="a" data-role="button" class="slide" style="alignment-adjust:central">
                    <span>Correggi posizione Locali</span>
                </a>        
            </div>
		</fieldset>
		<!-- <p>
			<h2>Description</h2>
			Description text will come here.
		</p>
		<br/>
		<img src="images/promo2.jpg" alt="" height="50px" title="Example Ad"/>
		<br/> -->
	</div>
	<?php include('./notebook/footer.php'); ?>
</div>
<div data-role="page" id="loginorregister">
	<div data-theme="a" data-role="header">
		<h1>Login / Register</h1>
	</div><br/>
	<fieldset style="padding:20px;">
		<div class="ui-grid-solo">
			<div class="ui-block-a no_shadow">
				<h1>Login / Registrazione per continuare</h1>
			</div>
		</div>					
		<form action="inc/process_new_upload_image.php" method="post" data-ajax="false" enctype="multipart/form-data">
			<div class="ui-grid-solo childtextnodec">
				<a href="#login" class="ui-block-a"><button data-theme="a">Login</button></a>
				<a href="#register" class="ui-block-a"><button data-theme="a">Register</button></a>
				<a href="#homepage" class="ui-block-a"><button data-theme="a">Homepage</button></a>
			</div>
		</form>
	</fieldset>
</div>