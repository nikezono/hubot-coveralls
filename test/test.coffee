###
#
# test.coffee
# Author:@nikezono
#
###


# dependency
path = require 'path'
assert = require 'assert'

describe "hubot-coveralls",->

  it "can compile",->
    coveralls = require path.resolve 'scripts','coveralls'
    assert.notEqual coveralls,null
