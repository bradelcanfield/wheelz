$('body').ready(function() {
  console.log('maps.js loaded');

  // $.ajax({
  //     url: 'https://maps.googleapis.com/maps/api/js?key=AIzaSyCFHwXOAx3AMwsD4zjr4vx_cPF_wVk2h2U&callback=initMap',
  //     dataType: 'script',
  //     timeout: 30000,
  //     success: function () {
  //         console.log('$.ajax success');
  //     },
  //     error: function () {
  //         console.log('$.ajax failure');
  //     }
  // });

  var map;
  initMap = function() {
    console.log('map loaded')
    map = new google.maps.Map(document.getElementById('map_fave'), {
      center: {lat: 25.75, lng: -80.25},
      zoom: 11
    });
  }

  // initMap();

//   function initialize() {
//       var mapCanvas = $('#map_recent')
//       var mapOptions = {
//         center: new google.maps.LatLng(0, 0),
//         zoom: 1,
//         mapTypeId: google.maps.MapTypeId.ROADMAP
//       }
//       var map = new.google.maps.Map(mapCanvas, mapOptions);
//   }
//
});
