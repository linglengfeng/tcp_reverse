defmodule TcpReverseTest do
  use ExUnit.Case
  doctest TcpReverse

  test "greets the world" do
    assert TcpReverse.hello() == :world
  end
end
