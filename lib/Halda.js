var Halda, Ryggrad, Stack,
  __hasProp = {}.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

Ryggrad = require("ryggrad");

Stack = require("./lib/Stack");

Halda = (function(_super) {
  __extends(Halda, _super);

  Halda.version = "0.0.1";

  function Halda() {
    var router;
    router = new Ryggrad.Router();
    router.add("/", this.index);
    if (!State.get('account')) {
      State.set("account", new Account({
        username: "test"
      }));
    }
  }

  Halda.prototype.index = function() {
    var firehose, firehoseView;
    firehose = Firehose.first();
    firehoseView = new FirehoseView(firehose);
    return this.setActiveView('firehose', firehoseView);
  };

  return Halda;

})(Stack);

module.exports = Halda;
