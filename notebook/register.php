<div data-role="page" id="register">
	<div data-role="header" data-id="header">
		<a href="" data-add-back-btn="true" data-rel="back" data-icon="back">Back</a>
		<h1>Register User</h1>
	</div>
    <div data-role="content" style="background-color:#ff8030;" align="center">

        <form id="registerMe" class="no_shadow" name="registerMe" data-theme="a" method="post" action="inc/register_new_user.php">

			<fieldset>

				<div data-role="fieldcontain">

                	<label for="first_name">First Name :</label>

                    <input type="search" name="first_name" id="first_name" value="" class="required" placeholder="Your First Name" minlength="2">

            	</div>

                <div data-role="fieldcontain">

                	<label for="last_name">Last Name :</label>

                    <input type="search" name="last_name" id="last_name" value="" class="required" placeholder="Your Last Name" minlength="2">

            	</div>

                <!--div data-role="fieldcontain">

                	<label for="description">Description :</label>

                	<textarea name="description" id="description" placeholder="Tell us about you"></textarea>	

                </div-->

                <div data-role="fieldcontain">

                	<label for="email">E-mail :</label>

                    <input type="email" name="email" id="email" value="" class="required email" placeholder="Your Email Address">

                </div>

                <div data-role="fieldcontain">

                	<label for="login_id1">Username:</label>

                    <input type="text" pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{1,20}$" name="login_id1" id="login_id1" value="" class="required" placeholder="Login ID" minlength="5">

					<input type="hidden" id="fb_id" name="fb_id" value=""/>
                </div>
                	
                <div data-role="fieldcontain">

               		<label for="login_password1">Password :</label>

                    <input type="password" name="login_password1" id="login_password1" value="" class="required" placeholder="Enter Password" minlength="5">

                    <!--

					<input type="password" name="login_password" id="login_password" value="" class="required" placeholder="Enter Password" minlength="6" />

					-->

				</div>

                <div data-role="fieldcontain">

                	<label for="confirm_password">Re-type Password :</label>

                    <input id="confirm_password" type="password" value="" class="required" placeholder="Re-type your password" minlength="6" equalTo="#login_password1">

                </div>

                <div data-role="fieldcontain">

                	<fieldset data-role="controlgroup" data-type="vertical">
						<legend>
							Gender :
						</legend>
						<input id="gender_male" name="gender" value="M" type="radio" validate="required:true" >
						<label for="gender_male">
							Male
						</label>
						<input id="gender_female" name="gender" value="F" type="radio">
						<label for="gender_female">
							Female
						</label>
					</fieldset>
                </div>
                <div data-role="fieldcontain">
                	<label for="dob">Date of Birth :</label>
                    <input id="dob" name="dob" type="date" value="" class="required" placeholder="Select Date of Birth">
                </div>
				<div data-role="fieldcontain">
                	<label for="localita">City :</label>
                    <input type="search" name="localita" id="localita" value="" class="required" placeholder="Your Lacalita">
                </div>
				<!--div data-role="fieldcontain">
                	<label for="provincia">Provincia :</label>
                    <input type="search" name="provincia" id="provincia" value="" class="required" placeholder="Your Provincia">
                </div>
				<div data-role="fieldcontain">
                	<label for="indirizzo">Indirizzo :</label>
                    <input type="search" name="indirizzo" id="indirizzo" value="" class="required" placeholder="Your Indirizzo">
                </div>
                <div data-role="fieldcontain">
                	<label for="mobile">Mobile No.:</label>
                	<input type="search"  pattern="[\+]?\d+(\.\d{0,}\/)?" name="mobile" id="mobile" value="" class="number" placeholder="Your Mobile Number">
                </div-->
				<!--
				<div data-role="fieldcontain">
                	<label for="photo_url">Upload Photo:</label>
                	<input type="file" name="photo_url" id="photo_url" value="" accept="png|jpe?g|gif">
                </div>
				-->
				<div data-role="fieldcontain">
					<fieldset data-role="controlgroup" data-type="vertical">
						<label for="terms_conditions_accept" class="font12">Please confirm that You accept our <a href="#">Terms &amp; Conditions</a>.</label>
						<input type="checkbox" id="terms_conditions_accept" value="" validate="required:true"/>
					</fieldset>
				</div>
				<input type="hidden" id="user_id" value="" class="db_condition" />
				<div data-role="fieldcontain">
					<fieldset data-role="controlgroup">
						<!--
						<a data-role="button" data-theme="a" data-transition="flip" data-icon="check" data-iconpos="left" class="ui-btn-left button_common" style="width:90%" onClick="javascript: validate_submit_form();">
							Submit
						</a>
						-->
						<input type="submit" data-theme="a" onClick="javascript: validate_submit_form();" value="Submit" data-icon="check" data-inline="true" data-transition="fade" style="width:150%;"/>
					</fieldset>
				</div>                        
			</fieldset>
		</form>
    </div>
</div>