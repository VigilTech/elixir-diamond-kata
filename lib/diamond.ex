defmodule Diamond do
  require Logger
  # Resolve exceptions
  def build_shape(?A), do: "A\n"
  def build_shape(?B) do
    number = ?B - ?A
  shape = add_spacing(number)
    |> Enum.map(&List.duplicate(?\s, &1))
    |> intersperce(letters(?B))
    |> List.flatten
    |> Enum.chunk(number * 2 + 1)
    |> Enum.join("\n")
    |> (&(&1 <> "\n")).()
    
    shape = String.slice(" "<>shape, 1..12)

  end
 # Resolve another all 
  def build_shape(letter) do
    number = letter - ?A
    add_spacing(number)
    |> Enum.map(&List.duplicate(?\s, &1))
    |> intersperce(letters(letter))
    |> List.flatten
    |> Enum.chunk(number * 2 + 1)
    |> Enum.join("\n")
    |> (&(&1 <> "\n")).()
  end


  defp add_spacing(num) do
    max  = num + num - 1
    list = 1..max |> Enum.take_every(2)
    intersperced = list
    |> Enum.reverse
    |> intersperce(list)

    mirror_list([num] ++ intersperced, 1)
  end

  defp letters(char) do
    dup_letters = ?B..char-1 |> Enum.to_list
    dups = intersperce(dup_letters, dup_letters)
    mirror_list([?A] ++ dups ++ [char])
  end

  defp mirror_list(list, drop_last \\ 0) do
    list ++ (list |> Enum.reverse |> Enum.drop(drop_last))
  end

  defp intersperce(list1, list2, combined \\ [])
  defp intersperce([], [], combined), do: combined |> Enum.reverse
  defp intersperce([], list2, combined) do
    intersperce(list2, [], combined)
  end
  defp intersperce([h1 | t1], [], combined) do
    intersperce(t1, [], [h1 | combined])
  end
  defp intersperce([h1 | t1], [h2 | t2], combined) do
    intersperce(t1, t2, [h2, h1 | combined])
  end

end