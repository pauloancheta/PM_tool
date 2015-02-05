$ ->
  $('.nav li').on 'mouseover', ->
    $(@).addClass('active')

  $('.nav li').on 'mouseleave', ->
    $(@).removeClass('active')
