defmodule DailyWeather.Services.Clients.OpenMeteoTest do
  use ExUnit.Case, async: false

  alias DailyWeather.Location
  alias DailyWeather.Services.Clients.OpenMeteo

  import DailyWeather.Support.Fixtures
  import Mock

  @api_endpoint "https://api.open-meteo.com/v1/forecast"

  test "Successfully get weather information" do
    date = ~D[2023-10-07]
    lat = 50
    lon = 10

    with_mock Req,
      get: fn @api_endpoint,
              params: [
                latitude: ^lat,
                longitude: ^lon,
                daily:
                  "temperature_2m_max,temperature_2m_min,apparent_temperature_max,apparent_temperature_min,precipitation_probability_mean",
                hourly: "weathercode",
                start_date: ^date,
                end_date: ^date,
                timezone: "auto"
              ] ->
        forecast_successful_response_fixture()
      end do
      assert OpenMeteo.get_weather_for(%Location{lat: lat, lon: lon}, date, date) ==
               forecast_successful_response_fixture()
    end
  end
end
