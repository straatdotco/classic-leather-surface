defmodule LeatherTest do
  use ExUnit.Case
  doctest Leather

  test "greets the world" do
    assert Leather.hello() == :world
  end
end
