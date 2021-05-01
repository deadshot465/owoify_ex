defmodule OwoifyExTest do
  use ExUnit.Case
  # doctest OwoifyEx

  @source "This is the string to owo! Kinda cute isn't it?"

  test "owoify with owo level" do
    result = OwoifyEx.owoify(@source)
    IO.puts(result)
    assert String.length(result) > 0
  end

  test "owoify with uwu level" do
    result = OwoifyEx.owoify(@source, "uwu")
    IO.puts(result)
    assert String.length(result) > 0
  end

  test "owoify with uvu level" do
    result = OwoifyEx.owoify(@source, "uvu")
    IO.puts(result)
    assert String.length(result) > 0
  end

  test "owofied string is not equal to the source string" do
    result = OwoifyEx.owoify(@source)
    assert result != @source
  end

  test "raise error when the specified error is undefined" do
    assert_raise(RuntimeError, fn -> OwoifyEx.owoify(@source, "123") end)
  end

  test "owo is not equal to uwu" do
    assert OwoifyEx.owoify(@source) != OwoifyEx.owoify(@source, "uwu")
  end

  test "owo is not equal to uvu" do
    assert OwoifyEx.owoify(@source) != OwoifyEx.owoify(@source, "uvu")
  end

  test "uwu is not equal to uvu" do
    assert OwoifyEx.owoify(@source, "uwu") != OwoifyEx.owoify(@source, "uvu")
  end
end
