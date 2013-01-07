define [
  'main'
  'backbone'
], (
  app
  Backbone
) ->
  Router = Backbone.Router.extend do
    routes:
      '': 'home'
      'polls': 'polls'
      'polls/:id': 'poll'

    home: ->
      @navigate 'polls'

    polls: ->
      console.log 'polls'

    poll: (id) ->
      console.log 'poll', id
