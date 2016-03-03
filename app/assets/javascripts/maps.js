$('body.commuters.profile').ready(function() {
  console.log('maps.js loaded');

  function initMap() {
    console.log('initMap called')
    var map = new google.maps.Map(document.getElementById('map_fave'), {
      center: {lat: 25.77, lng: -80.2},
      zoom: 12
    });
    var bikeLayer = new google.maps.BicyclingLayer();
    bikeLayer.setMap(map);
  }

  google.maps.event.addDomListener(window, 'load', initMap);

  // var key = 'key=AIzaSyCFHwXOAx3AMwsD4zjr4vx_cPF_wVk2h2U'
  // var base_url = 'https://maps.googleapis.com/maps/api/directions/json';
  // var request_url
  // var origin;
  // var destination;
  // var mode
  // var avoid = 'avoid=tolls|highways|ferries|indoor';
  // var arrival_time;
  // var transit_mode
  // var transit_routing_preference


});

$('body.routes.routes_search').ready(function() {
  console.log('maps.js loaded');

  function initMap() {
    console.log('initMap called')
    var map = new google.maps.Map(document.getElementById('map_fave'), {
      center: {lat: 25.77, lng: -80.2},
      zoom: 12
    });
    var bikeLayer = new google.maps.BicyclingLayer();
    bikeLayer.setMap(map);
  }

  google.maps.event.addDomListener(window, 'load', initMap);

});
