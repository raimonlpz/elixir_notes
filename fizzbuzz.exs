fizz_buzz = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, n) -> "#{n}"
end

sin_int = fn n -> fizz_buzz.(rem(n,3), rem(n,5), n) end

IO.puts sin_int.(10)
IO.puts sin_int.(11)
IO.puts sin_int.(12)
IO.puts sin_int.(13)
IO.puts sin_int.(14)
IO.puts sin_int.(15)
IO.puts sin_int.(16)

# IO.puts fizz_buzz.(0, 0, 2)
