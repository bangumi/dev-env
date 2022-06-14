(function (global, factory) {
  if (typeof define === "function" && define.amd) {
    define(["exports", "../pegjs/mysql.pegjs"], factory);
  } else if (typeof exports !== "undefined") {
    factory(exports, require("../pegjs/mysql.pegjs"));
  } else {
    var mod = {
      exports: {}
    };
    factory(mod.exports, global.mysql);
    global.parserSingle = mod.exports;
  }
})(typeof globalThis !== "undefined" ? globalThis : typeof self !== "undefined" ? self : this, function (_exports, _mysql) {
  "use strict";

  Object.defineProperty(_exports, "__esModule", {
    value: true
  });
  _exports.default = void 0;
  var _default = {
    [PARSER_NAME]: _mysql.parse
  };
  _exports.default = _default;
});