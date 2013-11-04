ramsey.js [![Build Status](https://travis-ci.org/bwiklund/ramsey.js.png)](https://travis-ci.org/bwiklund/ramsey.js)
=============

A tiny js utility to detect global leaks

Usage is simple:

Include Ramsey.js at the top of your page, _before_ any other scripts.

```html
<script src="ramsey.js"></script>
```

Then, at any other time, call `ramsey.berate()` to see how messed up your global scope is.

```javascript
ramsey.berate();
// returns {fooGlobalThing: true, barGlobalThing: true}
```

Alternatively, you can call `#.berateAsArray` to get your report as a list of strings

```javascript
ramsey.berateAsArray();
// returns ["fooGlobalThing", "barGlobalThing"]
```