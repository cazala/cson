module.exports =
class cson2json
  name: @name
  from:
    scopeName: 'source.coffee'
    fileTypes: ['cson']
  to:
    scopeName: 'source.json'
    ext: '.json'

  transpile: (source, {indent}) ->
    cson = require 'cson'
    JSON.stringify (cson.parse source), null, indent
