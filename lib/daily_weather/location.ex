defmodule DailyWeather.Location do
  @moduledoc """
  A basic location struct
  """

  @enforce_keys [:lat, :lon]
  defstruct [:lat, :lon]

  @type t() :: %__MODULE__{
          lat: float(),
          lon: float()
        }

  @spec sesto_san_giovanni :: t()
  def sesto_san_giovanni, do: %__MODULE__{lat: 45.534315, lon: 9.234593}
end
