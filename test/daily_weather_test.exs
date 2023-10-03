defmodule DailyWeatherTest do
  use ExUnit.Case
  doctest DailyWeather

  test "greets the world" do
    assert DailyWeather.hello() == :world
  end
end
