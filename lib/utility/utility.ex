defmodule Utility do
  @moduledoc false

  @spec interleave_lists(list(), list()) :: list
  def interleave_lists(a, b) do
    interleave([], a, b, 0) |> Enum.reverse()
  end

  defp interleave(result, arr, other, round) do
    if rem(round, 2) == 0 do
      if Enum.empty?(arr) do
        if !Enum.empty?(other) do
          other ++ result
        else
          result
        end
      else
        [head | tail] = arr
        interleave([head | result], tail, other, round + 1)
      end
    else
      if Enum.empty?(other) do
        result
      else
        [head | tail] = other
        interleave([head | result], arr, tail, round + 1)
      end
    end
  end
end
