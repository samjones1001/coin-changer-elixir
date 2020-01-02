defmodule CoinChangerTest do
  use ExUnit.Case

  test "returns a single penny for one" do
    assert CoinChanger.calculate(1) == [1]
  end

  test "returns a single 2p coin for two" do
    assert CoinChanger.calculate(2) == [2]
  end


end
