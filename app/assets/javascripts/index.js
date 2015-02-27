$(document).ready( function() {

// TEXT DECORATION - NONE
  $('.nav-header a').css('text-decoration', 'none')

// NAVBAR LINKS HOVER
  $('.nav-header a').hover( function () {

    $(this).css('background', '#72ead2')
    $(this).css('color', '#1c1c1c')

  }, function () {

    $(this).css('color', '#72ead2')
    $(this).css('background', 'none')

  });

// LIQBOX LINKS HOVER
  $('.liqbox').hover( function () {

    $(this).css('background', '#72ead2')
    $('#liq-plus').css('color', '#1c1c1c')

  }, function () {

    $(this).css('background', 'none')
    $('#liq-plus').css('color', '#72ead2')

  });

  // MASONRY-RAILS

    $('.container').imagesLoaded(function(){
    $('.container').masonry({
      itemSelector: '.liqbox',
      columnWidth: 50
    });
  });

  // 


});