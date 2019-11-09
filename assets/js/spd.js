$(document).ready(function() {

  // Collapse a specific publication group (e.g. a year)
  $('.spd-pub-group .spd-grp-show-hide').click(function() {
    var the_glyph = $(this);

    $(this).parent().next().fadeToggle(function() {
      the_glyph.toggleClass('fa-angle-down').toggleClass('fa-angle-left');
    });
  });

});
