add_one = &(&1 + 1)
IO.puts add_one.(34)

square = &(&1 * &1)
IO.puts square.(8)

spear = &(IO.puts(&1))
spear.("Hello")


#rnd = &(Float.round(&1, &2))
#IO.puts rnd.(5)

divrem = &{div(&1, &2), rem(&1, &2)}
IO.puts inspect(divrem.(13, 5))

s = &"bacon and #{&1}"
IO.puts s.("custard")

######
l = &length/1
IO.puts l.([1,3,4,6,777])

len = &Enum.count/1
IO.puts len.([1,3,55,5])

m = &Kernel.min/2
IO.puts m.(888, 100)

#######
Enum.map [1,2,3,4,5], &(&1 + 1)
Enum.map [1,2,3,4,5], &(&1 * &1)
Enum.map [1,2,3,4], &(&1 < 3)

#######
Enum.map [1,2,3,4], &(&1 + 2)
Enum.each [1,2,3,4,88], &(IO.inspect &1 )
