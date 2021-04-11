defmodule ReversingTest do
  use ExUnit.Case

  test "naive" do
    test_reverse(&Reversing.naive/1)
  end

  test "clever5" do
    test_reverse(&Reversing.clever5/1)
  end

  test "clever10" do
    test_reverse(&Reversing.clever10/1)
  end

  test "Enum.reverse" do
    test_reverse(&Enum.reverse/1)
  end

  test "Erlang" do
    test_reverse(&:lists.reverse/1)
  end

  defp test_reverse(fun) do
    ((1..10 |> Enum.into([])) ++ [0, 20, 90, 2000])
    |> Enum.each(fn n ->
      input = Stream.iterate(0, &(&1 + 1)) |> Enum.take(n)
      expected = Enum.reverse(input)

      assert fun.(input) == expected
    end)
  end
end
