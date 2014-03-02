orindaOrinda = ->
  $('.train').animate(
    'background-position-x': '+=1300px'
    , 6000
    , ->
      $('.train').css 'background-position-x': '-200px'
      setTimeout(orindaOrinda, 3000)
  )
orindaOrinda()
