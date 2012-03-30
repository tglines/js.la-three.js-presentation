express = require 'express'
app = express.createServer()
jade = require 'jade'

app.configure ->
  app.set 'views', __dirname+'/views'
  app.set 'view engine', 'jade'
  app.use express.bodyParser()
  app.use express.methodOverride()
  app.use express.cookieParser()
  app.use express.logger {format:':date :remote-addr :method :status :url'}
  app.use express.static __dirname+'/public'
  app.use app.router

require('./controllers/home')(app)

app.listen 9006
