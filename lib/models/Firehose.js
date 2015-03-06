var Firehose, Ryggrad, _ref,
  __hasProp = {}.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

Ryggrad = require("ryggrad");

Firehose = (function(_super) {
  __extends(Firehose, _super);

  function Firehose() {
    _ref = Firehose.__super__.constructor.apply(this, arguments);
    return _ref;
  }

  Firehose.key("name", String);

  return Firehose;

})(Ryggrad.Model);

module.exports = Firehose;
