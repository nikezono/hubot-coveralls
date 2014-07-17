###

Coveralls.coffee

@nikezono

###

path = require 'path'
config = require(path.resolve('package')).config?.coveralls

module.exports = (robot) ->

  robot.router.post "/hubot/coveralls", (req, res) ->

    change = req.params.coverage_change*1
    changeTag = if change isnt 0 then "[#{change}L]" else ""
    coverTag  = "[#{req.params.covered_percent}%]"

    text = "#{changeTag}#{coverTag} #{req.params.repo_name} coverage is updated.
 commiter:#{req.params.commiter_name}
 branch:#{req.params.branch}
 Coverage Report By Coveralls(#{req.params.url})"

    if config?
      envelope = config.envelope
      robot.send envelope,text
    else
      robot.send {},text
    res.end "200"

