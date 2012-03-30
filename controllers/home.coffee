module.exports = (app) ->

  app.get '/', (req,res) ->
    res.local 'title', 'Three.js Demo'
    res.render 'home'
