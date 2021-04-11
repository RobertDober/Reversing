defmodule Reversing do
  @moduledoc """
  Implementing some alternatives to `Enum.reverse`, just for lists
  to compare efficency
  """

  @doc """
  Trying to be clever by cutting the calls by 5
  """
  def clever5(list), do: _clever5(list, [])

  @doc """
  Trying to be even  more clever by cutting the calls by 10 but not bothering
  """
  def clever10(list), do: _clever10(list)

  @doc """
  Naive iterative traversal
  """
  def naive(list), do: _naive(list, [])


  defp _clever5(list, result)
  defp _clever5([a, b, c, d, e | t], result), do: _clever5(t, [e, d, c, b, a | result])
  defp _clever5([a | t], result), do: _clever5(t, [a | result])
  defp _clever5(_, result), do: result

  defp _clever10(list)
  defp _clever10([a, b, c, d, e, f, g, h, i, j | t], result), 
    do: :lists.reverse(t, [j, i, h, g, f, e, d, c, b, a])
  defp _clever10(list), do: :lists.reverse(list)


  defp _naive(list, result)
  defp _naive([h|t], result), do: _naive(t, [h|result])
  defp _naive(_, result), do: result
end
