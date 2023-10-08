defmodule DailyWeather.Services.Weather do
  @moduledoc """
  Weather information service.
  """
  alias DailyWeather.Location
  alias DailyWeather.Services.Clients.OpenMeteo

  @spec weather_report_for_today(Location.t()) :: {:ok, {min :: float(), max :: float()}}
  def weather_report_for_today(%Location{} = location) do
    case OpenMeteo.get_weather_for(location, Date.utc_today(), Date.utc_today()) do
      {:ok, response} ->
        temperatures_list =
          response.body
          |> Map.get("hourly")
          |> Map.get("temperature_2m")

        {:ok, Enum.min_max(temperatures_list)}

      {:error, _} = error ->
        error
    end
  end
end
