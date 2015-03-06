Ryggrad = require("ryggrad")

class FirehoseView extends Ryggrad.View
  @content: ->

  initialize: (firehose) ->
    @firehose = firehose
    @links    = firehose.links.all()
    @addLinks(@links)

  addLinks: (links) ->
    for link in links
      linkView = new LinkView(link)
      @list.append(linkView)

module.exports = FirehoseView
