Template.page.authorLink = -> "/authors/#{@author.toLowerCase()}"
Template.page.body = -> new Handlebars.SafeString @body
