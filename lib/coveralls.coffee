###

Coveralls.coffee

@nikezono

###


module.exports = (robot) ->

  robot.router.post "/hubot/coveralls", (req, res) ->
    res.end "200"

