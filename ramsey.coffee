_global = this


class Ramsey
  constructor: -> @init()

  init: ->
    @checkGlobalScope()

  checkGlobalScope: ->
    keys = {}
    keys[key] = true for key in Object.keys( _global )
    delete keys[key] for key in _globalVarsWhenLoaded
    @globalPollution = keys


Ramsey::version = "0.0.1"

_global.Ramsey = Ramsey

_globalVarsWhenLoaded = Object.keys _global
