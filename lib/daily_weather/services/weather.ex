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
        daily_data = response.body["daily"]

        [apparent_max_temp] = daily_data["apparent_temperature_max"]
        [apparent_min_temp] = daily_data["apparent_temperature_min"]
        [max_temp] = daily_data["temperature_2m_max"]
        [min_temp] = daily_data["temperature_2m_min"]
        [precipitation_probability] = daily_data["precipitation_probability_mean"]

        {:ok,
         %DailyReport{
           apparent_max_temp: apparent_max_temp,
           apparent_min_temp: apparent_min_temp,
           max_temp: max_temp,
           min_temp: min_temp,
           precipitation_probability: precipitation_probability
         }}

      {:error, _} = error ->
        error
    end
  end
end
