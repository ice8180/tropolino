$(document).ready(function() {
	$('#upload_image_submit').click(function(){
		alert('hi');
		if(user && user.uuid && galleryUploadType == 'profile'){
		$('#upload_image_user_uid').val(user.uuid);
		$('#upload_image_upload_type').val(galleryUploadType);
		$('#upload_image_redirect_url').val('profile_user.php');			
	}	
	});
	
});