t = (1..10)
  |> Enum.map(&(&1 * &1))
  |> Enum.filter(&(&1 < 40))


IO.puts inspect(t)
