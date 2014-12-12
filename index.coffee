bodyParser = require 'body-parser'
express = require 'express'

app = express()
app.use bodyParser.json()

app.listen 5678, -> console.log 'server up on 5678…'
