var map;
var marker;
var geocoder;
function initialize() {
  var myLatlng = new google.maps.LatLng(45.762373643922146,8.555517196655273);
  geocoder = new google.maps.Geocoder();
  var mapOptions = {
	zoom: 12,
	center: myLatlng,
	mapTypeId: google.maps.MapTypeId.ROADMAP
  }
  map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);

  google.maps.event.addListener(map, 'click', function(event) {
	placeMarker(event.latLng);
  });
}
function createMarker(pos) {
    var mark = new google.maps.Marker({       
        position: pos, 
        map: map  // google.maps.Map
    }); 
    google.maps.event.addListener(mark, 'click', function() { 
       	var $parent = $('#show_lat');
       	var location = this.position;
		$('.lat>span', $parent).text(location.Ya);
		$('.long>span', $parent).text(location.Za);
		var latlng = new google.maps.LatLng(location.Ya, location.Za);
	    geocoder.geocode({'latLng': latlng}, function(results, status) {
	      if (status == google.maps.GeocoderStatus.OK) {
	        if (results[1])  $('.name>span', $parent).text(results[1].formatted_address);
	      }
	    });
    }); 
    return mark;  
}
function placeMarker(location) {
	if(!marker) marker = createMarker(location);// new google.maps.Marker({ position: location, map: map });
	else marker.setPosition(location);
	var $parent = $('#show_lat');
	$('.lat>span', $parent).text(location.Ya);
	$('.long>span', $parent).text(location.Za);
	var latlng = new google.maps.LatLng(location.Ya, location.Za);
    geocoder.geocode({'latLng': latlng}, function(results, status) {
      if (status == google.maps.GeocoderStatus.OK) {
        if (results[1])  $('.name>span', $parent).text(results[1].formatted_address);
      } else $('.name>span', $parent).text('no name found');
    });
}