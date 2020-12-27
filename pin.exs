defmodule Greeter do
  def for(name, greeting) do
    fn
      (^name) -> "#{greeting} #{name}"
      (_) -> "I don't know you!"
    end
  end
end

mr_valiem = Greeter.for("Jose", "Oi!")
IO.puts mr_valiem.("Jose")
IO.puts mr_valiem.("Xavi")
