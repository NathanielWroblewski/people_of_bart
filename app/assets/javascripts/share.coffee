$('.js-fb-share').on 'click', (e) ->
  e.preventDefault()
  FB.ui(
    method: 'feed'
    name: 'People of BART'
    caption: 'Check out these ridiculous people on BART'
    description: 'Submit your own photos, share BART horror stories, and alert the community about line cutters.'
    link: 'http://www.people-of-bart.com'
    picture: 'http://d11cvp8e0bsr3e.cloudfront.net/people-of-bart6.jpg'
  , (response) ->
    response
  )
