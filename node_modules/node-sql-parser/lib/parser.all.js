(function (global, factory) {
  if (typeof define === "function" && define.amd) {
    define(["exports", "../pegjs/bigquery.pegjs", "../pegjs/db2.pegjs", "../pegjs/hive.pegjs", "../pegjs/mysql.pegjs", "../pegjs/mariadb.pegjs", "../pegjs/postgresql.pegjs", "../pegjs/sqlite.pegjs", "../pegjs/transactsql.pegjs", "../pegjs/flinksql.pegjs"], factory);
  } else if (typeof exports !== "undefined") {
    factory(exports, require("../pegjs/bigquery.pegjs"), require("../pegjs/db2.pegjs"), require("../pegjs/hive.pegjs"), require("../pegjs/mysql.pegjs"), require("../pegjs/mariadb.pegjs"), require("../pegjs/postgresql.pegjs"), require("../pegjs/sqlite.pegjs"), require("../pegjs/transactsql.pegjs"), require("../pegjs/flinksql.pegjs"));
  } else {
    var mod = {
      exports: {}
    };
    factory(mod.exports, global.bigquery, global.db2, global.hive, global.mysql, global.mariadb, global.postgresql, global.sqlite, global.transactsql, global.flinksql);
    global.parserAll = mod.exports;
  }
})(typeof globalThis !== "undefined" ? globalThis : typeof self !== "undefined" ? self : this, function (_exports, _bigquery, _db, _hive, _mysql, _mariadb, _postgresql, _sqlite, _transactsql, _flinksql) {
  "use strict";

  Object.defineProperty(_exports, "__esModule", {
    value: true
  });
  _exports.default = void 0;
  var _default = {
    bigquery: _bigquery.parse,
    db2: _db.parse,
    hive: _hive.parse,
    mysql: _mysql.parse,
    mariadb: _mariadb.parse,
    postgresql: _postgresql.parse,
    sqlite: _sqlite.parse,
    transactsql: _transactsql.parse,
    flinksql: _flinksql.parse
  };
  _exports.default = _default;
});