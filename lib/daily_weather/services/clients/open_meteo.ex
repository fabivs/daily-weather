defmodule DailyWeather.Services.Clients.OpenMeteo do
  @moduledoc """
  Client for the OpenMeteo service.
  """
  alias DailyWeather.Location

  @spec get_weather_for(Location.t(), Date.t(), Date.t()) ::
          {:ok, map()} | {:error, any()}
  def get_weather_for(%Location{lat: lat, lon: lon}, start_date, end_date) do
    Req.get("https://api.open-meteo.com/v1/forecast",
      params: [
        latitude: lat,
        longitude: lon,
        hourly: "temperature_2m",
        start_date: start_date,
        end_date: end_date
      ]
    )
  end
end
