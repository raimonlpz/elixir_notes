greeter = fn name -> (fn -> "Hello #{name}" end) end
dave_greeter = greeter.("Dave")
IO.puts dave_greeter.()


add_n = fn n -> (fn other -> n + other end) end
add_two = add_n.(2)
add_five = add_n.(5)

IO.puts add_two.(3)
IO.puts add_five.(7)

IO.puts add_n.(5).(5)


prefix = fn str -> fn ostr -> "#{str} #{ostr}" end end
mrs = prefix.("Mrs")
IO.puts mrs.("Smith")

IO.puts prefix.("Elixir").("Rocks!")

################# passing fn as arguments
times_2 = fn n -> n * 2 end
apply = fn (fun, value) -> fun.(value) end

IO.puts apply.(times_2, 6)

################# Enum - map
list = [1,2,3,5,6,7]
nlist = Enum.map list, fn elem -> elem * 2 end

IO.puts inspect(nlist)
