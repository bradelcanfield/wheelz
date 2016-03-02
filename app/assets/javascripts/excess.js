// function initMap() {
//   console.log('initMap called')
//   var map = new google.maps.Map(document.getElementById('map_fave'), {
//     center: {lat: 25.77, lng: -80.2},
//     zoom: 12
//   });
//   var bikeLayer = new google.maps.BicyclingLayer();
//   bikeLayer.setMap(map);
// }

// var directionsDisplay, directionsService;
// var map;
// function initialize() {
//   directionsService = new google.maps.DirectionsService();
//   directionsDisplay = new google.maps.DirectionsRenderer();
// };

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

// $('#map_fave').get({
//   url: 'https://maps.googleapis.com/maps/api/js?key=AIzaSyCFHwXOAx3AMwsD4zjr4vx_cPF_wVk2h2U',
//   success: (initialize, console.log('ok'))
// });

// var initMap = function() {
//   console.log('map loaded')
//   var map = new google.maps.Map(document.getElementById('map_fave'), {
//     center: {lat: 25.75, lng: -80.25},
//     zoom: 11
//   });
// }
