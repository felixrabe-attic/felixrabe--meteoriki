Router.configure
  layout: 'layout'

Router.map ->
  @route 'home', path: '/'
  @route 'about'
  @route 'page', path: '/page/:title', data: -> Pages.findOne title: @params.title
