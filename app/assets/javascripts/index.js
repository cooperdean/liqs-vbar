$(document).ready( function() {

// TEXT DECORATION - NONE
  $('a').css('text-decoration', 'none')
  $('.ingli').val().toUpperCase();

// SUBMIT

$('#submit_box').on('click', function(){
  $('#shelf-container').slideUp('slow');
  $('#drink_container').slideDown('slow');



});

// INGREDIENT SEARCH

var seen = {};
$('.ingli').each(function() {
    var txt = $(this).text();
    if (seen[txt])
        $(this).remove();
    else
        seen[txt] = true;
});


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


// LIQBOX HOVER DELETE
  $('.liq-ing').hover( function () {

    $(this).css('border-color', 'red')

  }, function () {

    $(this).css('border-color', '#e8d136')

  });

// SUBMIT BOX HOVER
  $('#submit_box').hover( function () {

    $(this).css('border-color', '#9AFE2E')
    $(this).css('color', '#9AFE2E')

  }, function () {

    $(this).css('border-color', '#e8d136')
    $(this).css('color', 'white')

  });


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