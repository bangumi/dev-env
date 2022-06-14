(function (global, factory) {
  if (typeof define === "function" && define.amd) {
    define(["exports", "./util", "./expr", "./window"], factory);
  } else if (typeof exports !== "undefined") {
    factory(exports, require("./util"), require("./expr"), require("./window"));
  } else {
    var mod = {
      exports: {}
    };
    factory(mod.exports, global.util, global.expr, global.window);
    global.over = mod.exports;
  }
})(typeof globalThis !== "undefined" ? globalThis : typeof self !== "undefined" ? self : this, function (_exports, _util, _expr, _window) {
  "use strict";

  Object.defineProperty(_exports, "__esModule", {
    value: true
  });
  _exports.overToSQL = overToSQL;

  function overToSQL(over) {
    if (!over) return;
    const {
      as_window_specification: asWindowSpec,
      expr,
      keyword,
      type
    } = over;
    const upperType = (0, _util.toUpper)(type);
    if (upperType === 'WINDOW') return `OVER ${(0, _window.asWindowSpecToSQL)(asWindowSpec)}`;

    if (upperType === 'ON UPDATE') {
      let onUpdate = `${(0, _util.toUpper)(type)} ${(0, _util.toUpper)(keyword)}`;
      const args = (0, _expr.exprToSQL)(expr);
      if (args) onUpdate = `${onUpdate}(${args.join(', ')})`;
      return onUpdate;
    }

    throw new Error('unknown over type');
  }
});