var State;

State = (function() {
  function State() {}

  State.values = {};

  State.get = function(key) {
    return this.values[key];
  };

  State.set = function(key, val) {
    return this.values[key] = val;
  };

  return State;

})();

module.exports = State;
