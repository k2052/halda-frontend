Firehose = require("../../lib/models/Firehose")

describe "Firehose", ->
  server = sinon.fakeServer.create()
  server.autorespond = true

  server.respondWith("GET", Firehose.url(),
    [ 200, {"Content-Type":"application/json"},'[{ "name": "test" }]' ])

  beforeEach ->
    Firehose.destroyAll()

  it "can create records", ->
    firehose = Firehose.create name: "test"

    # Compare this way because JS is annoying
    Firehose.all()[0].id.should.equal   firehose.id
    Firehose.all()[0].cid.should.equal  firehose.cid
    Firehose.all()[0].name.should.equal firehose.name

  # TODO Get this working
  it "should retrieve a firehose", ->
    Firehose.all(remote: true)

    Firehose.records().promise.done (records) ->
      console.log "completes?"
      Firehose.all()[0].name.should.equal "test"
