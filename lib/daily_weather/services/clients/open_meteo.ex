defmodule DailyWeather.Services.Clients.OpenMeteo do
  @moduledoc """
  Client for the OpenMeteo service.
  """
  alias DailyWeather.Location

  @spec get_weather_for(Location.t(), Date.t(), Date.t()) ::
          {:ok, map()} | {:error, any()}
  def get_weather_for(%Location{lat: lat, lon: lon}, start_date, end_date) do
    daily_data = [
      "temperature_2m_max",
      "temperature_2m_min",
      "apparent_temperature_max",
      "apparent_temperature_min",
      "precipitation_probability_mean"
    ]

    Req.get("https://api.open-meteo.com/v1/forecast",
      params: [
        latitude: lat,
        longitude: lon,
        daily: Enum.join(daily_data, ","),
        start_date: start_date,
        end_date: end_date,
        timezone: "auto"
      ]
    )
  end
end
