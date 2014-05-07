Ryggrad = require("ryggrad")

class Account extends Ryggrad.Model
  @key "username", String

module.exports = Account
