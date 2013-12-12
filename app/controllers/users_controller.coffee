module.exports = (app) ->
  {UserModel} = app.locals
  {pathFor} = app.locals.path

  class UsersController
    @list = (req, res) ->
      res.send UserModel.all()

    @show = (req, res) ->

    @destroy = (req, res) ->

    @update = (req, res) ->

    @create = (req, res) ->
      user = new UserModel req.body.name
      user.save()
