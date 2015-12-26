defmodule Rumb1.Auth do
	import Plug.Conn

  def init(opts) do
    opts
    |> Keyword.fetch!(:repo)
  end

  def call(conn, repo) do
    user_id = get_session(conn, :user_id)
    user = user_id && repo.get(Rumb1.User, user_id)
    assign(conn, :current_user, user)
  end

end
