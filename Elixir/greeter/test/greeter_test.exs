# Greeter

# Before you start:
# Try not to read ahead.
# Do one task at a time. The trick is to learn to work incrementally.

# This kata demonstrates the problems of static scoped functions and objects.
# All tests should always pass, regardless of environment conditions.

# 1. Write a `Greeter` class with `greet` function that receives a `name`
#    as input and outputs `Hello <name>`.
#    You are allowed to construct `Greeter` object as you please.
# 2. `greet` trims the input
# 3. `greet` capitalizes the first letter of the name
# 4. `greet` returns `Good morning <name>` when the time is 06:00-12:00
# 5. `greet` returns `Good evening <name>` when the time is 18:00-22:00
# 6. `greet` returns `Good night <name>` when the time is 22:00-06:00

defmodule GreeterTest do
  use ExUnit.Case
  doctest Greeter

  test "should return Hello Bilbo" do
    assert Greeter.greet("Bilbo") == "Hello Bilbo"
  end

  test "should return Hello Frodo" do
    assert Greeter.greet("Frodo") == "Hello Frodo"
  end

  test "should trim spaces before and after the name" do
    assert Greeter.greet("    Merry  ") == "Hello Merry"
  end

  test "should capitalize the first character" do
    assert Greeter.greet("pippin") == "Hello Pippin"
  end

  test "should return Good morning when it is morning" do
    time = ~T[08:00:00.00]
    assert Greeter.greet("Sam", time) == "Good morning Sam"
  end

  test "should return Good evening when it is evening" do
    time = ~T[20:00:00]
    assert Greeter.greet("Gandalf", time) == "Good evening Gandalf"
  end

  test "should return Good night when between 10pm and midnight" do
    time = ~T[23:00:00]
    assert Greeter.greet("Elrond", time) == "Good night Elrond"
  end

  test "should return Good night when between midnight and 6am" do
    time = ~T[04:00:00]
    assert Greeter.greet("Arwen", time) == "Good night Arwen"
  end
end
