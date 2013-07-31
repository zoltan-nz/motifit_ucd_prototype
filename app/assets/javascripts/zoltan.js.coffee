window.counter = 0

$ ->
  $('#mySlideshow').carousel()

## Form validation
  $('#signup_form').validate()

## Tooltip activation
  $('.info-icon-box i').tooltip()
  $(document).on 'click', ".library", ->
    $('.libraryModal').modal('show')

## The Team animation
  $('#theteam .span4').fadeIn('slow')

  $('.theteamcloser').on 'click', ->
    $(@).closest('div').fadeOut()
    window.counter = window.counter + 1
    if counter == 3
      $('#bringbackall').fadeIn()
      window.counter = 0

  $('#bringbackall').on 'click', ->
    $('#theteam .span4').fadeIn('slow')
    $('#bringbackall').hide()