Template.layout.rendered = ->
  unless @find('header > div')
    header = $ @firstNode
    header.html("<div>#{header.html()}</div>")

    $(@find('.site-title')).click ->
      Router.go 'home'

    $(@find('p')).click ->
      Router.go 'about'
