defmodule Challenges do

  def raise_and_add_digits(num, exp \\ 2) do
    :math.pow(num,exp)
    |> to_string
    |> String.replace(~r/[^0-9]/, "")
    |> String.graphemes
    |> Enum.map(&String.to_integer/1)
    |> Enum.reduce(0 , &(&1 + &2))
  end

end