express = require 'express'

app = express()

app.listen 5678, -> console.log 'server up on 5678…'
