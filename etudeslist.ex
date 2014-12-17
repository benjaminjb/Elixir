defmodule EtudesList do
  @moduledoc """
  Functions for O'Reilly's Elixir Etudes, Chapter 6: Lists
  http://chimera.labs.oreilly.com/books/1234000001642/apa.html
  """

  @doc "Find the minimum in a list of numbers."
  @spec minimum([number]) :: number
  def minimum([]), do: []
  def minimum([head | tail]), do: _minimum(tail, head)
  
  # Private functions to find minimum
  defp _minimum([], min), do: min
  defp _minimum([head | tail], min) when head < min, do: _minimum(tail, head)
  defp _minimum([_head | tail], min), do: _minimum(tail, min)

end