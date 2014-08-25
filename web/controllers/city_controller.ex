defmodule Cityguide.CityController do
  use Phoenix.Controller

  def show(conn, params) do
    render conn, "show", city: params["city"]
  end
end
