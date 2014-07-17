###
#
# test.coffee
# Author:@nikezono
#
###


# dependency
path = require 'path'
assert = require 'assert'
coveralls = require path.resolve 'lib','coveralls'

describe "hubot-coveralls",->

  it "can compile",->
    robot =
     router:
       post:->

    coveralls(robot)
    assert.ok true
