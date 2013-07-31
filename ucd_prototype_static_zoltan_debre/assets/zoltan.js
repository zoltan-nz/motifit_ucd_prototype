(function() {
  window.counter = 0;

  $(function() {
    $('#mySlideshow').carousel();
    $('#signup_form').validate();
    $('.info-icon-box i').tooltip();
    $(document).on('click', ".library", function() {
      return $('.libraryModal').modal('show');
    });
    $('#theteam .span4').fadeIn('slow');
    $('.theteamcloser').on('click', function() {
      $(this).closest('div').fadeOut();
      window.counter = window.counter + 1;
      if (counter === 3) {
        $('#bringbackall').fadeIn();
        return window.counter = 0;
      }
    });
    return $('#bringbackall').on('click', function() {
      $('#theteam .span4').fadeIn('slow');
      return $('#bringbackall').hide();
    });
  });

}).call(this);
