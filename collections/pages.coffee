@Pages = new Meteor.Collection 'pages'

if Meteor.isServer
  if Pages.find().count() == 0
    Pages.insert
      title: 'First Sample Page'
      author: 'Felix'
      date: '2013-09-03'
      body: '''
        <p>This is some text about a very interesting topic.</p>
        <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>
      '''
    Pages.insert
      title: 'Second Sample Page (with HTML)'
      author: 'Felix'
      date: '2013-09-03'
      body: '<p>Par</p><h1>Ho Too</h1><p>Parpar</p>'
    Pages.insert
      title: 'Third'
      author: 'Nina'
      date: '2013-09-04'
      body: "<p>It's great!</p>"
