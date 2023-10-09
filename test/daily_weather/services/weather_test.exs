defmodule DailyWeather.Services.WeatherTest do
  use ExUnit.Case

  alias DailyWeather.DailyReport
  alias DailyWeather.Services.Weather
  alias DailyWeather.Support.Fixtures
  alias DailyWeather.Services.Clients.OpenMeteo
  alias DailyWeather.Location

  import Fixtures
  import Mock

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
               {:ok,
                %DailyReport{
                  apparent_min_temp: 14.5,
                  apparent_max_temp: 29.1,
                  min_temp: 15.0,
                  max_temp: 29.6,
                  precipitation_probability: 0
                }}
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
