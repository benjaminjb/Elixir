defmodule EtudesList do
  @moduledoc """
  Functions for O'Reilly's Elixir Etudes, Chapter 6: Lists
  http://chimera.labs.oreilly.com/books/1234000001642/ch06.html
  """

  @doc "Find the minimum in a list of numbers."
  @spec minimum([number]) :: number
  def minimum([]), do: []
  def minimum([head | tail]), do: _minimum(tail, head)
  
  # Private functions to find minimum
  defp _minimum([], min), do: min
  defp _minimum([head | tail], min) when head < min, do: _minimum(tail, head)
  defp _minimum([_head | tail], min), do: _minimum(tail, min)

  @doc "Find the maximum in a list of numbers."
  @spec maximum([number]) :: number
  def maximum([]), do: []
  def maximum([head | tail]), do: _maximum(tail, head)
  
  # Private functions to find maximum
  defp _maximum([], max), do: max
  defp _maximum([head | tail], max) when head > max, do: _maximum(tail, head)
  defp _maximum([_head | tail], max), do: _maximum(tail, max)

  @doc "Find the minimum and maximum in a list of numbers."
  @spec range_find([number]) :: {number, number}
  def range_find([]), do: []
  def range_find([head | tail]), do: {_minimum(tail, head), _maximum(tail, head)} 
end