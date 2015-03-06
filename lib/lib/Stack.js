var Ryggrad, Stack,
  __hasProp = {}.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

Ryggrad = require("ryggrad");

Stack = (function(_super) {
  __extends(Stack, _super);

  function Stack() {
    this.views = {};
    this.activeView = null;
    this.previousView = null;
  }

  Stack.prototype.setActiveView = function(viewName, view) {
    if (this.activeView) {
      this.activeView.hide();
      this.previousView = this.activeView;
    }
    this.views[viewName] = view;
    this.activeView = this.views[viewName];
    return this.activeView.show();
  };

  Stack.prototype.prev = function() {
    return this.previousView;
  };

  Stack.prototype.active = function() {
    return this.activeView;
  };

  return Stack;

})(Ryggrad.Controller);

module.exports = Stack;
