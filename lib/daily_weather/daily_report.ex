defmodule DailyWeather.DailyReport do
  @moduledoc """
  Struct for the required information for a daily weather report.
  """

  @enforce_keys [:max_temp, :min_temp]
  defstruct [:max_temp, :min_temp]

  @type t() :: %__MODULE__{
          max_temp: float(),
          min_temp: float()
        }
end
