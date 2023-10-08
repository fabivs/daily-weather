defmodule DailyWeather.Services.WeatherTest do
  use ExUnit.Case

  alias DailyWeather.DailyReport
  alias DailyWeather.Services.Weather
  alias DailyWeather.Support.Fixtures
  alias DailyWeather.Services.Clients.OpenMeteo
  alias DailyWeather.Location

  import Fixtures
  import Mock

  # TODO: I should setup a custom Date module to be able to mock it in tests
  @date Date.utc_today()

  @location %Location{
    lat: 50,
    lon: 10
  }

  test "Get a WeatherReport" do
    with_mock(OpenMeteo,
      get_weather_for: fn @location, @date, @date -> forecast_successful_response_fixture() end
    ) do
      assert Weather.weather_report_for_today(@location) ==
               {:ok, %DailyReport{min_temp: 14.8, max_temp: 25.6}}
    end
  end

  test "Return an error if the client returns an error" do
    with_mock(OpenMeteo,
      get_weather_for: fn @location, @date, @date ->
        {:error, %Mint.TransportError{reason: :nxdomain}}
      end
    ) do
      assert Weather.weather_report_for_today(@location) ==
               {:error, %Mint.TransportError{reason: :nxdomain}}
    end
  end
end
