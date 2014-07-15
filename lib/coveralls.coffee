###

Coveralls.coffee

@nikezono

###


module.exports = (robot) ->

  robot.router.post "/hubot/coveralls", (req, res) ->
    robot.send {room: "#nikezonotify"}, "test"
