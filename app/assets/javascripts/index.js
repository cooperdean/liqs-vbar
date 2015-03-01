$(document).ready( function() {

// TEXT DECORATION - NONE
  $('.nav-header a').css('text-decoration', 'none')

// INGREDIENT SEARCH
$('#ingredient_search').keyup(function(){
   var valThis = $(this).val().toLowerCase();
    if(valThis == ""){
        $('.shelf-ingredients > .ingli').show();           
    } else {
        $('.shelf-ingredients > .ingli').each(function(){
            var text = $(this).text().toLowerCase();
            (text.indexOf(valThis) >= 0) ? $(this).show() : $(this).hide();
        });
   };
});


// LIQBOX LINKS HOVER
  $('.nav-header a').hover( function () {

    $(this).addClass('shadowed')

  }, function () {

    $(this).removeClass('shadowed')

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