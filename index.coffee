bodyParser = require 'body-parser'
express = require 'express'
hogan = require 'hogan-express'
{setupFakeUsers} = require './stub'

app = express()

app.set 'view engine', 'html'
app.set 'layout', 'layout'
app.set 'partials', user: '_user'
app.engine 'html', hogan

app.use '/public', express.static "#{__dirname}/public"
app.use bodyParser.json()

userList = setupFakeUsers()
messageList = {}

app.get '/', (req, res) ->
  for user in userList
    user.message = messageList[user.uuid] if messageList[user.uuid]
  res.locals.users = userList
  res.render 'index'

app.post '/update', (req, res) ->
  {user, message} = req.body
  messageList[user] = message
  res.send {status: 'ok'}

app.listen 5678, -> console.log 'server up on 5678…'
