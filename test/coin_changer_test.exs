defmodule CoinChangerTest do
  use ExUnit.Case

  test "returns a single penny for one" do
    assert CoinChanger.calculate(1) == [1]
  end
end
