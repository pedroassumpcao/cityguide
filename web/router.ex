defmodule Cityguide.Router do
  use Phoenix.Router

  get "/", Cityguide.PageController, :index, as: :pages

end
