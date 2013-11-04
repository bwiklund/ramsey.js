(function() {
  var Ramsey, _global;

  _global = this;

  Ramsey = (function() {
    function Ramsey() {
      this.globalVarsWhenLoaded = Object.keys(_global);
    }

    Ramsey.prototype.berate = function() {
      var key, keys, _i, _j, _len, _len1, _ref, _ref1;
      keys = {};
      _ref = Object.keys(_global);
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        key = _ref[_i];
        keys[key] = true;
      }
      _ref1 = this.globalVarsWhenLoaded;
      for (_j = 0, _len1 = _ref1.length; _j < _len1; _j++) {
        key = _ref1[_j];
        delete keys[key];
      }
      return keys;
    };

    Ramsey.prototype.berateAsStrings = function() {
      return Object.keys(this.berate());
    };

    return Ramsey;

  })();

  Ramsey.prototype.version = "0.0.1";

  _global.ramsey = new Ramsey;

}).call(this);
