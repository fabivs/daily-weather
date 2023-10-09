defmodule DailyWeather.DailyReport do
  @moduledoc """
  Struct for the required information for a daily weather report.
  """

  @enforce_keys [
    :apparent_max_temp,
    :apparent_min_temp,
    :max_temp,
    :min_temp,
    :precipitation_probability
  ]
  defstruct [
    :apparent_max_temp,
    :apparent_min_temp,
    :max_temp,
    :min_temp,
    :precipitation_probability
  ]

  @type t() :: %__MODULE__{
          apparent_max_temp: float(),
          apparent_min_temp: float(),
          max_temp: float(),
          min_temp: float(),
          precipitation_probability: integer()
        }
end
