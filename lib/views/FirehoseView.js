var FirehoseView, Ryggrad, _ref,
  __hasProp = {}.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

Ryggrad = require("ryggrad");

FirehoseView = (function(_super) {
  __extends(FirehoseView, _super);

  function FirehoseView() {
    _ref = FirehoseView.__super__.constructor.apply(this, arguments);
    return _ref;
  }

  FirehoseView.content = function() {};

  FirehoseView.prototype.initialize = function(firehose) {
    this.firehose = firehose;
    this.links = firehose.links.all();
    return this.addLinks(this.links);
  };

  FirehoseView.prototype.addLinks = function(links) {
    var link, linkView, _i, _len, _results;
    _results = [];
    for (_i = 0, _len = links.length; _i < _len; _i++) {
      link = links[_i];
      linkView = new LinkView(link);
      _results.push(this.list.append(linkView));
    }
    return _results;
  };

  return FirehoseView;

})(Ryggrad.View);

module.exports = FirehoseView;
