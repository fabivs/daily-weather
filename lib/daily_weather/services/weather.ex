defmodule DailyWeather.Services.Weather do
  @moduledoc """
  Weather information service.
  """
  alias DailyWeather.DailyReport
  alias DailyWeather.Location
  alias DailyWeather.Services.Clients.OpenMeteo

  @spec weather_report_for_today(Location.t()) :: {:ok, DailyReport.t()}
  def weather_report_for_today(%Location{} = location) do
    case OpenMeteo.get_weather_for(location, Date.utc_today(), Date.utc_today()) do
      {:ok, response} ->
        {min_temp, max_temp} =
          response.body
          |> Map.get("hourly")
          |> Map.get("temperature_2m")
          |> Enum.min_max()

        {:ok, %DailyReport{min_temp: min_temp, max_temp: max_temp}}

      {:error, _} = error ->
        error
    end
  end
end
