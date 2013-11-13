<div data-role="page" id="login" >
	<div data-role="content" style="margin: auto;" align="center">
		<fieldset class="ui-grid-solo">
			<div class="ui-block-a">
				<img  src="images/logo.png" align="center" height="100px;"/>		
			</div>
		</fieldset>	
		<form id="frm_login"  data-theme="c" method="post" action="#">
			<fieldset class="ui-grid-solo">
				<div class="ui-block-a">&nbsp;</div>
				<div class="ui-block-a">
					<input name="login_id" id="login_id"  value="" placeholder="UserName" type="text" class="required" minlength="5"/>
				</div>
				<div class="ui-block-a">
					<input name="login_password" id="login_password"  value="" placeholder="Password" type="password" class="required" minlength="6"/>
				</div>
				<div class="ui-block-a">&nbsp;</div>
				<div class="ui-block-a">
					<a href="#" id="frm_login_submit" data-transition="fade" class="slide" style="width: 100%;alignment-adjust: central">
						<img src="./images/asset/buttons1/login1.png" class="button_logo" style="alignment-adjust: central" />
					</a>
				</div>
			</fieldset>
		</form>
		<div data-role="fieldcontain">
			<fieldset class="ui-grid-solo">
				<div class="ui-block-a">
					<img src="images/or.jpg" alt="O Login Con" width="20%" />
					<img src="images/fb.jpg" id="auth-loginlink" alt="Facebook Icon" title="login using facebook" width="20%" />
					<!--img src="images/tw.jpg" alt="Twitter Icon" title="login using twitter" width="20%"/-->
					<a data-role="linkbutton" href="#register" title="register" data-transition="fade">
						<img src="images/register.jpg" alt="Register Icon" width="20%"/>
					</a>
				</div>
				<div class="ui-block-b">
					
				</div>
			</fieldset>
			<fieldset class="ui-grid-solo">
				<div class="ui-block-a">
					
				</div>
			</fieldset>
		</div>
	</div>
	<?php include('./notebook/footer.php'); ?>
</div>