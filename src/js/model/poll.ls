define [
  'backbone'
], (
  Backbone
) ->
  Poll = Backbone.Model.extend do
    initialize: ->
      @

    defaults:
      title: 'poll'
      time: Date.now()
      localtion: 'unknow'
      topics: []
