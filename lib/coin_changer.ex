defmodule CoinChanger do

  def calculate(amount) do
    calculate(amount, [], [200, 100, 50, 20, 10, 5, 2,1])
  end

  defp calculate(amount, change, [denomination | other_denominations]) do
    cond do
      amount == 0 ->
        change
      amount < denomination ->
        calculate(amount, change, other_denominations)
      true ->
        calculate(amount - denomination, change ++ [denomination], [denomination| other_denominations])
    end
  end
end
