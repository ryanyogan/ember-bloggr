App.Router.reopen
  location: 'history'
  rootUrl: '/'

App.Router.map ->
  @resource 'posts', ->
    @resource 'post',
      path: '/:post_id'
  @resource 'about'

App.IndexRoute = Ember.Route.extend
  redirect: ->
    @.transitionTo 'about'

App.PostsRoute = Ember.Route.extend
  model: ->
    App.Post.find()
