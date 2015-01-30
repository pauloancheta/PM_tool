# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#minusTask').hide()
  $('.newTask').hide()

  $('#addTask').on 'click', ->
    $(@).hide()
    $('#minusTask').fadeIn()
    $('.newTask').fadeIn()

  $('#minusTask').on 'click', ->
    $(@).hide()
    $('#addTask').fadeIn()
    $('.newTask').fadeOut()
