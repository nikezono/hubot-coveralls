hubot-coveralls [![Build Status](https://travis-ci.org/nikezono/hubot-coveralls.png)](https://travis-ci.org/nikezono/hubot-coveralls)[![Coverage Status](https://coveralls.io/repos/nikezono/hubot-coveralls/badge.png)](https://coveralls.io/r/nikezono/hubot-coveralls)
---

Hubot script for [Coveralls](https://coveralls.io/) Webhook Notifycation.

[![NPM](https://nodei.co/npm/hubot-coveralls.png)](https://nodei.co/npm/hubot-coveralls/)

Install
-------

    % npm install hubot-coveralls -save


### edit `external-script.json`

```json
["hubot-coveralls"]
```


Usage
-----

Set your hubot server address to repository's notification setting configration in Coveralls.

![coveralls](http://gyazo.com/c64a03e3591e0a69b40a8685c553afd5.png)


Options
---

you can edit `config.coveralls.envelope` section in  `package.json`, for configure envelope argument called by [Hubot.Adapter.Send](https://github.com/github/hubot/blob/master/src/adapter.coffee#L15)

example(using [Slack-Hubot](https://github.com/tinyspeck/hubot-slack) and notify `#news` channel:

![ex](http://gyazo.com/41ddb3a51248795e06ca6cbb86d26c53.png)
