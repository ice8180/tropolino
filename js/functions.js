function locationChange(){}

function isAllowed(hash){
	if(hash) if('.jpg.png.gif.bmp'.indexOf(hash.substring(hash.length-3)) > 0) return true;
	
	var allowedPages = "@#register@@#livenow@@#ricerca@@#homepage@@#login@@#locali_found@@#event@@#club_page@@#settings@";
	return !!(user && user.authenticated) || (allowedPages.indexOf('@'+ hash +'@') > -1);
}
function isNotAllowed(hash){
	var allowedPages = "@#register@@#livenow@@#ricerca@@#homepage@@#login@@#locali_found@@#event@@#club_page@@#settings@";
	return !(allowedPages.indexOf('@'+ hash +'@') > -1);
}

function alertSuscess(response, onSuscess, onFailure){
	if(response == 'true') alert(onSuscess);
	else alert(onFailure);
}
function disableNewReg(){
	$('#first_name, #last_name, #dob').attr('readonly', true);
}
function enableNewReg(){
	$('#first_name, #last_name, #dob').attr('readonly', false);
}
function onPageShow(e, ui){
	//console.log(ui.prevPage[0].id + $(this)); return true;
	//console.log(ui);
	if(timer) timer.stop();
	var id = this.id || window.location.hash.toLocaleLowerCase().substring(1);
	
	var userExists = !!(user && user.authenticated && user.uuid);
	if(!userExists){
		var tuser = $.parseJSON(getLocal('user')); //get user from local storage
		userExists = !!(tuser && tuser.authenticated && tuser.uuid);
		if(userExists && !isAllowed(id)){
		//	alert(userExists);
			//window.location.hash = 'homepage';
		}
		//if(id!='register' && id!='livenow' && id!='ricerca' && id!='homepage')
		if(userExists){
			user.authenticated = tuser.authenticated;
			user.type = tuser.type;
			user.uuid = tuser.uuid;
			user.name = tuser.name;
			$('.hidefromanonymous').show();
			if(user.type == 4){
				$('.showwithadmin').show();
				$('.hidewithadmin').hide();
			}
			else{
				$('.showwithadmin').hide();
				$('.hidewithadmin').show();
			}
			//call function to get other user information
			$('#settings_user_name, #settings_social_name').text('');
			callPhpFun('view_user_info', [user.uuid], function(response){
				if(response == 'false') user.log_me_out();
				else{
					user.profile = response;
					$('#settings_user_name').text(user.profile.name);
					$('#settings_social_name').text(user.profile.username);
				}
			});
			user.view_instant_messages_count();
			//user.update_login_info();
		}
		else $('.hidefromanonymous').hide();
		userExists = !!(user && user.authenticated && user.uuid);
	}
	
	if(isNotAllowed('#'+id) && userExists){
		switch(id){
			case 'login': window.location.hash = 'settings'; 
				break;
			case 'profile_user':
				callPhpFun('view_user_info', user.uuid, loadProfile);
				break;
            case 'upload_image': break;
			case 'member_profile':
				$('#add_friend_msg').hide();
				$('a>.ui-btn-text', $('#add_delete_friend')).html('');
				$('#amici_locali_count').text('');
				clearOtherProfile();
				if(userToShow) callPhpFun('view_profile_for_users', [user.uuid, userToShow], loadOtherProfile);
				break;
			case 'friends':
				if(user.type != 2) callPhpFun('view_all_friends', [user.uuid], loadFriends);
				else callPhpFun('view_followers', [user.uuid], loadFriends);
				break;
			case 'friend_requests':
				callPhpFun('view_user_pending_friendship_received', [user.uuid], loadFriendRequests);
				break;
			case 'followers':
				callPhpFun('view_followers', [user.uuid], loadFollowers);
				break;
			case 'social':
				$('#cerca_icon span').text('');
				$('#cerca_icon img').attr('src', '');
				$('#cerca_icon a').attr('href', '');
				if(user.profile && user.profile.db_auto_id){
					loadSocial(user.type=="2");
				}else{
					callPhpFun('view_user_info', [user.uuid], function(response){
						if(response && response.db_auto_id){
							user.profile = response;
							loadSocial(user.type=="2");
						}
					});
				}
				break;
			case 'eventi':
				if(otherUser == false && user.profile && user.profile.db_auto_id){
					userToShow = user.profile.db_auto_id;
					callPhpFun('view_user_follows_events', [user.uuid], loadEventi);
				}
				else{
					callPhpFun('view_user_follows_events_by_id', [user.uuid, userToShow], loadEventi);
				}
				break;
			case 'inbox':
				callPhpFun('view_user_instant_messages_friend_list', [user.uuid], loadInbox);
				break;
			case 'scrivi':
				if(user.type != "2")
					callPhpFun('view_all_friends', user.uuid, loadRecepients);
				else callPhpFun('view_followers', user.uuid, loadRecepients);
				break;
			case 'cerca':
				//callPhpFun('view_distinct_citta_details', [], loadCercaCitta);
				callPhpFun('view_distinct_provincia_details', [], loadCercaCitta);
				break;
			case 'member_profile_clubList':
				callPhpFun('view_user_follows_locals_by_id', [user.uuid, userToShow], loadMemberLocali);
				break;
			case 'correggi_locali':
				callPhpFun('admin_generate_local_positions', [user.uuid], loadAdminLocali);
				break;
			case 'update_local':
				updateLocal();
				break;
			case 'popupmessage':
				if(timer) timer.stop();
				if(user && user.uuid && userToShow){
					callPhpFun('view_chat_history', [user.uuid, userToShow, 1], loadInboxText);
					timer = $.timer(function() { 
						callPhpFun('view_chat_history', [user.uuid, userToShow, 1], loadInboxText); 
					});
					timer.set({ time : 30000, autostart : true });
				}
				timer.play();
				break;
			default: break;
		}
	}else if(!isNotAllowed('#'+id)){
		switch(id){
			case 'homepage': 
				if(user && user.type == 4){
					$('.showwithadmin').show();
					$('.hidewithadmin').hide();
				}else{
					$('.showwithadmin').hide();
					$('.hidewithadmin').show();
				}
			break;
			case 'register': 
				if(user && user.profile){
					setTimeout(function(){						
						loadEditRegisteration(user);
						disableNewReg();
					},2000);
				}
				break;
			case 'ricerca':
				if(!provinciaList) callPhpFun('view_distinct_provincia_details', [], loadProvince);
				break;
			case 'event':
				callPhpFun('view_particular_event_details', [eventToShow], loadEventDetails);
				break;
			case 'club_page':
				callPhpFun('view_profile_for_locals', [clubToShow], loadClubShowDetails);
				//loadEventDetails also calls function to count user following a club
				break;
			case 'livenow':
				//if(clubList[1] == undefined) callPhpFun('view_live_now_new', [], loadLiveEvents); //load club list
				break;
			default: break;
		}
	}else{
		window.location.hash = 'homepage';	
	}	
}
var distanceBetween = function(lat1, lon1, lat2, lon2){
	var R = 6371; // km
	var d = Math.acos(Math.sin(lat1)*Math.sin(lat2) + Math.cos(lat1)*Math.cos(lat2) * Math.cos(lon2-lon1)) * R;
	return d;
}
var loadInboxText = function(response){
	if(response.type == "2") $('#popupmessage_footer').hide();
	else  $('#popupmessage_footer').show();
	var $parentDetail = $('#popupMessageDetail');
	var $parent = $('#popupMessageContent');

	if(user) user.instantMessagesCount = 0;
	$('.unread_msg').text(user.instantMessagesCount || 0);
	if(!$im_received) $im_received = $($('.msg_received', $parent)[0]).clone();
	if(!$im_sent) $im_sent = $($('.msg_sent', $parent)[0]).clone();
	$parent.empty();
	if(response && response.details && response.details.name){
		if(!response.details.img_url) response.details.img_url = "./images/dummy/user.png";
		else response.details.img_url = baseUrl + response.details.img_url ;
		$('.im_image', $parentDetail).attr('src', response.details.img_url);
		$('.im_from', $parentDetail).text(response.details.name);
	}
	if(!response.messages) return true;
	$.each(response.messages, function(i,val) {
			if(val && val.message_id){
				var $ele = null;
				if(val.message_type == "sent") $ele = $im_sent.clone();
				else $ele = $im_received.clone();
				$('.im_msg', $ele).text(val.message_content);
				$('.im_time', $ele).text(val.message_date_time);
				$parent.prepend($ele);
			}
	});
	$("html, body").animate({ scrollTop: $(document).height() }, 1000);

	return true;
}
function updateLocal(){
	navigator.geolocation.getCurrentPosition(function(r){
		var lat = 45.5815468; //r.coords.latitude;
		var lng = 8.9200277; //r.coords.longitude;
		if(!lat_lon.lat){
			lat_lon.lat = lat; lat_lon.lon = lng;
			callPhpFun('list_locals_near_by', [user.uuid, lat, lng], loadNearByLocals);		
		}
		else if(lat_lon.lat && distanceBetween(lat_lon.lat, lat_lon.lon, lat, lng) > 0.2){
			lat_lon.lat = lat; lat_lon.lon = lng;
			callPhpFun('list_locals_near_by', [user.uuid, lat, lng], loadNearByLocals);
		}
	});
}
function cerca_toggle(all){
	if(all){
		$('#cerca_form').hide();
		$('#cerca_member_list_cont').show();
		callPhpFun('generate_user_select',[user.uuid], function(response){
			//console.log(response);
	   		var $el= $($('#cerca_member_list>li')[0]);
			$('#cerca_member_list').empty();
			//console.log(response);
			$.each(response, function(i,val) { 
				var sameUser = user && user.profile && val.id == user.profile.db_auto_id;
			   	if(val && val.id && !sameUser){
					$ele = $el.clone();
					$('a', $ele).data('id',val.id);
					$('.cerca_user_name', $ele).html(val.name);
					if(val) 
						if(!val.image) val.image = "./images/dummy/user.png";
						else val.image = baseUrl + val.image;
					$('.cerca_user_image', $ele).attr('src', val.image);
					$('#cerca_member_list').append($ele);
			   }
			});
		});  
	}else{
		$('#cerca_member_list_cont').hide();
		$('#cerca_form').show();
	}
	
}

function onPageLoad(){ if(!user) user = $.parseJSON(getLocal('user')); onPageShow(); }

var searchUser = function(){
	callPhpFun('search_users', [
		user.uuid,
		$('#cerca_input').val(), 
		$('#cerca_provincia').val(), 
		$('#cerca_sesso').val(),
		$('#cerca_comune').val()
	], 
	function(response){
		//console.log(response);
		//res = response;
		var $parent = $('#users_found .cerca_found_users');
		var $el = $($('.userToShow', $parent)[0]).clone();
		$parent.empty();
		var found = false;
		$.each(response, function(i,val) {
			if((val && val.id && val.name) && (!(user && user.profile && user.profile.db_auto_id && val.id == user.profile.db_auto_id))){
				var $ele = $el.clone();
				$('a', $ele).data('id', val.id);
				if(val && !val.img_url) val.img_url = "./images/dummy/user.png";
				$('.cerca_user_image', $ele).attr('src', val.img_url);
				$('.cerca_user_name', $ele).html(val.name);
				$('.cerca_user_province', $ele).html(val.provincia);				
				$parent.append($ele);
				found = true;
			}
		});
		if(!found){
			var $ele = $el.clone(); 
			$('.cerca_user_name', $ele).html('no user found');
			$parent.html($ele);
		}
	});
}
var searchLocali = function(ifClassifica){
	if(ifClassifica){
		callPhpFun('admin_view_classifica_local', [user.uuid],  loadSearchLocali);
	}else{
		callPhpFun('search_locals', [
			$('#ricerca_search_bar').val(),
			$('#ricerca_provincia').val(),
			$('#ricerca_citta').val(),
			$('#ricerca_comune').val(),
			$('#ricerca_nazione').val()
		],  loadSearchLocali);
	}
}
var loadValInSel = function(selector, response, responseId){
	if(response && response[responseId]) $(selector).val(response[responseId]);
}
var params = {};
var uploadEle;
function uploadImage(){
    // Retrieve image file location from specified source
    if(navigator.camera){
        navigator.camera.getPicture(uploadPhoto,
            function(message) {
                alert('get picture failed');
            },{
                quality: 50,
                destinationType: navigator.camera.DestinationType.FILE_URI,
                sourceType: navigator.camera.PictureSourceType.PHOTOLIBRARY
            }
        );
    }
}
var UploadTime;
function uploadPhoto(imageURI) {
    var options = new FileUploadOptions();
    options.fileKey="file";
    options.fileName=imageURI.substr(imageURI.lastIndexOf('/')+1);
    options.mimeType="image/jpeg";
    //$('#image_preview').attr('src', options.fileName);
    options.params = params;
    
    var ft = new FileTransfer();
    ft.upload(imageURI, encodeURI(baseUrl + "inc/process_new_upload_image.php"), win, fail, options);
}

function win(r) {
    window.location.href = '#profile_user';
    console.log("Code = " + r.responseCode);
    console.log("Response = " + r.response);
    console.log("Sent = " + r.bytesSent);
    UploadTime = new Date().getTime();
    
    //console.log('.........' + uploadEle.attr('src'));
    if(uploadEle && uploadEle.is('img')){
        var img = uploadEle.attr('src');
        uploadEle.attr('src', img + '?uploadtime=' + UploadTime);
    }
}

function fail(error) {
    alert("An error has occurred: Code = " + error.code);
    console.log("upload error source " + error.source);
    console.log("upload error target " + error.target);
}