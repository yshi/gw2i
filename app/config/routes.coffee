module.exports = (app) ->
  {UsersController} = app.locals
  {pathRaw} = app.locals.path

  app.resource = (path, obj) -> 
    this.get path, obj.list
    this.get path + '/:id', obj.show
    this.del path + '/:id', obj.destroy
    this.put path, obj.update
    this.post path, obj.create

  app.get pathRaw('index'), (req, res) ->
    res.render 'index', view: 'index'
  
  app.resource('/users', UsersController)
