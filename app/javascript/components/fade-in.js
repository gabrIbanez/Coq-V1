/* Every time the window is scrolled ... */
function fadeIn() {
  $(window).scroll(function(){
    //alert("Hey, You Hovered!");
    $('.fade-in').each(function(i){
          var bottom_of_object = $(this).offset().top + $(this).outerHeight();
          var bottom_of_window = $(window).scrollTop() + $(window).height();

          if( bottom_of_window > bottom_of_object ){

              $(this).animate({'opacity':'1'}, 1000);
          }
      });
  });
}

export { fadeIn };
