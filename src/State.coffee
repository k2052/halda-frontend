class State
  @values = {}

  @get: (key) ->
    @values[key]

  @set: (key, val) ->
    @values[key] = val

module.exports = State
