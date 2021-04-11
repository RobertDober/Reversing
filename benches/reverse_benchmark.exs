list = Enum.to_list(1..100_000)

Benchee.run(
  %{
    "Enum.reverse/1" => fn -> Enum.reverse(list) end,
    "Reversing.naive/1" => fn -> Reversing.naive(list) end,
    "Reversing.clever5/1" => fn -> Reversing.clever5(list) end,
    "Reversing.clever10/1" => fn -> Reversing.clever10(list) end,
  }
)
