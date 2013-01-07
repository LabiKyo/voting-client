define [
  'templates'
  'backbone'
], (
  templates
  Backbone
) ->
  Polls = Backbone.View.extend do
    initialize: ->
      @
    el: '#polls-container'
    render: ->
      @$el.html templates.polls!
