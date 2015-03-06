Ryggrad = require("ryggrad")
Stack   = require("./lib/Stack")
# Ryggrad.Model.host = "http://api.halda.io"

class Halda extends Stack
  @version: "0.0.1"

  constructor: ->
    router = new Ryggrad.Router()

    router.add "/", @index

    # Remove this when produciton
    State.set("account", new Account(username: "test")) unless State.get('account')

  index: ->
    firehose = Firehose.first()
    firehoseView = new FirehoseView(firehose)
    @setActiveView('firehose', firehoseView)

module.exports = Halda
