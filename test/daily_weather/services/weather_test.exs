defmodule DailyWeather.Services.WeatherTest do
  use ExUnit.Case

  alias DailyWeather.Services.Weather
  alias DailyWeather.Support.Fixtures
  alias DailyWeather.Services.Clients.OpenMeteo
  alias DailyWeather.Location

  import Fixtures
  import Mock

  test "Get a WeatherReport" do
    # TODO: I should setup a custom Date module to be able to mock it in tests
    date = Date.utc_today()

    location = %Location{
      lat: 50,
      lon: 10
    }

    with_mock OpenMeteo,
      get_weather_for: fn ^location, ^date, ^date -> forecast_successful_response_fixture() end do
      assert Weather.weather_report_for_today(location) == {:ok, {14.8, 25.6}}
    end
  end
end
