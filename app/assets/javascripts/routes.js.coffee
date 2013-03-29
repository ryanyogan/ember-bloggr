App.Router.map ->
  @resource 'posts', ->
    @resource 'post',
      path: '/:user_id'
  @resource 'about'

App.IndexRoute = Ember.Route.extend
  redirect: ->
    @.transitionTo 'posts'

App.PostsRoute = Ember.Route.extend
  model: ->
    App.Post.find()
