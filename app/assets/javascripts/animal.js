var $latitude;
var $longitude;

function initMap() {
  var myLatLng = {
    lat: latitude,
    lng: longitude
  };

  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 14,
    center: myLatLng
  });

  var marker = new google.maps.Marker({
    position: myLatLng,
    map: map,
    title: 'Hello World!'
  });
  $("#lat_id").hide();
  $("#lng_id").hide();

}

function slider() {
  $('.scroller').slick({
    dots: true,
    infinite: true,
    speed: 500,
    fade: true,
    cssEase: 'linear'
  })
}

$(document).ready(function() {
  latitude = parseFloat($("#lat_id").text());
  longitude = parseFloat($("#lng_id").text());
  console.log(latitude);
  console.log(longitude);
  if ($("#map").length > 0) {
    initMap(latitude, longitude);
  }
});
