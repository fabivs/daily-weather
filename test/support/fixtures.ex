defmodule DailyWeather.Support.Fixtures do
  
  @spec forecast_successful_response_fixture() :: {:ok, Req.Response.t()}
  def forecast_successful_response_fixture do
    {:ok,
     %Req.Response{
       status: 200,
       headers: %{
         "connection" => ["keep-alive"],
         "content-length" => ["835"],
         "content-type" => ["application/json; charset=utf-8"],
         "date" => ["Sat, 07 Oct 2023 18:31:08 GMT"],
         "transfer-encoding" => ["chunked"]
       },
       body: %{
         "elevation" => 148.0,
         "generationtime_ms" => 0.06401538848876953,
         "hourly" => %{
           "temperature_2m" => [
             17.4,
             16.9,
             16.6,
             15.6,
             15.3,
             15.2,
             14.8,
             15.8,
             18.0,
             20.4,
             22.1,
             23.3,
             24.5,
             25.1,
             25.3,
             25.6,
             25.0,
             23.7,
             22.1,
             21.1,
             20.4,
             19.6,
             18.6,
             17.7
           ],
           "time" => [
             "2023-10-07T00:00",
             "2023-10-07T01:00",
             "2023-10-07T02:00",
             "2023-10-07T03:00",
             "2023-10-07T04:00",
             "2023-10-07T05:00",
             "2023-10-07T06:00",
             "2023-10-07T07:00",
             "2023-10-07T08:00",
             "2023-10-07T09:00",
             "2023-10-07T10:00",
             "2023-10-07T11:00",
             "2023-10-07T12:00",
             "2023-10-07T13:00",
             "2023-10-07T14:00",
             "2023-10-07T15:00",
             "2023-10-07T16:00",
             "2023-10-07T17:00",
             "2023-10-07T18:00",
             "2023-10-07T19:00",
             "2023-10-07T20:00",
             "2023-10-07T21:00",
             "2023-10-07T22:00",
             "2023-10-07T23:00"
           ]
         },
         "hourly_units" => %{"temperature_2m" => "°C", "time" => "iso8601"},
         "latitude" => 45.54,
         "longitude" => 9.24,
         "timezone" => "GMT",
         "timezone_abbreviation" => "GMT",
         "utc_offset_seconds" => 0
       },
       trailers: %{},
       private: %{}
     }}
  end
end
