$(document).ready( function() {

// TEXT DECORATION - NONE
  $('a').css('text-decoration', 'none')

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

  $('.ingli').val().toUpperCase();


// NAVLINKS LINKS HOVER
  $('a').hover( function () {

    $(this).css('color', '#e8d136')

  }, function () {

    $(this).css('color', 'white')

  });

  // MASONRY-RAILS

  //   $('.container').imagesLoaded(function(){
  //   $('.container').masonry({
  //     itemSelector: '.liqbox',
  //     columnWidth: 50
  //   });
  // });

  // 


});