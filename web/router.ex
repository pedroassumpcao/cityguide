defmodule Cityguide.Router do
  use Phoenix.Router

  scope alias: Cityguide do
    get "/", PageController, :index, as: :pages
    get "/cities/*city", CityController, :show
  end

end
