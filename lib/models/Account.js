var Account, Ryggrad, _ref,
  __hasProp = {}.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

Ryggrad = require("ryggrad");

Account = (function(_super) {
  __extends(Account, _super);

  function Account() {
    _ref = Account.__super__.constructor.apply(this, arguments);
    return _ref;
  }

  Account.key("username", String);

  return Account;

})(Ryggrad.Model);

module.exports = Account;
