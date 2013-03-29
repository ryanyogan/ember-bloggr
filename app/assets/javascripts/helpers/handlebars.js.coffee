# Helper to convert dates to friendly format, similar to rails view helpers
Ember.Handlebars.registerBoundHelper "date", (date) ->
  moment(date).fromNow()

# Helper to convert markdown syntax to valid HTML (kind of awesome)

showdown = new Showdown.converter()

Ember.Handlebars.registerBoundHelper "markdown", (input) ->
  new Ember.Handlebars.SafeString(showdown.makeHtml(input))
