var $latitude;
var $longitude;




function initMap() {
        var myLatLng = {
          lat: latitude,
          lng: longitude
        };

        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 12,
          center: myLatLng
        });

        var marker = new google.maps.Marker({
          position: myLatLng,
          map: map,
          title: 'Hello World!'
        });
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
