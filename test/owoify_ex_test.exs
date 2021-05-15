defmodule OwoifyExTest do
  use ExUnit.Case
  # doctest OwoifyEx

  @source "This is the string to owo! Kinda cute isn't it?"
  @pokemon_name_list_path "assets/pokemons.txt"
  @war_and_peace_path "assets/war_and_peace_chapter01-20.txt"

  test "owoify with owo level" do
    result = OwoifyEx.owoify(@source)
    assert String.length(result) > 0
    assert result != nil
  end

  test "owoify with uwu level" do
    result = OwoifyEx.owoify(@source, "uwu")
    assert String.length(result) > 0
    assert result != nil
  end

  test "owoify with uvu level" do
    result = OwoifyEx.owoify(@source, "uvu")
    assert String.length(result) > 0
    assert result != nil
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

  test "owoify pokemon names" do
    File.read!(@pokemon_name_list_path)
    |> String.split("\n")
    |> Enum.each(fn name ->
      name_with_owo = OwoifyEx.owoify(name)
      name_with_uwu = OwoifyEx.owoify(name, "uwu")
      name_with_uvu = OwoifyEx.owoify(name, "uvu")
      assert String.length(name_with_owo) != 0
      assert String.length(name_with_uwu) != 0
      assert String.length(name_with_uvu) != 0
      assert name_with_owo != nil
      assert name_with_uwu != nil
      assert name_with_uvu != nil
    end)
  end

  test "owoify long text" do
    text = File.read!(@war_and_peace_path)
    text_with_owo = OwoifyEx.owoify(text)
    text_with_uwu = OwoifyEx.owoify(text, "uwu")
    text_with_uvu = OwoifyEx.owoify(text, "uvu")
    assert String.length(text_with_owo) != 0
    assert String.length(text_with_uwu) != 0
    assert String.length(text_with_uvu) != 0
    assert text_with_owo != nil
    assert text_with_uwu != nil
    assert text_with_uvu != nil
  end
end
