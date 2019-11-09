$(document).ready(function() {

  // Collapse a specific publication group (e.g. a year)
  $('.spd-pub-group .spd-grp-show-hide').click(function() {
    var the_glyph = $(this);

    $(this).parent().next().fadeToggle(function() {
      the_glyph.toggleClass('fa-angle-down').toggleClass('fa-angle-left');
    });
  });

  // Show/hide the details in a publication page
  $('#show-hide-details').click(function() {
    var the_button = $(this).children('.fas');

    $('.spd-pub-group').slideToggle();
    $('.bibliography > li').toggleClass('without-before-element')
    $('.bibliography').toggleClass('no-margins')
    the_button.toggleClass('fa-compress-arrows-alt').toggleClass('fa-expand-arrows-alt');
    $('#preamble').slideToggle();
    $('.abstract').slideUp();
    $('.bibref').slideToggle();
  });

});
