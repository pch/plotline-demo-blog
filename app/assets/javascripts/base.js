
var Blog = {
  init: function() {
    hljs.initHighlightingOnLoad();

    $(window).on('load', function() {
      $(".photoset img").unveil(200, function() {
        $(this).load(function() {
          this.style.opacity = 1;
        });
      });
    });
  }
}

$(document).ready(function(){
  Blog.init();
});
