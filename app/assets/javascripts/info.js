var homeImages = {};
var info = {};

$(document).ready(function() {
  $.ajax({
    url: "http://localhost:3000/data",
    async: false,
    dataType: 'json',
    success: function(data) {
      homeImages = data["home_images"];
      info = data["info"];
    }
  });
})
