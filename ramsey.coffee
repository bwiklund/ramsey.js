_global = this

class Ramsey
  constructor: -> @init()

  init: ->
    @checkGlobalScope()

  checkGlobalScope: ->
    keys = {}
    for key in Object.keys( _global )
      keys[key] = true
    for key in _globalKeysSnapshot
      delete keys[key]
    @globalPollution = keys

  


Ramsey::version = "0.0.1"

_global.Ramsey = Ramsey

_globalKeysSnapshot = Object.keys _global

