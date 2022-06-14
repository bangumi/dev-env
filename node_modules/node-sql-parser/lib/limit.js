(function (global, factory) {
  if (typeof define === "function" && define.amd) {
    define(["exports", "./util", "./expr"], factory);
  } else if (typeof exports !== "undefined") {
    factory(exports, require("./util"), require("./expr"));
  } else {
    var mod = {
      exports: {}
    };
    factory(mod.exports, global.util, global.expr);
    global.limit = mod.exports;
  }
})(typeof globalThis !== "undefined" ? globalThis : typeof self !== "undefined" ? self : this, function (_exports, _util, _expr) {
  "use strict";

  Object.defineProperty(_exports, "__esModule", {
    value: true
  });
  _exports.limitToSQL = limitToSQL;

  function composePrefixValSuffix(stmt) {
    if (!stmt) return [];
    return [(0, _util.toUpper)(stmt.prefix), (0, _expr.exprToSQL)(stmt.value), (0, _util.toUpper)(stmt.suffix)];
  }

  function fetchOffsetToSQL(stmt) {
    const {
      fetch,
      offset
    } = stmt;
    const result = [...composePrefixValSuffix(offset), ...composePrefixValSuffix(fetch)];
    return result.filter(_util.hasVal).join(' ');
  }

  function limitOffsetToSQL(limit) {
    const {
      seperator,
      value
    } = limit;
    if (value.length === 1 && seperator === 'offset') return (0, _util.connector)('OFFSET', (0, _expr.exprToSQL)(value[0]));
    return (0, _util.connector)('LIMIT', value.map(_expr.exprToSQL).join(`${seperator === 'offset' ? ' ' : ''}${(0, _util.toUpper)(seperator)} `));
  }

  function limitToSQL(limit) {
    if (!limit) return '';
    if (limit.fetch) return fetchOffsetToSQL(limit);
    return limitOffsetToSQL(limit);
  }
});