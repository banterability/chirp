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

app.get '/', (req, res) ->
  res.locals.users = userList
  res.render 'index'

app.post '/update/:user', (req, res) ->
  payload = {
    user: req.params.user
    message: req.body.message
  }
  res.send payload

app.listen 5678, -> console.log 'server up on 5678…'
