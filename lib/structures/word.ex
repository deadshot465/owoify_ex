defmodule Word do
  @moduledoc false

  defstruct [
    :word,
    :replaced_words
  ]

  @type word :: String.t()
  @type replaced_words :: [String.t()]

  @type t :: %__MODULE__{
          word: word,
          replaced_words: replaced_words
        }

  @spec search_value_contains_replaced_words(Word.t(), Regex.t(), String.t()) :: boolean()
  defp search_value_contains_replaced_words(%__MODULE__{} = w, search_value, replace_value) do
    Enum.any?(w.replaced_words, fn word ->
      if Regex.match?(search_value, word) do
        match_result =
          Regex.run(search_value, word)
          |> Enum.at(0)
          |> String.replace(word, replace_value)

        match_result == replace_value
      else
        false
      end
    end)
  end

  @spec new(String.t()) :: Word.t()
  def new(str) do
    %__MODULE__{
      word: str,
      replaced_words: []
    }
  end

  @spec to_string(Word.t()) :: String.t()
  def to_string(%__MODULE__{} = w) do
    w.word
  end

  @spec replace(Word.t(), Regex.t(), String.t(), boolean()) :: Word.t()
  def replace(%__MODULE__{} = w, search_value, replace_value, replace_replaced_words \\ false) do
    if !replace_replaced_words &&
         search_value_contains_replaced_words(w, search_value, replace_value) do
      w
    else
      replacing_word =
        if Regex.match?(search_value, w.word) do
          String.replace(w.word, search_value, replace_value)
        else
          w.word
        end

      collection = Regex.scan(search_value, w.word) |> Enum.to_list() |> List.flatten()

      replaced_words =
        if !Enum.empty?(collection) do
          Enum.map(collection, fn x -> String.replace(x, x, replace_value) end)
        else
          []
        end

      new_replaced_words =
        if replacing_word != w.word do
          (w.replaced_words ++ replaced_words)
          |> Enum.uniq_by(fn x -> x end)
        else
          w.replaced_words
        end

      new_word =
        if replacing_word != w.word do
          replacing_word
        else
          w.word
        end

      %__MODULE__{
        word: new_word,
        replaced_words: new_replaced_words
      }
    end
  end

  @spec replace_with_func_single(Word.t(), Regex.t(), (() -> String.t()), boolean()) :: Word.t()
  def replace_with_func_single(
        %__MODULE__{} = w,
        search_value,
        func,
        replace_replaced_words \\ false
      ) do
    replace_value = func.()

    if !replace_replaced_words &&
         search_value_contains_replaced_words(w, search_value, replace_value) do
      w
    else
      replacing_word =
        if Regex.match?(search_value, w.word) do
          match = Regex.run(search_value, w.word) |> Enum.at(0)
          String.replace(w.word, match, replace_value)
        else
          w.word
        end

      collection = Regex.scan(search_value, w.word) |> Enum.to_list() |> List.flatten()

      replaced_words =
        if !Enum.empty?(collection) do
          Enum.map(collection, fn x -> String.replace(x, x, replace_value) end)
        else
          []
        end

      new_replaced_words =
        if replacing_word != w.word do
          (w.replaced_words ++ replaced_words)
          |> Enum.uniq_by(fn x -> x end)
        else
          w.replaced_words
        end

      new_word =
        if replacing_word != w.word do
          replacing_word
        else
          w.word
        end

      %__MODULE__{
        word: new_word,
        replaced_words: new_replaced_words
      }
    end
  end

  @spec replace_with_func_multiple(
          Word.t(),
          Regex.t(),
          (String.t(), String.t() -> String.t()),
          false
        ) :: Word.t()
  def replace_with_func_multiple(
        %__MODULE__{} = w,
        search_value,
        func,
        replace_replaced_words \\ false
      ) do
    if !Regex.match?(search_value, w.word) do
      w
    else
      word = w.word
      captures = Regex.run(search_value, word) |> Enum.to_list()
      replace_value = func.(Enum.at(captures, 1), Enum.at(captures, 2))

      if !replace_replaced_words &&
           search_value_contains_replaced_words(w, search_value, replace_value) do
        w
      else
        replacing_word = String.replace(w.word, Enum.at(captures, 0), replace_value)
        collection = Regex.scan(search_value, w.word) |> Enum.to_list() |> List.flatten()

        replaced_words =
          if !Enum.empty?(collection) do
            Enum.map(collection, fn x -> String.replace(x, x, replace_value) end)
          else
            []
          end

        new_replaced_words =
          if replacing_word != w.word do
            (w.replaced_words ++ replaced_words)
            |> Enum.uniq_by(fn x -> x end)
          else
            w.replaced_words
          end

        new_words =
          if replacing_word != w.word do
            replacing_word
          else
            w.word
          end

        %__MODULE__{
          word: new_words,
          replaced_words: new_replaced_words
        }
      end
    end
  end
end
