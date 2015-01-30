# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('#minusComment').hide()
  $('.newComment').hide()

  $('#addComment').on 'click', ->
    $(@).hide()
    $('#minusComment').fadeIn()
    $('.newComment').fadeIn()

  $('#minusComment').on 'click', ->
    $(@).hide()
    $('#addComment').fadeIn()
    $('.newComment').fadeOut()