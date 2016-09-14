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
      preload(homeImages)
    }
  });
})

function preload(arrayOfImages) {
  $(arrayOfImages).each(function(){
    $('<img/>')[0].src = this[0];
  });
}