defmodule PhoenixApp.PageController do
  use PhoenixApp.Web, :controller

  plug :action

  def index(conn, _params) do
    render conn, "index.html"
  end
end
