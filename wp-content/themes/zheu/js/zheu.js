$(document).ready(function(){
   $('.hamburger').on('click',function(){
       if($(this).hasClass('is-active')){
           $(this).removeClass('is-active')
       } else {
           $(this).addClass('is-active')
       }
   });
    $(document).ready(function() {
        var $window = $(window);

        function checkWidth() {
            var windowsize = $window.width();
            if (windowsize > 1200) {
                if(!$('.bottom_images .bottom_images_row').length){
                    $('.bottom_images img:lt(4)').wrapAll('<div class=\'bottom_images_row\'></div>');
                    $('.bottom_images img').slice(4, 7) .wrapAll('<div class=\'bottom_images_row\'></div>');
                }
            } else {
                if($('.bottom_images .bottom_images_row').length) {
                    $('.bottom_images .bottom_images_row img').unwrap();
                }
            }
        }
        // Execute on load
        checkWidth();
        // Bind event listener
        $(window).resize(checkWidth);
    });

});