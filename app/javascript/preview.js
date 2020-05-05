$(function () {
  function readURL(input) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();
      reader.onload = function (e) {
        $('#img_prev').attr('src', e.target.result);
      }
      reader.readAsDataURL(input.files[0]);
    }
  }
  $("#user_img").change(function () {
    readURL(this);
  });
});


$(function () {
  $('#cart_takeout_time_5i').change(function () {
    $('#credit').show();
  });
});