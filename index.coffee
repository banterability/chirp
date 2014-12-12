bodyParser = require 'body-parser'
express = require 'express'
hogan = require 'hogan-express'

app = express()

app.set 'view engine', 'html'
app.set 'layout', 'layout'
app.set 'partials', user: '_user'
app.engine 'html', hogan

app.use bodyParser.json()

app.get '/', (req, res) ->
  res.render 'index'

app.listen 5678, -> console.log 'server up on 5678…'
