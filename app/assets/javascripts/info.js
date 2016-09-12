var homeImages = {};
var info = {};

$(document).ready(function() {
  $.ajax({
    url: $('#main-container').data('url'),
    async: false,
    dataType: 'json',
    success: function(data) {
      homeImages = data["home_images"];
      info = data["info"];
    }
  });
})
