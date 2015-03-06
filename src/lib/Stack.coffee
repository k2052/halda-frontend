Ryggrad = require("ryggrad")

class Stack extends Ryggrad.Controller
  constructor: ->
    @views        = {}
    @activeView   = null
    @previousView = null

  setActiveView: (viewName, view) ->

    if @activeView
      @activeView.hide()
      @previousView = @activeView

    @views[viewName] = view
    @activeView = @views[viewName]
    @activeView.show()

  prev:  ->
    @previousView

  active: ->
    @activeView

module.exports = Stack
