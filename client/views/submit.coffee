form = null

Template.submit.rendered = ->
  form = $(@firstNode)
  form.css('padding', '12px')
  form.submit (e) ->
    e.preventDefault()

    page =
      title:  $('[name="submit-title"]').val()
      author: 'Felix'
      date:   moment().format('YYYY-MM-DD')
      body:   $('[name="submit-body"]').val()

    console.log page
    console.log page

    page._id = Pages.insert page
    Router.go 'page', page

Template.submit.events
  'keypress textarea': (e) ->
    if e.ctrlKey and e.keyCode == 13
      e.preventDefault()
      console.log 'keypress textarea'
      form.submit()
