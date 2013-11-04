_global = this


class Ramsey
  constructor: -> 
    @globalVarsWhenLoaded = Object.keys _global

  berate: ->
    keys = {}
    keys[key] = true for key in Object.keys( _global )
    delete keys[key] for key in @globalVarsWhenLoaded
    keys

  berateAsStrings: ->
    Object.keys @berate()


Ramsey::version = "0.0.1"

_global.ramsey = new Ramsey

