defmodule Rumb1.PageController do
  use Rumb1.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
