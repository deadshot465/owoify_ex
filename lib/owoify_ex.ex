defmodule OwoifyEx do
  @moduledoc """
  Turning your worst nightmare into a Hex package. https://codepen.io/newbeetf2/pen/yLLaNPZ
  """

  @spec owoify(String.t(), String.t()) :: String.t()
  @doc """
  The main entry point of `OwoifyEx`.

  ## Examples

      iex> OwoifyEx.owoify("This is the string to owo! Kinda cute isn't it?")
      This is teh stwing two owo! Kinda cute isn't it?

  """
  def owoify(source, level \\ "owo") do
    words =
      Regex.scan(~r/[^\s]+/, source)
      |> Enum.to_list()
      |> List.flatten()
      |> Enum.map(fn x -> Word.new(x) end)

    spaces =
      Regex.scan(~r/\s+/, source)
      |> Enum.to_list()
      |> List.flatten()
      |> Enum.map(fn x -> Word.new(x) end)

    actual_level = String.downcase(level)

    words =
      Enum.map(words, fn word ->
        Enum.reduce(Presets.specific_word_mapping_list(), word, fn f, w -> f.(w) end)
      end)

    words =
      case actual_level do
        "owo" ->
          Enum.map(words, fn word ->
            Enum.reduce(Presets.owo_mapping_list(), word, fn f, w -> f.(w) end)
          end)

        "uwu" ->
          Enum.map(words, fn word ->
            Enum.reduce(Presets.uwu_mapping_list(), word, fn f, w -> f.(w) end)
          end)
          |> Enum.map(fn word ->
            Enum.reduce(Presets.owo_mapping_list(), word, fn f, w -> f.(w) end)
          end)

        "uvu" ->
          Enum.map(words, fn word ->
            Enum.reduce(Presets.uvu_mapping_list(), word, fn f, w -> f.(w) end)
          end)
          |> Enum.map(fn word ->
            Enum.reduce(Presets.uwu_mapping_list(), word, fn f, w -> f.(w) end)
          end)
          |> Enum.map(fn word ->
            Enum.reduce(Presets.owo_mapping_list(), word, fn f, w -> f.(w) end)
          end)

        _ ->
          raise("The specified owoify level is not supported.")
      end

    Utility.interleave_arrays(words, spaces)
    |> Enum.map(&Word.to_string/1)
    |> Enum.join()
    |> String.trim()
  end
end
