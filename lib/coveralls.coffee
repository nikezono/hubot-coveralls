###

Coveralls.coffee

@nikezono

###

path = require 'path'
config = require(path.resolve('package')).config?.coveralls

module.exports = (robot) ->

  robot.router.post "/hubot/coveralls", (req, res) ->

    change = req.body.coverage_change*1
    changeTag = if change isnt 0 then "[#{change}L]" else ""
    coverTag  = if req.body.covered_percent isnt "" then "[#{req.body.covered_percent}%]" else ""

    text = "#{changeTag}#{coverTag} #{req.body.repo_name} coverage is updated.
 committer:#{req.body.committer_name}
 branch:#{req.body.branch}
 Coverage Report By Coveralls(#{req.body.url})"

    if config?
      envelope = config.envelope
      robot.send envelope,text
    else
      robot.send {},text
    res.end "200"

