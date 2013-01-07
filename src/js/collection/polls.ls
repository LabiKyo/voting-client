define [
  'model/poll'
  'backbone'
], (
  Model
  Backbone
) ->
  Polls = Backbone.Collection.extend do
    initialize: ->
      @

    model: Model
    url: '/polls'

