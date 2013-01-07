define [
  'app'
  'view/polls'
  'templates'
  'backbone'
], (
  app
  PollsView
  templates
  Backbone
) ->
  App = Backbone.View.extend do
    initialize: ->
      @render!
    el: 'body'
    id: 'application'
    template: ->
      templates.app!

    render: ->
      @$el.html @template!
      app.view.polls = @polls = new PollsView!
      @polls.render!
