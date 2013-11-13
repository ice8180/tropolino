var listClubs = function() {
	// $.each(clubList, function(i,v) {
	// console.log(v['clubName']);
	// console.log(v['city']);
	// });

}
var loadNearByLocals = function(response) {
	clubList = response;
	var $el = $($('#updateLocalList>li')[0]);
	$('#updateLocalList').empty();
	$.each(clubList, function(i, val) {
		if (val) {
			$ele = $el.clone();
			//console.log(val.event_db_auto_id);
			$('.clubToShow', $ele).data('id', val.local_id);
			if (val.img_url == '')
				$('.live_now_img', $ele).attr('src', './images/dummy/club.png');
			else
				$('.live_now_img', $ele).attr('src', baseUrl + val.img_url);
			$('.live_now_name', $ele).html(val.name);
			$('.live_now_city', $ele).html(val.localita + val.provincia);
			$('.live_now_date', $ele).html((val.distance * 1609.34).toFixed(3) + ' metri di distanza');
			$('#updateLocalList').append($ele);
		}
	});
}
var loadClubShowDetails = function(response) {
	var isFollowing = false;
	$parent = $('#current_Club_Show');
	//sc=showClub
	callPhpFun('view_user_follows_locals', [user.uuid], function(response) {
		jQuery.each(response, function(key, val) {
			if (val.db_auto_id == clubToShow) {
				isFollowing = true;
				return;
			}
		});
		if(user && user.type == 4){
			$('#map_canvas').height('200px');
			initialize();
			callPhpFun('admin_get_local_lat_lng',[user.uuid, clubToShow], function(response){
				var loc;
				if(response && response.count > 0){
					$.each(response.value, function(i, j){
						loc = new google.maps.LatLng(j.latitude, j.longitude);
						createMarker(loc);
					});
					map.setCenter(loc);
				}
			});
		}
		if (isFollowing)
			$('.follow_club', $parent).text('Unfollow Locali').addClass('sc_follow');
		else
			$('.follow_club', $parent).text('Follow Locali').removeClass('sc_follow');
		
		callPhpFun('view_followers_count', [user.uuid, clubToShow], function(response){
			$('.follow_count', $parent).text(response.total_users);
		});
	});

	if (response && response.name) {
		$('.sc_name', $parent).html(response.name);
		$('.sc_description', $parent).html(response.descrizione);
		$('.sc_indirizzo', $parent).html(response.indirizzo);
		$('.sc_provincia', $parent).html(response.provincia);
		$('.sc_localita', $parent).html(response.localita);
		$('.follow_club', $parent).data('id', response.db_auto_id);
		$('.follow_event', $parent).text("Follow");

		$('.sc_cellulare', $parent).attr('href', 'tel:' + response.cellulare).text(response.cellulare).val(response.cellulare);
		$('.sc_telefone', $parent).attr('href', 'tel:' + response.telefono).text(response.telefono).val(response.telefono);
		$('.sc_fax', $parent).attr('href', 'tel:' + response.telefono).text(response.fax).val(response.fax);
		$('.sc_specialita', $parent).html(response.specialita);
		$('.sc_categoria', $parent).html(response.categoria);
		
		if(response.priority && response.priority == "1") 
			$('#admin_club_priority').val('1').slider('refresh');
		else 
			$('#admin_club_priority').val('0').slider('refresh');
		
		var $gal = $('ul#ClubGallery');
		var $li = $($('ul#ClubGallery li')[0]).clone();
		var wid = 0;
		if (response.images && response.images[0] && response.images[0].image_url)
			$('img', $parent).attr('src', response.images[0].image_url);
		else
			$('img', $parent).attr('src', "./images/dummy/club.png");
		$gal.empty();
		if (response.images && response.images[0] && response.images[0].image_url){
			jQuery.each(response.images, function(key, val) {
				if (val.image_url) wid++;
				var $ele = $li.clone();
				$('a', $ele).attr('href', val.image_url);
				$('a>img', $ele).attr('src', val.image_url);
				//$('a>img',$ele).attr('src', key);
				$gal.append($ele);
			});
		} else{
			var $ele = $li.clone();
			$('a', $ele).attr('href', "./images/dummy/club.png");
			$('a>img', $ele).attr('src', "./images/dummy/club.png");
			$gal.append($ele);
		}
		if (wid != 0) initPreview(window, window.jQuery, window.Code.PhotoSwipe);
		}
}
var loadEventDetails = function(response) {
	$parent = $('#current_Event_Show');
	//se=showEvent
	$('.se_name', $parent).html(response.event_title);
	callPhpFun('view_user_follows_events', [user.uuid], function(response) {
		$('.follow_event', $parent).text("Follow");
		var found = false;
		jQuery.each(response, function(key, val) {
			if (val.id == eventToShow) {
				found = true; return;
			}
		});
		if(found) $('.follow_event', $parent).text('Unfollow Evento').addClass('se_follow');
		else $('.follow_event', $parent).text('Follow Evento').removeClass('se_follow');
		//$('.se_follow', $parent).text(response.event_title);
	});
	$('img', $parent).attr('src', response.image_url);
	$('.se_description', $parent).html(response.description);
	$('.se_date', $parent).html(response.event_date);
	$('.se_provincia', $parent).html(response.provincia);
	//$('se_club', $parent).attr('href', '');
	if(response.live_now && response.live_now == "1") 
		$('#admin_event_live_now').val('1').slider('refresh');
	else 
		$('#admin_event_live_now').val('0').slider('refresh');
	if(response.priority && response.priority == "1") 
		$('#admin_event_prioritise').val('1').slider('refresh');
	else 
		$('#admin_event_prioritise').val('0').slider('refresh');
	$('.follow_event', $parent).data('id', response.event_id);
	$('.se_club_name', $parent).html(response.locali_name).data('id', response.event_id);
	$('.se_club_localita', $parent).html(response.locali_localita).data('id', response.locali_id);
	$('.se_club_provincia', $parent).html(response.locali_provincia).data('id', response.locali_id);
}
var clearOtherProfile = function(){
	$parent = $('#member_profile_Show');
	//ms=memberShow
	$parent.find('.ms_name, .ms_phone1, .ms_indirizzo, .ms_localita, .ms_provincia, .ms_mobile, .ms_email, .ms_provincia, .ms_date, .ms_gender, .ms_description').html('');
	$('#ms_pic').attr('src','');
	$('.emailToSend', $parent).data('id', '');	
	$('#member_profile_locali').data('id', '');
	$('a', $('#add_delete_friend')).find('.ui-btn-text').html('');	
	$('#amici_locali_count').text('');	
}
var loadOtherProfile = function(response) {
	if (response && response.id) {
		$parent = $('#member_profile_Show');
		//ms=memberShow
		$('.ms_name', $parent).html(response.name);
		if(response){
			if(!response.image_url) response.image_url = './images/dummy/user.png';
			else response.image_url =baseUrl + response.image_url;
		}
		$('#ms_pic').attr('src',response.image_url);
		//$('.ms_id', $parent).html(response.id);
		$('.emailToSend', $parent).data('id', response.id);
		$('.ms_gender', $parent).html(response.gender);
		$('.ms_description', $parent).html(response.description);
		$('.ms_date', $parent).html(response.date_of_birth);
		$('.ms_provincia', $parent).html(response.provincia);
		$('.ms_email', $parent).html(response.email);
		$('.ms_mobile', $parent).html(response.mobile);
		$('.ms_phone1', $parent).html(response.phone1);
		$('.ms_indirizzo', $parent).html(response.indirizzo);
		$('.ms_localita', $parent).html(response.localita);
		$('.ms_provincia', $parent).html(response.provincia);
		$('#member_profile_locali').data('id', response.id);
		if(user.type!=2){
			$('a', $('#add_delete_friend')).show();
			callPhpFun('check_friend_request', [user.uuid, userToShow], function(response) {
				if(response && response.status){
					$('#add_friend_msg').hide();
					if(response.status == "friend") {
						$('a', $('#add_delete_friend')).removeClass('add_friend').addClass('button').find('.ui-btn-text').html('Remove<br/>Friend');
					} else if(response.status == "not_friend") {
						$('#add_friend_msg').show();
						$('a', $('#add_delete_friend')).addClass('add_friend, button').find('.ui-btn-text').html('Add<br/>Friend');
					} else if(response.status == "request_sent") {
						$('a', $('#add_delete_friend')).removeClass('button').find('.ui-btn-text').html('Request<br/>Sent');
					}
				}
				callPhpFun('view_user_local_friend_count', [user.uuid, userToShow], function(response){
					$('#amici_locali_count').text(response.local_count);
				});
			});
		}else{
			$('a', $('#add_delete_friend')).hide();
		}
		callPhpFun('view_user_gallery_images', [user.uuid, userToShow], function(response) {
			if(response && response!= "false"){
				console.log(response);
				var $gal = $('ul#MemberGallery');
				
				var $li = $($('ul#MemberGallery li')[0]).clone();
				var wid = 0;
				$gal.empty();
				user.gallery = {};
				jQuery.each(response, function(key, val) {
					if (!key == undefined){
						wid++;
						user.gallery[val.img_id] = baseUrl + val.img_url;
					}
				});
				jQuery.each(user.gallery, function(key, val) {
					if (!(key == undefined))
						wid++;
					var $ele = $li.clone();
					$('a', $ele).attr('href', val);
					$('a>img', $ele).data('imgid', key);
					$('a>img', $ele).attr('src', val);
					$gal.append($ele);
				});
				if (wid != 0) initPreview(window, window.jQuery, window.Code.PhotoSwipe);
			}
		});
		
		/*callPhpFun('view_all_friends', [user.uuid], function(response) {
			var found = false;
			$.each(response, function(i, val) {
				if (userToShow == val.friend_id) {
					found = true;
					return;
				}
			});
			if (found) {
				$('#add_friend_msg').hide();
				$('a', $('#add_delete_friend')).removeClass('add_friend').find('.ui-btn-text').html('Remove<br/>Friend');
			} else {
				$('#add_friend_msg').show();
				$('a', $('#add_delete_friend')).addClass('add_friend').find('.ui-btn-text').html('Add<br/>Friend');
			}
		});*/
	}
}
var loadMemberLocali = function(response) {
	if (response && response[0]) {
		var $parent = $('#member_profile_localiList');
		var $el = $($('.member_profile_localiList', $parent)[0]).clone();
		$parent.empty();
		var counter = 0;
		$.each(response, function(i, val) {
			if (val && val.db_auto_id) {
				counter++;
				var $ele = $el.clone();
				$('a', $ele).data('id', val.db_auto_id);
				if (val && !val.img_url) val.img_url = "./images/dummy/club.png";
					//else val.img_url = baseUrl + val.img_url;
				$('.club_img', $ele).attr('src', val.img_url);
				$('.club_name', $ele).html(val.name);
				$('.club_province', $ele).html(val.name);
				$parent.append($ele);
			} else {
				var $ele = $el.clone();
				$('.club_name', $ele).html('no locali found');
				$parent.html($ele);
			}
		});
		if(counter == 0){
			var $ele = $el.clone();
			$('.club_name', $ele).html('no locali found');
			$parent.html($ele);
		}
	}
}
var loadAdminLocali = function(response) {
	if (response && response != 'false') {
		var $parent = $('#admin_localiList');
		var $el = $($('.admin_localiList', $parent)[0]).clone();
		$parent.empty();
		var counter = 0;
		$.each(response, function(i, val) {
			if (val && val.name && counter < 300) {//if (val && val.name) {
				counter++;
				var $ele = $el.clone();
				$('a', $ele).data('id', i);
				$('.club_name', $ele).html(val.name);
				if(val.verified == true) {
					$('.club_verified', $ele).html('Position Verified');
					$ele.addClass('verified');
				}
				else{
					$('.club_verified', $ele).html('Position Not Verified');
					$ele.removeClass('verified');
				}
				$parent.append($ele);
			}
		});
		if(counter == 0){
			var $ele = $el.clone();
			$('.club_name', $ele).html('no locali found');
			$parent.html($ele);
		}
	}
}
var getClubDetails = function(clubID) {
	if (user && user.uuid)
		callPhpFun('view_profile_for_locals', [clubID, user.uuid], loadClubDetails);
}
//load inbox
var loadInbox = function(response) {
	user.instantMessages = response;
	var $gal = $('ul#inboxList');
	$li_inbox = $($('li', $gal)[0]).clone();
	$gal.empty();
	if (response != 'false') {
		jQuery.each(response, function(key, val) {
			var $ele = $li_inbox.clone();
			//console.log(val.img_url);
			if (val)
				if(!val.img_url) val.img_url = './images/dummy/user.png';
				else val.img_url = baseUrl + val.img_url;
			$('a', $ele).data('id', val.message_from_id);
			$('a', $ele).data('type', val.type);
			$('.inbox_image', $ele).attr('src', val.img_url);
			$('.inbox_from', $ele).text(val.message_from_name);
			$('.inbox_time', $ele).text(val.message_date_time);
			$('.inbox_message', $ele).text(val.message_content);
			$gal.append($ele);
		});
	}
}
var loadRecepients = function(response) {
	var $gal = $('#select-recepient');
	var $li = $($('option', $gal)[0]).clone();
	var $li1 = $($('option', $gal)[1]).clone();
	$gal.empty().append($li, $li1);
	if(response != "false"){
		jQuery.each(response, function(key, val) {
			var $ele = $li.clone();
			$ele.data('type', val.type || 1);
			if(user.type == 2){
				$ele.val(val.user_id);
				$ele.text(val.user_name)
			}else{
				$ele.val(val.friend_id);
				$ele.text(val.name)
			}
			$gal.append($ele);
		});
	}
}
var loadSearchLocali = function(response) {
	var $el = $($('ul#locali_found_list>li')[0]);
	$('ul#locali_found_list>li').remove();
	var found = false;
	$.each(response, function(i, val) {
		if (val && val.local_db_auto_id && val.local_name) {
			var $ele = $el.clone();
			if (val && !val.img_url)
				val.img_url = "./images/dummy/club.png";
			$('.ricerca_club_img', $ele).attr('src', val.img_url);
			$('.ricerca_club_name', $ele).text(val.local_name);
			$('.ricerca_club_locali', $ele).text(val.local_localita + ', ' + val.local_provincia);
			$ele.data('id', val.local_db_auto_id);
			//console.log(val.local_db_auto_id);
			$('#locali_found_list').append($ele);
			found = true;
		}
	});
	if(!found){
		var $ele = $el.clone();
		$('.ricerca_club_name', $ele).text('no locali found');
		$('.ricerca_club_locali', $ele).text('');
		$('#locali_found_list').html($ele);
	}
}
var loadCercaCitta = function(response) {
	var $gal = $('#cerca_comune');
	var $li = $($('option', $gal)[0]).clone();
	$gal.empty().append($li);

	jQuery.each(response, function(key, val) {
		if(val.name && val.name != '' && val.name != ' '){
			var $ele = $li.clone();
			$ele.val(val.name);
			$ele.text(val.name);
			$gal.append($ele);
		}
	});
}
//load club details
var loadClubDetails = function(club) {
	var $eleAddr = $('#club_page_address');
	var $eleName = $('#club_page_name');
	//var club = $.parseJSON(clubList[clubName]);
	$('h4', $eleAddr).html(club.provincia);
	$('h5', $eleAddr).html(club.indirizzo);
	$('h2', $eleName).html(club.name);
	$('h3', $eleName).html(club.categoria);
	if (club.imageSrc)
		$('#club_page_image').attr('src', club.imageSrc);
	$('#club_page_desc').html(club.descrizione);
	if (club.time)
		$('#club_page_time').html(toTimeString(club.time));
}
///////////////////////Profile Page////////////////////////
var loadSocial = function(isLocal){
	if(isLocal){
			$('#amici_icon>a>span').text('followers');
			$('#locali_icon').hide();
			$('#cerca_icon span').text('Messagi All');
			$('#cerca_icon a').attr('href', '#scrivi_no_name');
			$('#cerca_icon img').attr('src', 'images/asset/messaggi.png');
			callPhpFun('view_followers_count', [user.uuid, user.profile.db_auto_id], function(response){
				if(response) $('#amici_count').text(response.total_users || 0);
			});
	}else{
			$('#amici_icon>a>span').text('Amici');
			$('#locali_icon').show();
			$('#cerca_icon span').text('Cerca');
			$('#cerca_icon a').attr('href', '#cerca');
			$('#cerca_icon img').attr('src', 'images/asset/cerca.png');
			callPhpFun('view_user_local_friend_count', [user.uuid, user.profile.db_auto_id], function(response){
				$('#locali_count').text(response.local_count);
				$('#amici_count').text(response.friend_count);
			});
		}
}
var loadProfile = function(response) {
	//console.log(response);
	var info = {
		'#profile_user_name' : {
			key : 'name'
		},
		'#profile_user_city' : {
			key : 'provincia'
		},
		'#profile_user_pic' : {
			key : 'img_url',
			type : 'image',
			def : 'images\/dummy\/user.png'
		},
		// '#profile_user_online_status': 'online_status',
		// '#profile_user_marital_status': 'marital_status',
		'#profile_user_about' : {
			key : 'description'
		},
	};
	$('#profile_des_edit .des_save').hide();
	$('#profile_user_about').attr('disabled', true);
	jQuery.each(info, function(i, val) {
		loadValue(i, response, val.key, val.type, val.def);
	});
	//if (!ifFb)
		callPhpFun('view_user_gallery_images', [user.uuid], loadGallery);
	/*else{
		wid = 0;
		var $gal = $('ul#Gallery');
		$('li', $gal).each(function(i) {
			wid += $(this).width();
		});
		$gal.width(wid);	
	}*/
}
var loadGallery = function(response) {
	var $gal = $('ul#Gallery');
	var $li = $($('ul#Gallery li')[0]).clone();
	var wid = 0;
	$gal.empty();
	if(response!="false"){
		user.gallery = {};
		jQuery.each(response, function(key, val) {
			if (!key == undefined)
				wid++;
			user.gallery[val.img_id] = baseUrl + val.img_url;
		});
		jQuery.each(user.gallery, function(key, val) {
			if (!(key == undefined))
				wid++;
			var $ele = $li.clone();
			$('a', $ele).attr('href', val);
			$('a>img', $ele).data('imgid', key);
			$('a>img', $ele).attr('src', val);
			$gal.append($ele);
		});
		if (wid != 0) initPreview(window, window.jQuery, window.Code.PhotoSwipe);
	}
}
var loadFriends = function(response) {
	if(user.type != "2") $('#friend_req_icon').show();
	else  $('#friend_req_icon').hide();
	if(user && user.received_friendship_request && user.received_friendship_request > 0)
		$('#view_friend_requests').text("Accept Friend Requests").attr('href', '#friend_requests');
	else $('#view_friend_requests').text("No Friend Requests").attr('href', '');
	var $gal = $('ul#friendList');
	var $li = $($('li', $gal)[0]).clone();
	$gal.empty();
	var found = false;
	jQuery.each(response, function(key, val) {
		if (val && (val.friend_id || val.user_id)) {
			val.friend_id = val.friend_id || val.user_id || '';
			val.image_url = val.image_url || val.img_url || '';
			val.name = val.name || val.user_name || '';
			var $ele = $li.clone();

			$('a', $ele).data('id', val.friend_id);
			if (val){
				if(!val.image_url) val.image_url = "./images/dummy/user.png";
				else val.image_url = baseUrl + val.image_url;
			}
			$('a>img', $ele).attr('src', val.image_url);
			$('.friend_name', $ele).text(val.name);
			if (val.online_status && val.online_status == 1) {
				$('.friend_status', $ele).text("online");
			} else {
				$('.friend_status', $ele).text("offline");
			}
			$gal.append($ele);
			if (val.online_status && val.online_status == 1)
				$('a', $ele).addClass('online');
			found = true;
		}
	});
	if (!found) {
		var $ele = $li.clone();
		if(user.type != "2") $('a', $ele).html("No Friends<br/>Found").attr('href', '');
		else $('a', $ele).html("No Followers<br/>Found").attr('href', '');
		$gal.html($ele);
	}
}
var loadFriendRequests = function(response){
	var $gal = $('ul#friendRequestsList');
	var $li = $($('li', $gal)[0]).clone();
	$gal.empty();
	var found = false;
	jQuery.each(response, function(key, val) {
		if (val && val.sender_user_id) {
			var $ele = $li.clone();

			$('a', $ele).data('id', val.sender_user_id);
			$('.did', $ele).data('id', val.request_id);
			if (val && !val.img_url)
				val.img_url = "./images/dummy/user.png";
			$('.friend_image', $ele).attr('src', val.img_url);
			$('.friend_name', $ele).text(val.name);
			$('.friend_localita', $ele).text(val.localita);
			$('.friend_msg', $ele).text(val.message);
			$gal.append($ele);
			found = true;
		}
	});
	if (!found) {
		var $ele = $li.clone();
		$('a', $ele).html("No Friends<br/>Found").attr('href', '');
		$gal.html($ele);
	}
}
var loadFollowers = function(response) {
	var $gal = $('ul#followerList');
	var $li = $($('li', $gal)[0]).clone();
	$gal.empty();
	var found = false;
	jQuery.each(response, function(key, val) {
		if (val && val.followee_id) {
			var $ele = $li.clone();

			$('a', $ele).data('id', val.followee_id);
			if (val && !val.img_url)
				val.img_url = "./images/dummy/user.png";
			$('.friend_image', $ele).attr('src', val.img_url);
			$('.friend_name', $ele).text(val.user_name);
			if (val.online_status && val.online_status == 1) {
				$('.friend_status', $ele).text("online");
			} else {
				$('.friend_status', $ele).text("offline");
			}
			$gal.append($ele);
			if (val.online_status && val.online_status == 1)
				$('a', $ele).addClass('online');
			found = true;
		}
	});
	if (!found) {
		var $ele = $li.clone();
		$('a', $ele).html("No Followers<br/>Found").attr('href', '');
		$gal.html($ele);
	}
}
var loadEventi = function(response) {
	var $gal = $('ul#eventiList');
	var $li = $($('li', $gal)[0]).clone();
	$gal.empty();
	var found = false;
	jQuery.each(response, function(key, val) {
		if (val && val.followee_id) {
			var $ele = $li.clone();
			$('.eventToShow', $ele).data('id', val.followee_id);
			if(val.img_src == '') val.img_src = "./images/dummy/event.png";
			$('a>img', $ele).attr('src', val.img_src);
			$('.event_name', $ele).text(val.name);
			$('.event_date', $ele).text(val.date);
			$('.event_indirizzo', $ele).html(val.local_name + ',<br/>' + val.city + ', ' + val.provincia + ', ' + val.country);
			$gal.append($ele);
			found = true;
		}
	});
	if (!found) {
		var $ele = $li.clone();
		$('.event_name', $ele).html("No Event<br/>Found").attr('href', '');
		$gal.html($ele);
	}
	otherEvent = false;
}
function initPreview(window, $, PhotoSwipe) {
	$(document).ready(function() {
		var options = { enableMouseWheel: true , enableKeyboard: true };
		$("#Gallery a").photoSwipe(options);
		//var cluboptions = {};
		$("#ClubGallery a").photoSwipe(options);
		//var memberoptions = {};
		$("#MemberGallery a").photoSwipe(options);
	});
}

var loadValue = function(selector, response, jid, type, def) {
	if (response) {
		if (type == 'image'){
			if(response[jid]) 
				response[jid] = baseUrl + response[jid];
			var img_url = response[jid] || def;
			$(selector).attr('src', img_url);
		}else 
			$(selector).text(response[jid] || def);
	}
}
//////////////////////Ricerca/////////////////////////////////

var loadProvince = function(list) {
	//if (!cittaList)
	provinciaList = list;
	callPhpFun('view_distinct_citta_details', [$('#ricerca_provincia').val()] /*, loadCitta*/ );
	callPhpFun('view_distinct_nation_details', [], loadNazione);	
	callPhpFun('view_distinct_comune_details', [], loadComune);
	getOptions($('#ricerca_provincia'), list);
}
var loadCitta = function(list) {
	cittaList = list;
	getOptions($('#ricerca_citta'), list);
}
var loadNazione = function(list) {
	//if (!tipoList)
	nazioneList = list;
	getOptions($('#ricerca_nazione'), list);
}

var loadComune = function(list) {
	communeList = list;
	getOptions($('#ricerca_comune'), list);
}

var getOptions = function($holder, list) {
	$('option', $holder).slice(1).remove();
	$.each(list, function(i, v) {
		if(v.name && v.name != '' && v.name != ' '){
			var $ele = $('<option value=""></option>');
			$ele.val(v.name);
			if (v.name.length > 30)
				v.name = v.name.substring(0, 30);
			$ele.html(v.name);
			$holder.append($ele);
		}
	});
}
//////////////////////////////Registeration/////////////////////////
var loadRegisteration = function(response) {
	//callPhpFun('check_existing_username', [response.first_name], function(r){console.log(r=='false');})
	if ($('#register').is(':visible')) {
		loadValInSel('#first_name', response, 'first_name');
		loadValInSel('#fb_id', response, 'id');
		loadValInSel('#last_name', response, 'last_name');
		loadValInSel('#description', response, 'bio');
		loadValInSel('#email', response, 'email');
		loadValInSel('#login_id1', response, 'username');
		if (response.gender == "male") {
			$("#gender_male").attr("checked", true).checkboxradio("refresh");
			$("#gender_female").attr("checked", false).checkboxradio("refresh");
		} else {
			if ($("#gender_male"))
				$("#gender_female").attr("checked", true).checkboxradio("refresh");
			if ($("#gender_female"))
				$("#gender_male").attr("checked", false).checkboxradio("refresh");
		}
		$('#dob').val(response.birthday.substring(6) + '-' + response.birthday.substring(0, 2) + '-' + response.birthday.substring(3, 5));
		loadValInSel('#localita', response.hometown, 'name');
	}
}
var loadEditRegisteration = function(response) {
	if ($('#register').is(':visible')) {
		if(response && response.profile) response = response.profile;
		response.name = response.name.split(' ');
		if(response.name[0]) response.first_name = response.name[0];
		if(response.name[1]) response.last_name = response.name[1];
		loadValInSel('#first_name', response, 'first_name');
		loadValInSel('#fb_id, #user_id', response, 'db_auto_id');
		loadValInSel('#last_name', response, 'last_name');
		loadValInSel('#description', response, 'description');
		loadValInSel('#email', response, 'username');
		loadValInSel('#login_id1', response, 'login_id');
		loadValInSel('#indirizzo', response, 'indirizzo');
		loadValInSel('#provincia', response, 'provincia');
		loadValInSel('#mobile', response, 'cell');
		
		if (response.gender == "male") {
			$("#gender_male").attr("checked", true).checkboxradio("refresh");
			$("#gender_female").attr("checked", false).checkboxradio("refresh");
		} else {
			if ($("#gender_male"))
				$("#gender_female").attr("checked", true).checkboxradio("refresh");
			if ($("#gender_female"))
				$("#gender_male").attr("checked", false).checkboxradio("refresh");
		}
		$('#dob').val(response.date_of_birth.substring(0, 4) + '-' + response.date_of_birth.substring(5, 7) + '-' + response.date_of_birth.substring(8));
		loadValInSel('#localita', response, 'localita');
	}
}