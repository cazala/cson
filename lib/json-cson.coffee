module.exports =
class json2cson
  name: @name
  from:
    scopeName: 'source.json'
    fileTypes: ['*=".json"']
  to:
    scopeName: 'source.coffee'
    ext: '.cson'

  transpile: (source, {indent}) ->
    cson = require 'cson'
    cson.createString (cson.parse source), indent: indent
