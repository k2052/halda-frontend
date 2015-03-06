Link    = require("../../lib/models/Link")
Ryggrad = require("ryggrad")

describe "Link", ->
  beforeEach ->
    Link.destroyAll()

  it "can create records", ->
    link = Link.create title: "test"

    # Compare this way because JS is annoying
    Link.all()[0].id.should.equal   link.id
    Link.all()[0].cid.should.equal  link.cid
    Link.all()[0].title.should.equal link.title
