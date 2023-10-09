defmodule DailyWeather.Support.Fixtures do
  @moduledoc false

  @spec forecast_successful_response_fixture() :: {:ok, Req.Response.t()}
  def forecast_successful_response_fixture do
    {:ok,
     %Req.Response{
       status: 200,
       headers: %{
         "connection" => ["keep-alive"],
         "content-length" => ["1156"],
         "content-type" => ["application/json; charset=utf-8"],
         "date" => ["Mon, 09 Oct 2023 00:20:55 GMT"],
         "transfer-encoding" => ["chunked"]
       },
       body: %{
         "daily" => %{
           "apparent_temperature_max" => [29.1],
           "apparent_temperature_min" => [14.5],
           "precipitation_probability_mean" => [0],
           "temperature_2m_max" => [29.6],
           "temperature_2m_min" => [15.0],
           "time" => ["2023-10-09"]
         },
         "daily_units" => %{
           "apparent_temperature_max" => "°C",
           "apparent_temperature_min" => "°C",
           "precipitation_probability_mean" => "%",
           "temperature_2m_max" => "°C",
           "temperature_2m_min" => "°C",
           "time" => "iso8601"
         },
         "elevation" => 148.0,
         "generationtime_ms" => 0.2690553665161133,
         "hourly" => %{
           "time" => [
             "2023-10-09T00:00",
             "2023-10-09T01:00",
             "2023-10-09T02:00",
             "2023-10-09T03:00",
             "2023-10-09T04:00",
             "2023-10-09T05:00",
             "2023-10-09T06:00",
             "2023-10-09T07:00",
             "2023-10-09T08:00",
             "2023-10-09T09:00",
             "2023-10-09T10:00",
             "2023-10-09T11:00",
             "2023-10-09T12:00",
             "2023-10-09T13:00",
             "2023-10-09T14:00",
             "2023-10-09T15:00",
             "2023-10-09T16:00",
             "2023-10-09T17:00",
             "2023-10-09T18:00",
             "2023-10-09T19:00",
             "2023-10-09T20:00",
             "2023-10-09T21:00",
             "2023-10-09T22:00",
             "2023-10-09T23:00"
           ],
           "weathercode" => [
             0,
             0,
             0,
             0,
             0,
             2,
             0,
             0,
             0,
             0,
             0,
             0,
             0,
             0,
             0,
             0,
             0,
             1,
             1,
             0,
             0,
             2,
             2,
             2
           ]
         },
         "hourly_units" => %{"time" => "iso8601", "weathercode" => "wmo code"},
         "latitude" => 45.54,
         "longitude" => 9.24,
         "timezone" => "Europe/Rome",
         "timezone_abbreviation" => "CEST",
         "utc_offset_seconds" => 7200
       },
       trailers: %{},
       private: %{}
     }}
  end
end
