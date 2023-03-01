defmodule Greeter do

  def formattedName(name) do
    String.capitalize(String.trim(name))
  end

  def greet(name) do
    "Hello " <> formattedName(name)
  end

  def greet(name, time) when time.hour >= 6 and time.hour <= 12 do
    "Good morning " <> formattedName(name)
  end

  def greet(name, time) when time.hour >= 18 and time.hour <= 21 do
    "Good evening " <> formattedName(name)
  end

  def greet(name, time) when time.hour >= 22 or time.hour <= 5 do
    "Good night " <> formattedName(name)
  end
end
