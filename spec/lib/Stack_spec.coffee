Stack   = require("../../lib/lib/Stack")
Ryggrad = require("ryggrad")

class TestView extends Ryggrad.View
  @content: ->
    @div =>

describe "Stack", ->
  it "should set an active view", ->
    stack = new Stack()
    view1 = new TestView()
    view2 = new TestView()

    stack.setActiveView("view1", view1)
    stack.active().should.equal view1

    stack.setActiveView("view2", view2)
    stack.active().should.equal view2
    stack.prev().should.equal view1
