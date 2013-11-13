$(document).ready(function(){
	
	var loc = window.location.hash.split('?');
	if(loc && loc[0] && loc[1]){
		var new_loc = loc[0].split('#');
		if(new_loc && new_loc[1]){ 
			new_loc = new_loc[1];
			var status = loc[1]; 
			status = status.split('=')[1];
			if(status && status == 1){
				alert('Upload Suscessfull');
			}else{
				alert('Upload unsuscessfull');
			}
			window.location.href="#"+new_loc;
		}
	}
	//timer = $.timer(countSecond, 1000);
	//timer.play();
	
	$("#liveClubList").delegate("li", "click", function() {
	  clubClicked = $('a',$(this)).data('clubname');
	  getClubDetails(clubClicked);
	});
	
	$("#settings").delegate("#log_me_out", "click", function() {
		user.log_me_out();
	});
	$(document).delegate("#sendMessage", "click", function() {
		user.sendMessage(false);
	});
	$(document).delegate("#sendMessage_no_name", "click", function() {
		user.sendMessage(true);
	});
	$(document).delegate("#cerca_search", "click", function() {
		searchUser();
	});
	$(document).delegate("#ricerca_search", "click", function() {
		searchLocali(false);
	});
	$(document).delegate("#classifica_locali", "click", function() {
		searchLocali(true);
	});
	$(document).delegate("#update_locali", "click", function() {
		callPhpFun('user_live_now_local', [user.uuid, clubToShow], function(response){
			if(response == "true") alert('checked in');
			else alert('unable to check in');
		});
	});
	$(document).delegate("#confirm_lat", "click", function() {
		var $parent = $('#show_lat');
		var lat = $('.lat>span', $parent).text();
		var lng = $('.long>span', $parent).text();
		callPhpFun('admin_update_local_lat_lng', [user.uuid, clubToShow, lat, lng], function(response){
			if(response == "true") alert('Aggiornato con successo');
			else alert('Mi dispiace in grado di aggiornare');
		});
	});
    
	$(document).delegate("#profile_des_edit .des_edit", "click", function() {
		$(this).hide();
		$('#profile_user_about').removeAttr('disabled');
		$('#profile_des_edit .des_save').show();
	});
	$(document).delegate("#profile_des_edit .des_save", "click", function() {
		callPhpFun('edit_description', [user.uuid, $('#profile_user_about').val()], function(response){
			if(response == 'true'){
				$('#profile_des_edit .des_save').hide();
				$('#profile_user_about').attr('disabled', true);
				$('#profile_des_edit .des_edit').show();
			}
			else alert('sorry unable to update description');
		});
	});
	$(document).delegate("#broadcast_mail", "click", function() {
		callPhpFun('admin_broadcast_im', [user.uuid, $('#broadcast_mail_message').val()], function(response){
			if(response == 'true'){
				$("#broadcast_mail").val();
				alert('message broadcasted');
			}
			else alert('sorry unable to broadcast message');
		});
	});
	
	$(document).delegate('.ms_send_mail', 'tap',function(){
		var recepientId = $(this).data('id');
		callPhpFun('send_im', [user.uuid, user.type, 
		recepientId, $('#ms_mail').val()], 
		function(response){
			if(response == 'true'){
				$('#ms_mail').val('');
				alert('Congratulazioni!\nMessaggio spedito con successo');
			}
			else alert('Inserisci il destinatario per inviare il messaggio');
		});
	});
	$(document).delegate('.userToShow', 'tap',function(){
		otherUser = true;
		userToShow = $('a', $(this)).data('id');
		userToShowType = $('a', $(this)).data('type') || 1;
		if(userToShow == 'auth') userToShow = user.profile.db_auto_id;
		//alert(userToShow);
	});
	$(document).delegate('.otherUser', 'tap',function(){
		otherUser = false;
	});
	$(document).delegate('.userToShow_list_events', 'tap',function(){
		otherUser = true;
	});
	$(document).delegate('#friendRequestsListAccept', 'tap',function(){
		var id = $(this).data('id');
		if(id>0)
			callPhpFun('user_accept_friendship_received', [user.uuid, $(this).data('id')], function(response){
				if(res == 'true'){
					if(user.received_friendship_request && user.received_friendship_request > 0) 
						user.received_friendship_request--;
					$('.friend_request').text(user.received_friendship_request);
					alert("Friend Request Accepted");
					window.location.hash = "social";
				}
				else alert("Unable to Accept Friend Request");
			});
	});
	$(document).delegate('#friendRequestsListReject', 'tap',function(){
		var id = $(this).data('id');
		if(id>0)
			callPhpFun('user_reject_friendship_received', [user.uuid, $(this).data('id')], function(response){
				if(res == 'true'){
					if(user.received_friendship_request && user.received_friendship_request > 0) 
						user.received_friendship_request--;
					$('.friend_request').text(user.received_friendship_request);
					alert("Friend Request Rejected");
					window.location.hash = "social";
				}
				else alert("Unable to Reject Friend Request");
			});
	});
	/*$(document).delegate('#ricerca_provincia', 'change',function(){
  		callPhpFun('view_distinct_citta_details', [$('#ricerca_provincia').val()], loadCitta);
	});*/
	$(document).delegate('#ricerca_provincia, #ricerca_comune, #ricerca_nazione, #ricerca_citta', 'change',function(){
		var val = $('#ricerca_provincia').val() + $('#ricerca_comune').val() + $('#ricerca_nazione').val() + $('#ricerca_citta').val();
		if(val.trim() != "")
			$('#ricerca_search_bar').attr('disabled','disabled').val('');
		else $('#ricerca_search_bar').removeAttr("disabled");
		if(this.id == "ricerca_provincia")
			callPhpFun('view_distinct_citta_details', [$('#ricerca_provincia').val()], loadCitta);
	});
	$(document).delegate('#delete_user', 'tap',function(){
		callPhpFun('admin_delete_users', 
				[user.uuid, userToShow],function(response){
					if(response == "true"){
						cerca_toggle(true);
						window.location.hash = "cerca";
						alert('user deleted');	
					}
					else alert('unable to delete user');
				});
	});
	$(document).delegate('#add_delete_friend>a.button', 'tap',function(){
		//userToShow = $('a', $(this)).data('id');
		var $ele = $(this);
		var msg = $('#add_friend_msg').val(); 
		if($ele.hasClass('add_friend')){
			//call add friend
			callPhpFun('user_send_friendship_request', 
				[user.uuid, userToShow, msg], 
				function(response){
					$ele.removeClass('add_friend').find('.ui-btn-text').text('Request Sent');
					$('#add_friend_msg').hide();
					alert('Friend request sent');
				}
			);
		}else {
			//call delete friend
			callPhpFun('delete_friends_for_user', 
				[user.uuid, userToShow], 
				function(response){
					$ele.addClass('add_friend').find('.ui-btn-text').text('Add Friend');
					$('#add_friend_msg').show();	
					alert('Friend deleted');
				}
			);
		}		
	});
	$(document).delegate('#admin_event_button', 'tap',function(){
		var live_now = $('#admin_event_live_now').val() || '1';
		var priority = $('#admin_event_prioritise').val() || '1';
		callPhpFun('admin_live_now_event', [user.uuid, eventToShow, live_now, priority], function(response){
			if(response == 'true'){
				alert('Event suscessfully updated!');
				clubList = [];
			}				
			else
				alert('Unale to update event!');
		});
	});
	$(document).delegate('#admin_club_priority_button', 'tap',function(){
		var priority = $('#admin_club_priority').val() || '1';
		callPhpFun('admin_prioritize_locals', [user.uuid, clubToShow, priority], function(response){
			alertSuscess(response, 'Priority suscessfully updated!', 'Unable to update priority!');
		});
	});
	
	$(document).delegate('#admin_save_telephone', 'tap',function(){
		var cellulare = $('#admin_save_cellulare').val() || 0;
		var telefone= $('#admin_save_telefone').val() || 0;
		var fax = $('#admin_save_fax').val() || 0;
		callPhpFun('admin_change_phone_locals', [user.uuid, clubToShow, telefone, fax, cellulare], function(response){
			alertSuscess(response, 'Details suscessfully updated!', 'Unable to update details!');
		});
	});
                  
	$(document).delegate('#profile_user_pic_container', 'tap',function(){
        imageToEdit = imageToEditURL = '';                 
        uploadEle = $('img', $(this));
        $('#image_preview').attr('src', uploadEle.attr('src'));
        $('#upload_image_submit').html('Edit');
        $('#gal_del_img').hide();
        params.upload_type = "profile";
        params.user_str = user.uuid;
        params.edit_image_id = '';
	});
	$(document).delegate('#gallery_add_image', 'tap',function(){
        $('#gal_del_img').hide();
        imageToEdit = imageToEditURL = '';
        $('#image_preview').attr('src', '');
        $('#upload_image_submit').html('Add');
        params.upload_type = "gallery";
        params.user_str = user.uuid;
        params.edit_image_id = '';
	});
	$(document).delegate('#upload_image_submit', 'tap',function(){
        uploadImage();
	});
    $(document).delegate('#Gallery>li', 'taphold',function(){
        if(confirm('Edit Image?')){
            $('#gal_del_img').show(); //to show delete button
            uploadEle = $('img', $(this));
            $('#image_preview').attr('src', uploadEle.attr('src'));
            //console.log($('#upload_image_submit'));
            $('#upload_image_submit').html('Edit');
            var id = uploadEle.data('imgid');
                         
            params.upload_type = "gallery";
            params.user_str = user.uuid;
            params.edit_image_id = imageToEdit = id;
            
            window.location.href = 'index.html#upload_image';
        }else{
            imageToEdit = '';
        }
    });
    $(document).delegate('#gal_del_img', 'tap',function(){
        window.location.href = '#profile_user';
        var id = uploadEle.data('imgid');
        callPhpFun('delete_user_gallery_images', [user.uuid, id],
        function(response){
            if(response == 'true') alert('Image Deleted');
            else alert('Failed to delete image');
        });
        imageToEdit = imageToEditURL = null;
    });
                  
	$(document).delegate('.eventToShow', 'tap',function(){
		otherEvent = true;
		eventToShow = $(this).data('id');
	});
	
	$(document).delegate('.clubToShow', 'tap',function(){
		clubToShow = $(this).data('id');
	});
	
	// $(document).delegate('#edit_profile', 'tap',function(){
		// window.location.hash = "register";
		// loadEditRegisteration(user);
		// disableNewReg();
	// });


	$(document).delegate('#msg_to_send_button', 'tap',function(){
		var recepientId = $(this).data('id');
		var recepientType = $(this).data('type');
		var im_msg = $('#msg_to_send').val();
		if(im_msg != '')
			callPhpFun('send_im', [user.uuid, userToShowType || user.type, userToShow, im_msg], 
			function(response){
				if(response == 'true'){
					callPhpFun('view_chat_history', [user.uuid, userToShow, userToShowType || recepientType], loadInboxText);
					$('#msg_to_send').val('').height('36');
				}
				else alert('Inserisci il destinatario per inviare il messaggio');
			});
	});
	$(document).delegate('.emailToSend', 'tap',function(){
		emailToSend = $(this).data('id');
	});
	$(document).delegate('.follow_event', 'tap',function(){
		var $ele = $(this);
		var eventToFollow = $ele.data('id');
		if(!$(this).hasClass('se_follow')){
			callPhpFun('add_follower', [user.uuid, 3, eventToFollow],
			function(response){
				if(response || response>0){
					$ele.addClass('se_follow').text('Rimuovere evento da Preferiti'); alert("Locale inserito nella tua top ten dei locali preferiti");
				} else alert('Non in grado di rimuovere evento dai Preferiti' + response);
			});
		}else{
			callPhpFun('delete_locals_events_user_follows', [user.uuid, 3, eventToFollow],//call the function to unfollow event
			function(response){
				if(response || response>0){
					$ele.removeClass('se_follow').text('Locale inserito nella tua top ten dei locali preferiti');
					alert("Evento rimosso dall'elenco seguire Preferiti");
				} else alert("Non in grado di aggiungere evento all'elenco seguire Preferiti" + response);
			});
		}
	});
	$(document).delegate('.follow_club', 'tap',function(){
		var $ele = $(this);
		var clubToFollow = $ele.data('id');
		var $elem = $('#current_Club_Show .follow_count');
		if(!$(this).hasClass('sc_follow')){
			callPhpFun('add_follower', [user.uuid, 2, clubToFollow],
			function(response){
				if(response == "local_overload"){
					alert( "Siamo spiacenti \nNon è possibile seguire più di 10 locali");
				}
				else if(response || response>0){
					$ele.addClass('sc_follow').text('Unfollow Locali'); 
					var val = eval($elem.text());
					if(val >= -1) $elem.text(val + 1);
					alert("Congratulazioni! \nLocale inserito nella tua top ten dei locali preferiti");
				} else alert('Spiacente! Impossibile rimuovere locale dal vostro top ten dei locali preferiti');
			});
		}else{
			callPhpFun('delete_locals_events_user_follows', [user.uuid, 2, clubToFollow],//call the function to unfollow local
			function(response){
				if(response && response == 'true'){
					$ele.removeClass('sc_follow').text('Follow Locali'); 
					var val = eval($elem.text());
					if(val && val > 0) $elem.text(val - 1);
					alert("Congratulazioni! Rimosso locale dal vostro top ten dei locali preferiti");
				} else alert('Spiacente! Impossibile inserte locale nella tua top ten dei locali preferiti');
			});
		}
	});

	$(document).delegate('.ui-page', 'pagebeforeshow',onPageShow);
	//$(document).delegate('.im', 'click',loadInboxText);	
	$(document).delegate('a', 'click',
		function(){
			var ret = isAllowed($(this).attr('href'));
			if(!ret) window.location.hash="#login"; 
			//$(this).attr('href', '#loginorregister');
			return ret;
		}
	);
	$(window).bind('load', function(){
	    if(!window.location.hash == "") onPageLoad(); //when the url has hash
	});
    $(document).delegate('#auth-loginlink', 'tap',promptLogin);
});
