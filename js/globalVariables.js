function UserProfile(username, password){
	this.name = null;
	this.uuid = null;
	this.type = null;
	this.profile = null;
	this.instantMessagesCount = null;
	this.instantMessages = null;
	this.authenticated = null;
};

UserProfile.prototype.log_me_in = function(){
	user.name = $('#login_id').val();
	var password = $('#login_password').val();
	user.uuid = getUUID();
	callPhpFun('authenticate_user',[user.name, password, user.uuid], user.loadUser);
};
UserProfile.prototype.log_me_in_fb = function(fid){
	user.uuid = getUUID();
	ifFb = true;
	callPhpFun('check_existing_username',[fid, user.uuid], user.loadUserfb);
	/*getPhotos(fid, function(response){
		if(user){
			user.gallery = response.data;
			loadGallery();
		}
	});*/
};
UserProfile.prototype.log_me_out = function(){
	localStorage.clear();
	if(user.uuid) callPhpFun('update_user_logout_info', [user.uuid], user.clearUser);
};
UserProfile.prototype.clearUser = function(response){
	//console.log(response);
	user = null;
	$('.hidefromanonymous').hide();
	window.location.hash = 'homepage';
	window.location.reload();
};	
UserProfile.prototype.view_instant_messages_count = function(){
	if(user.type != 2){
		callPhpFun('view_user_received_instant_messages_count', [user.uuid], 
		function(response){
			user.instantMessagesCount = response.total_msg || 0;
			$('.unread_msg').text(user.instantMessagesCount);
			
			callPhpFun('view_user_pending_friendship_received_count', [user.uuid], 
			function(response){
				user.received_friendship_request = response.received_friendship_request || 0;
				$('.friend_request').text(user.received_friendship_request);
				user.update_login_info();
			});
		});
	}else{
		user.update_login_info();
	}
};
UserProfile.prototype.update_login_info = function(){
	if(user.type != 2) {
		if(!timerL){
			timerL = $.timer(updateLocal);
			timerL.set({ time : 1000, autostart : false });
			$.mobile.changePage('#update_local');
			timerL.play();
		}
		callPhpFun('update_user_login_info', [this.uuid], function(response){
			callPhpFun('view_user_info', [user.uuid], 
				function(response){
					if(response == 'false' && user) user.log_me_out();
					else if(user){
						user.profile = response;
						$('#settings_user_name').text(user.profile.name);
						$('#settings_social_name').text(user.profile.username);
					}
				});
		});
	}else{
		callPhpFun('view_user_info', [user.uuid], 
			function(response){
				if(response == 'false' && user) user.log_me_out();
				else if(user){
					user.profile = response;
					$('#settings_user_name').text(user.profile.name);
					$('#settings_social_name').text(user.profile.username);
				}
			});
	}
};
//called on user login from log_me_in function
UserProfile.prototype.loadUserfb = function(response){
	if(response && response.authenticated){
		$('.error', '#frm_login').text('').hide();
		user.type = response.type || 1;
		if(user.type == 4){
			$('.showwithadmin').show();
			$('.hidewithadmin').hide();
		}
		else{
			$('.showwithadmin').hide();
			$('.hidewithadmin').show();
		}
		user.name = response.name;
		user.authenticated = response.authenticated;  
		$('.hidefromanonymous').show();
		saveLocal('user', {
			'authenticated': user.authenticated,
			'type': user.type,
			'uuid': user.uuid,
			'name': user.name
			}, true);		
		user.view_instant_messages_count();
		window.location.hash = "homepage";
	}else{
		$('.error', '#frm_login').text('Invalid Username or Password').show();
		window.location = "#register";
		FB.api('/me',{
            fields: 'id, name, username, birthday, hometown, location, bio, gender, email, verified'
            },function(me){
               loadRegisteration(me);
      	});
	}
};
UserProfile.prototype.loadUser = function(response){
	if(response && response.authenticated){
		$('.error', '#frm_login').text('').hide();
		user.type = response.type || 1;
		if(user.type == 4){
			$('.showwithadmin').show();
			$('.hidewithadmin').hide();
		}
		else{
			$('.showwithadmin').hide();
			$('.hidewithadmin').show();
		}
		user.name = response.name;
		user.authenticated = response.authenticated;
		$('.hidefromanonymous').show();
		saveLocal('user', {
			'authenticated': user.authenticated,
			'type': user.type,
			'uuid': user.uuid,
			'name': user.name
			}, true);
		
		user.view_instant_messages_count();
		window.location.hash = "homepage";
	}else{
		$('.error', '#frm_login').text('Invalid Username or Password').show();
	}
};
UserProfile.prototype.sendMessage = function(no_name){
	var rece, msg; var fun = 'send_im'; var param = [];
	if(no_name){
		rece = emailToSend;
		msg = $('#compose_message_no_name').val();
		fun = 'local_admin_broadcast_message';
		param = [user.uuid, msg];
	}else{
		rece = $('#select-recepient').val();
		/*if(rece == 'all'){
		}*/
		msg = $('#compose_message').val();
		param = [user.uuid, userToShowType || 1, rece, msg];
	}
	callPhpFun(fun, param, 
	function(response){
		if(response == 'true'){
			$('#select-recepient, #compose_message').val('');
			alert('Congratulazioni!\nMessaggio spedito con successo');
			window.location.hash = "social";
		}
		else alert('Inserisci il destinatario per inviare il messaggio');
	});
};

{
	var res; //for console debug remove later
	var hex;
	var userToShow, userToShowType, otherUser = false;
	var galleryUploadType = null;
	var timer; var tym = 0; var clubClicked;
	var eventToShow = 1, otherEvent;
	var clubToShow = 1;
	if(!user) var user = new UserProfile();
	var clubList = {};
	var emailToSend = null;
	var editProfile = false;
	var ifFb = false; var friendReq = false;
	var provinciaList, communeList, cittaList, nazioneList;
	var $im_received = null, $im_sent = null, $li_inbox = null;
	var timer = null, timerL = null;
	var imageToEdit = null; var imageToEditURL = null;
	var lat_lon = {};
}
