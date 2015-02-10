# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#minus').hide()

  $('#add').on 'click', ->
    $(@).hide()
    $('#minus').fadeIn()
    $('.newProject').fadeIn()

  $('#minus').on 'click', ->
    $(@).hide()
    $('#add').fadeIn()
    $('.newProject').fadeOut()
