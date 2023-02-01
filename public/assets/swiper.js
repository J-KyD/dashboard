const swiper = new Swiper('.swiper', {
    // Optional parameters
    direction: 'horizontal',
    loop: true,
  
    // If we need pagination
    pagination: {
      el: '.swiper-pagination',
    },
  
    // Navigation arrows
 
  
    // And if we need scrollbar

  });

  (function($) {

    "use strict";
  
 
  
    $('#sidebarCollapse').on('click', function () {
        $('#sidebar').toggleClass('active');
    });
  
  })(jQuery);
  