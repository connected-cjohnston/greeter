defmodule Greeter do

  def greet(name) do
    "Hello " <> String.capitalize(String.trim(name))
  end
end
