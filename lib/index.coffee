cson2json = require './cson-json'
json2cson = require './json-cson'

module.exports =
  activate: ->
    @cson2json = new cson2json
    @json2cson = new json2cson
    return [ @cson2json, @json2cson ]

  deactivate: -> @cson2json = @json2cson = null
