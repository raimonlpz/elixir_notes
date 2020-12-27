defmodule Factorial do
  def of(0), do: 1
  def of(n) when is_integer(n) and n > 0 do
    n * of(n - 1)
  end
end

defmodule SumFirst do
  def of(0), do: 0
  def of(n), do: n + of(n - 1)
end

defmodule ListLength do
  def of(0), do: 0
  def of(n), do: (
    if(length(n) == 0) do
      of(0)
    else
      length(n) + of(List.delete_at(n, length(n)-1))
    end
  )
end


defmodule GCD do
  def of(x, 0), do: x
  def of(x, y), do: of(y, rem(x,y))
end
