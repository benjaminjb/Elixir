defmodule EtudesList do
  @moduledoc """
  Functions for O'Reilly's Elixir Etudes, Chapter 6: Lists
  http://chimera.labs.oreilly.com/books/1234000001642/ch06.html
  """

  def outlier([], _func), do: []
  def outlier([head | tail], func), do: _outlier(tail, func, head)

  defp _outlier([], _func, current), do: current
  defp _outlier([head | tail], func, current) do
    if func.(head, current) do
      _outlier(tail, func, head)
    else
      _outlier(tail, func, current)
    end
  end

  @doc "Find the minimum in a list of numbers."
  @spec minimum([number]) :: number
  def minimum(list), do: outlier(list, fn(n, m) -> n < m end)
  
  @doc "Find the maximum in a list of numbers."
  @spec maximum([number]) :: number
  def maximum(list), do: outlier(list, fn(n, m) -> n > m end)
  
  @doc "Find the minimum and maximum in a list of numbers."
  @spec range_find([number]) :: {number, number}
  def range_find(list), do: {minimum(list), maximum(list)}

  @doc "Mean: the average"
  @spec mean([number]) :: number
  def mean(list), do: div(List.foldl(list, 0, fn(x, acc) -> x + acc end), Enum.count(list))

  @doc "Standard deviation"
  @spec stdv([number]) :: number
  def stdv(list) do
    n = Enum.count(list)
    {sum, sum_sq} = List.foldl(list, {0,0}, fn(x, {acc, acc_sq}) ->
      {acc + x, acc_sq + x * x} end)
    :math.sqrt((n * sum_sq - sum * sum) / (n * (n - 1)))
  end

end