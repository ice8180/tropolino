var access_token;
// Load the SDK Asynchronously
  (function(d){
     var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement('script'); js.id = id; js.async = true;
     js.src = "//connect.facebook.net/en_US/all.js";
     ref.parentNode.insertBefore(js, ref);
   }(document));
  // Init the SDK upon load
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '300945523351831',//143720275767574', // App ID
      //channelUrl : 'http://www.cronj.com/grv/abhtest/channel.html', //'//'+window.location.hostname+'/channel', // Path to your Channel File
      status     : true, // check login status
      cookie     : true, // enable cookies to allow the server to access the session
      xfbml      : true  // parse XFBML
    });
    // listen for and handle auth.statusChange events
    FB.Event.subscribe('auth.statusChange', function(response) {
      if (response.authResponse) {
      	//console.log(response);
     	access_token = response.authResponse.accessToken;
     	$(document).ready(function(){
     		$('.accesstoken').val(access_token);
     		$('#formcarica').attr('action','https://graph.facebook.com/' + response.authResponse.userID +'/photos/');     		// user has auth'd your app and is logged into Facebook
     		//if(!user) var user = new UserProfile();
     		//if(response.authResponse.userID) user.log_me_in_fb(response.authResponse.userID);
     	})
      } else {
        // user has not auth'd your app, or is not logged into Facebook
      }
    });
    // respond to clicks on the login and logout links
    document.getElementById('auth-loginlink').addEventListener('click', function(){
      FB.login(function(response){
	 	//do nothing, taken care by handleStatusChange
	 	if(!user) user = new UserProfile();
	 	if(response.authResponse.userID) user.log_me_in_fb(response.authResponse.userID);
	 	}, {
	 	scope:
	 		'email, create_event, user_events,friends_events, read_stream, publish_stream, ' +
	 		'photo_upload, user_photos, user_photo_video_tags, user_birthday' 
 		});
    });
    /*document.getElementById('auth-logoutlink').addEventListener('click', function(){
      FB.logout();
    }); */
  }
  function getEvents(callback){
  	FB.api('me/events', function(response) {
	  callback(response);
	});
  }
  function getEvent(id, callback){
  	FB.api(id + '', function(response) {
	  callback(response);
	});
  }
  function getAlbums(callback){
	  FB.api('me/albums', function(response) {
		  callback(response);
		});
  }
  function getPhotos(id, callback){
	FB.api(id + '/photos', function(response) {
		callback(response)
	});
  }