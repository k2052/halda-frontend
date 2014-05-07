Account = require("../../lib/models/Account")
Ryggrad = require("ryggrad")

describe "Account", ->
  beforeEach ->
    Account.destroyAll()

  it "can create records", ->
    account = Account.create username: "bob"

    # Compare this way because JS is annoying
    Account.all()[0].id.should.equal   account.id
    Account.all()[0].cid.should.equal  account.cid
    Account.all()[0].username.should.equal account.username
