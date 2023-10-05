defmodule DailyWeather.Services.Weather do
  @moduledoc """
  Weather information service.
  """
  alias DailyWeather.Services.Clients.OpenMeteo

  # TODO: refactor this duplicated type definition
  @type location() :: %{lat: float(), lon: float()}

  @spec max_and_min_temp_today(location) :: {:ok, {min :: float(), max :: float()}}
  def max_and_min_temp_today(%{lat: _, lon: _} = location) do
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
