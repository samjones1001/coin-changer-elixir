defmodule CoinChanger do

  def calculate(amount) do
    calculate(amount, [], [5, 2,1])
  end

  def calculate(amount, change, [_denomination | _other_denominations]) when amount == 0 do
    change
  end

  def calculate(amount, change, [denomination | other_denominations]) when amount < denomination do
    calculate(amount, change, other_denominations)
  end

  def calculate(amount, change, [denomination | other_denominations]) do
    calculate(amount - denomination, change ++ [denomination], [denomination| other_denominations])
  end
end
