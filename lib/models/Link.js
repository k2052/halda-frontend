var Link, Ryggrad, _ref,
  __hasProp = {}.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

Ryggrad = require("ryggrad");

Link = (function(_super) {
  __extends(Link, _super);

  function Link() {
    _ref = Link.__super__.constructor.apply(this, arguments);
    return _ref;
  }

  Link.key('url', String);

  Link.key("comment", String);

  Link.key('title', String);

  Link.key('hasMeta', Boolean);

  Link.key('images', Array);

  Link.key('image_widths', Array);

  Link.key('image_heights', Array);

  Link.key('type', String);

  return Link;

})(Ryggrad.Model);

module.exports = Link;
