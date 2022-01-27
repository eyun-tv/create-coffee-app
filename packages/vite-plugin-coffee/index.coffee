CoffeeScript = require 'coffeescript'

coffee = (config={}) =>
  name: 'coffee'
  transform: (src, id) ->
    if /\.coffee$/.test id
      { js:code, sourceMap:map } = CoffeeScript.compile src, config
      {
        code
        map
      }

module.exports = coffee
