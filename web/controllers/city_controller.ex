defmodule Cityguide.CityController do
  use Phoenix.Controller

  def show(conn, params) do
    {:city, name, woeid} = find_city(params["city"])
    temperature = fetch_temperature(woeid)
    render conn, "show", city_name: name, city_temperature: temperature
  end


  require Record
  Record.defrecord :city, name: "", woeid: ""

  defp fetch_temperature(woeid) do
    CurrentWeather.YahooFetcher.fetch(woeid)
  end

  defp find_city(city) when is_binary(city) do
    find_city(String.to_existing_atom(city))
  end

  defp find_city(city) when is_atom(city) do
    cities[city]
  end

  defp cities do
    [
      chicago: city(name: "Chicago, IL", woeid: "2379574"),
      newyork: city(name: "New York, NY", woeid: "2459115"),
      losangeles: city(name: "Los Angeles, CA", woeid: "2442047"),
      austin: city(name: "Austin, TX", woeid: "2357519"),
      philadelphia: city(name: "Philadelphia, PA", woeid: "2471217")
    ]
  end

end
