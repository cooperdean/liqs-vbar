$(document).ready( function() {

// TEXT DECORATION - NONE
  $('a').css('text-decoration', 'none');
 
  if($('.ingli').size() > 0) {
    $('.ingli').val().toUpperCase();
  }

// SUBMIT

$('#submit_box').on('click', function(){
  $('#shelf-container').slideUp('slow');
  $('#drink_container').slideDown('slow');
  $('#drink_container').load();  
});

// EDIT

$('#edit_box').on('click', function(){
  $('#shelf-container').slideDown('slow');
  $('#drink_container').slideUp('slow');
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

var seen = {};
$('.liqtext').each(function() {
    var txt = $(this).text();
    if (seen[txt])
        $(this).parent().remove();
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


// LIQ-ING SHOW
$('.liq-ing').addClass('show');


// EDIT BOX HOVER
  $('#edit_box').hover( function () {

    $(this).css('border-color', '#e8d136');
    $(this).css('color', '#e8d136');

  }, function () {

    $(this).css('border-color', '#58ACFA');
    $(this).css('color', 'white');

  });


// LINKS HOVER
  $('.nav-header a').hover( function () {

    $(this).css('color', '#e8d136');

  }, function () {

    $(this).css('color', 'white');

  });

  $('.shelf-ingredients a').hover( function () {

    $(this).css('color', '#e8d136');

  }, function () {

    $(this).css('color', 'white');

  });

  $('.drinktext a').hover( function () {

    $(this).css('color', '#e8d136');

  }, function () {

    $(this).css('color', 'white');

  });

  // SUBMIT BOX HOVER
  $('#submit_box').hover( function () {

    $(this).css('border-color', '#9AFE2E');
    $(this).css('color', '#9AFE2E');

  }, function () {

    $(this).css('border-color', '#e8d136');
    $(this).css('color', 'white');

  });

  // SUBMIT BOX VALUE
    var drinksCount = $('.liq-drink').size()


    if( drinksCount == 0 ) {
      $('#drink_counter').text("CLICK HERE WHEN YOU ARE FINISHED");
    }
      else {
      $('#drink_counter').text(drinksCount + " DRINKS TO VIEW");
    }

    

  // MASONRY-RAILS

  //   $('.container').imagesLoaded(function(){
  //   $('.container').masonry({
  //     itemSelector: '.liq-ing',
  //     itemSelector: '.liq-adder',
  //     itemSelector: '#submit_box',
  //     columnWidth: 25
  //   });
  // });

  


});