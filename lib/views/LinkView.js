var LinkView, Ryggrad, _ref,
  __hasProp = {}.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

Ryggrad = require("ryggrad");

LinkView = (function(_super) {
  __extends(LinkView, _super);

  function LinkView() {
    _ref = LinkView.__super__.constructor.apply(this, arguments);
    return _ref;
  }

  LinkView.content = function() {};

  LinkView.prototype.initialize = function(link) {};

  return LinkView;

})(Ryggrad.View);

module.exports = LinkView;
