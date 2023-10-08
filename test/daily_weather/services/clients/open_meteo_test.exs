defmodule DailyWeather.Services.Clients.OpenMeteoTest do
  use ExUnit.Case, async: false

  alias DailyWeather.Location
  alias DailyWeather.Services.Clients.OpenMeteo

  import DailyWeather.Support.Fixtures
  import Mock

  @api_endpoint "https://api.open-meteo.com/v1/forecast"

  test "happy path" do
    lat = 50
    lon = 10
    date = ~D[2023-10-07]

    with_mock Req,
      get: fn @api_endpoint,
              params: [
                latitude: ^lat,
                longitude: ^lon,
                hourly: "temperature_2m",
                start_date: ^date,
                end_date: ^date
              ] ->
        forecast_successful_response_fixture()
      end do
      assert OpenMeteo.get_weather_for(%Location{lat: lat, lon: lon}, date, date) ==
               forecast_successful_response_fixture()
    end
  end
end
