defmodule Challenges do

  def fizzbuzz(n) do
    1..n 
    |> Enum.map(&fbresult/1)
  end

  defp fbresult(n) do
    case {rem(n, 3), rem(n, 5)} do
      {0,0} -> "fizzbuzz"
      {0,_} -> "fizz"
      {_,0} -> "buzz"
      {_,_} -> n
    end
  end

end