defmodule CoinChanger do

  def calculate(amount) do
    calculate(amount, [], [200, 100, 50, 20, 10, 5, 2, 1])
  end

  defp calculate(amount=0, change, _) do
    Enum.reverse(change)
  end

  defp calculate(amount, change, [denomination | other_denominations]) when amount < denomination do
    calculate(amount, change, other_denominations)
  end

  defp calculate(amount, change, [denomination | other_denominations]) do
    calculate(amount - denomination, [denomination | change], [denomination | other_denominations])
  end
end
