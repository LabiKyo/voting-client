require.config do
  urlArgs: "b=#{(new Date()).getTime()}"
  paths:
    underscore: 'vendor/underscore'
    jquery: 'vendor/jquery'
    backbone: 'vendor/backbone'

require [
  'app'
  'view/app'
  'router/main'
  'backbone'
], (
  app
  AppView
  Router
  Backbone
) ->
  app.view.app = new AppView!
  $ ->
    Backbone.emulateJSON = false
    app.router = new Router!
    Backbone.history.start do
      root: '/'
      pushState: true
