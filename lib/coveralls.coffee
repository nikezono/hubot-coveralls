###

Coveralls.coffee

@nikezono

###

path = require 'path'
config = require(path.resolve('package')).config?.coveralls

module.exports = (robot) ->

  robot.router.post "/hubot/coveralls", (req, res) ->
    if config?
      envelope = config.envelope
      robot.send envelope,"test"
    else
      robot.send {},"test"
    res.end "200"

