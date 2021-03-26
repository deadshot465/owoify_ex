defmodule OwoifyExTest do
  use ExUnit.Case
  # doctest OwoifyEx

  test "owoify with owo level" do
    result = OwoifyEx.owoify("This is the string to owo! Kinda cute isn't it?")
    IO.puts(result)
    assert String.length(result) > 0
  end

  test "owoify with uwu level" do
    result = OwoifyEx.owoify("This is the string to owo! Kinda cute isn't it?", "uwu")
    IO.puts(result)
    assert String.length(result) > 0
  end

  test "owoify with uvu level" do
    result = OwoifyEx.owoify("This is the string to owo! Kinda cute isn't it?", "uvu")
    IO.puts(result)
    assert String.length(result) > 0
  end
end
