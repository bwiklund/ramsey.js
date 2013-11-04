(function() {
  var Ramsey, _global, _globalVarsWhenLoaded;

  _global = this;

  Ramsey = (function() {
    function Ramsey() {
      this.init();
    }

    Ramsey.prototype.init = function() {
      return this.checkGlobalScope();
    };

    Ramsey.prototype.checkGlobalScope = function() {
      var key, keys, _i, _j, _len, _len1, _ref;
      keys = {};
      _ref = Object.keys(_global);
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        key = _ref[_i];
        keys[key] = true;
      }
      for (_j = 0, _len1 = _globalVarsWhenLoaded.length; _j < _len1; _j++) {
        key = _globalVarsWhenLoaded[_j];
        delete keys[key];
      }
      return this.globalPollution = keys;
    };

    return Ramsey;

  })();

  Ramsey.prototype.version = "0.0.1";

  _global.Ramsey = Ramsey;

  _globalVarsWhenLoaded = Object.keys(_global);

}).call(this);
