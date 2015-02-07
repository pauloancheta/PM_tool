# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#favorites').on 'click', ->
    

    if $('#favoriteIndex').children().length > 0 
      $('#favoriteIndex').fadeToggle()
      $('#projectIndex').fadeToggle()
    else
      if $(@).children().length > 0
        $(@).children().fadeToggle()
      else
        $(@).append('<h5>You have not favorited projects yet </h5 >')
