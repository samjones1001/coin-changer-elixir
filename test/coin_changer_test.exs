defmodule CoinChangerTest do
  use ExUnit.Case

  test "returns a single penny for one" do
    assert CoinChanger.calculate(1) == [1]
  end

  test "returns a single 2p coin for two" do
    assert CoinChanger.calculate(2) == [2]
  end

  test "returns a penny and a 2p coin for three" do
    assert CoinChanger.calculate(3) == [2, 1]
  end

  test "returns two 2ps for four" do
    assert CoinChanger.calculate(4) == [2, 2]
  end

  test "returns a single 5p for five" do
    assert CoinChanger.calculate(5) == [5]
  end

  test "returns a 5p and a penny for six" do
    assert CoinChanger.calculate(6) == [5, 1]
  end

  test "retuns a 5p and two 2ps for nine" do
    assert CoinChanger.calculate(9) == [5, 2, 2]
  end
end
