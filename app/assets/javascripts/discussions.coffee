# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#minusDiscussion').hide()
  $('.newDiscussion').hide()

  $('#addDiscussion').on 'click', ->
    $(@).hide()
    $('#minusDiscussion').fadeIn()
    $('.newDiscussion').fadeIn()

  $('#minusDiscussion').on 'click', ->
    $(@).hide()
    $('#addDiscussion').fadeIn()
    $('.newDiscussion').fadeOut()
