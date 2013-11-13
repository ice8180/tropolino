// Document Init Function
$.metadata.setType("attr", "validate");

//$.prettyLoader();

$('.back_botton').click(function(E,UI){
	var $forms = $('#'+$.mobile.activePage.attr('id')).find('form');
	$forms.each(function(){
		// alert(this.id);
		this.reset();
	});
	// alert('1')
	history.back();
	return false;
});

$('.ui-listview-filter').css('margin','-10px -15px 15px -16px');

// Login Page Show Function
$('#login').bind('pageinit', function(){
	$('#frm_login_submit').live('click',function(){
		if( $('#frm_login').validate().form() ){
			if(user) user.log_me_in();
			else{
				user = new UserProfile();
				user.log_me_in();
			}
			return false;
		}
		else{
			alert('Please complete all validations.');
			$('#login_password').val('');
			$('#login_id').val('').focus();
			return false;
		}
		return false;
	});
});

// Register Form Submit Event Function
function validate_submit_form(){
	$( "#registerMe" ).validate({
		submitHandler: function( form ) {
			// alert( "Call Login Action" );
			var $reg = $("#registerMe");
			if( !$('#terms_conditions_accept').is(':checked') ){
				alert('Please accept our terms and conditions');
				$('#terms_conditions_accept').focus();
				return false;
			}
			var href = baseUrl + $reg.attr('action');
			var s_data = $reg.serialize();
			var condition = 'id='+$('.db_condition').val();
			// $.post(
                                console.log(href + s_data + condition);
			$.getJSON(
				href,
				{ 's_data' : s_data , 'condition' : condition },
				function(r_data){
					//console.log(r_data);return false;
					if( r_data.status == 1 ){
						$('#registerMe')[0].reset();
					}
					else{
						$('#'+r_data.status).val('').focus();
					}
					alert(r_data.msg);
                    if(ifFb && r_data.msg == 'Added New User') publishStory();
					if( r_data.msg == 'Added New User' || r_data.msg == 'Updated the user' ){
						if(confirm(r_data.msg + '\nClick Ok to navigate to home page')){
							window.location.hash = "login"; 
							location.reload();
						}
					}
					else alert(r_data.msg);
					return false;
				}
			);
			return false;
		},
		number: {
					required:true,
					minlength:3,
					maxlength:15,
					number:true	
				}
	});
}