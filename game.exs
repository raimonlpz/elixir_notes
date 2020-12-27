defmodule PlayGame do
  def guess(actual, range) do
      min..max = range
      d = div(max, min)
      if(d > actual) do
        "Is it #{d}"
        guess(actual, min..d )
      end
      if (d < actual) do
        "Is it #{d}"
        guess(actual, d..max )
      end
      if (d == actual) do
        IO.puts "You win machine! The Magic number is: #{actual}"
      end
  end
end
