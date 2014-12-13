# A dumb key/value store abstraction
class Store
  constructor: ->
    @values = {}

  get: (key) ->
    @values[key]

  set: (key, value) ->
    @values[key] = value

  getAll: ->
    @values
