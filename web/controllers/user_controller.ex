defmodule Rumb1.UserController do
	use Rumb1.Web, :controller

  def index(conn, _params) do
    users = Repo.all(Rumb1.User)
    render conn, "index.html", users: users
  end

  def show(conn, %{"id" => id}) do
    user = Repo.get(Rumb1.User, id)
    render conn, "show.html", user: user
  end

end
