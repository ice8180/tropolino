// Initialize the Facebook SDK
document.addEventListener('deviceready', function() {
    FB.init({
        appId: 'appid',
        nativeInterface: CDV.FB,
        useCachedDialogs: false
    });
    //FB.getLoginStatus(handleStatusChange);
    authUser();
    updateAuthElements();
});

//Detect when Facebook tells us that the user's session has been returned
function authUser() {
    FB.Event.subscribe('auth.statusChange', handleStatusChange);
}

function handleStatusChange(session) {
    //console.log('Got the user\'s session: ', session);
    console.log('----------------');
    console.log(session);
    if (session.authResponse) {
        //document.body.className = 'connected';
        
        //Fetch user's id, name, and picture
        FB.api('/me', {
               fields: 'id'
               },
               function(response) {
               console.log(',,,,,,,,');
               console.log(response);
                if (!response.error) {
                    if(!user) user = new UserProfile();
                    if(response.id) user.log_me_in_fb(response.id);
                }
               });
    } else {
        //document.body.className = 'not_connected';
    }
}

//Prompt the user to login and ask for the 'email, photos, birthday' permission
function promptLogin() {
    FB.login(handleStatusChange, {scope: 'email, user_photos, user_birthday'});
}

function uninstallApp() {
    FB.api({method: 'auth.revokeAuthorization'},
           function(response) {
           // window.location.reload();
           // To clear the local storage cache and native session, call logout
           logout();
           });
}

function logout() {
    FB.logout(function(response) {
              window.location.reload();
              });
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
//Publish a story to the user's own wall
function publishStory() {
  FB.ui({
    method: 'feed',
    name: 'I\'m using the Hackbook web app',
    caption: 'Hackbook for Mobile Web.',
    description: 'Check out Hackbook for Mobile Web to learn how you can make your web apps social using Facebook Platform.',
    link: 'http://apps.facebook.com/mobile-start/',
    picture: 'http://www.facebookmobileweb.com/hackbook/img/facebook_icon_large.png',
    actions: [{ name: 'Get Started', link: 'http://apps.facebook.com/mobile-start/' }],
  }, 
  function(response) {
    console.log('publishStory UI response: ', response);
  });
}