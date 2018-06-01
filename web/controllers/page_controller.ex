defmodule Discussion.PageController do
  use Discussion.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
