defmodule Discussion.Router do
  use Discussion.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Discussion do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/topics/new", TopicController, :new
  end

  # Other scopes may use custom stacks.
  # scope "/api", Discussion do
  #   pipe_through :api
  # end
end
