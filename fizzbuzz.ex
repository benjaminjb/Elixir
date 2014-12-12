defmodule FizzBuzz do

  @fizz 5
  @buzz 7

  def fizzbuzz(n), do: _fizzbuzz(n, [])

  defp _fizzbuzz(0, acc), do: acc

  defp _fizzbuzz(n, acc) do
    _fizzbuzz(n - 1, [fbresult(n) | acc])
  end

  defp fbresult(n) do
    case {rem(n, @fizz), rem(n, @buzz)} do
      {0,0} -> "fizzbuzz"
      {0,_} -> "fizz"
      {_,0} -> "buzz"
      {_,_} -> n
    end
  end

end