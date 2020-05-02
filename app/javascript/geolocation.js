$(function () {
  $('#button').on('click', function () {
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(success, error, option);
      function success(position) {
        var data = position.coords;
        var lat = data.latitude;
        var lng = data.longitude;
        var geocoder = new google.maps.Geocoder();
        latlng = new google.maps.LatLng(lat, lng);
        geocoder.geocode({ 'latLng': latlng }, function (results, status) {
          if (status == google.maps.GeocoderStatus.OK) {
            now_place = results[0].formatted_address;
            now_place = now_place.replace("日本、", "").replace(" ", "<br>");
            document.getElementById('address').innerHTML = now_place;
          } else {
            alert("エラー" + status);
          }
        });
      }
      function error(error) {
        var errorMessage = {
          0: "原因不明のエラーが発生しました。",
          1: "位置情報が許可されませんでした。",
          2: "位置情報が取得できませんでした。",
          3: "タイムアウトしました。",
        };
        document.getElementById('address').innerHTML = errorMessage[error.code];
      }
      var option = { "enableHighAccuracy": false, "timeout": 100, "maximumAge": 100, };
    } else {
      alert("あなたの端末では、現在位置を取得できません。");
    }
  });
});
