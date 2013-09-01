_global = this

class Ramsey
  constructor: -> @init()

  init: ->
    globalKeysObj = {}
    for key in Object.keys( _global )
      globalKeysObj[key] = true
    for key in _globalKeysSnapshot
      delete globalKeysObj[key]
    @globalPollution = globalKeysObj

Ramsey::version = "0.0.1"

_global.Ramsey = Ramsey

_globalKeysSnapshot = Object.keys _global

