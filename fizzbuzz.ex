defmodule Challenges do
  def fizzbuzz(n) do
    1..n 
    |> Enum.map(&fbresult/1)
  end

  defp fbresult(n) when rem(n, 3) == 0 and rem(n, 5) == 0, do: "FizzBuzz" 
  defp fbresult(n) when rem(n, 3) == 0, do: "Fizz"
  defp fbresult(n) when rem(n, 5) == 0, do: "Buzz"
  defp fbresult(n), do: n
end