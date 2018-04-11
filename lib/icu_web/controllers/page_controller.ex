defmodule IcuWeb.PageController do
  use IcuWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
