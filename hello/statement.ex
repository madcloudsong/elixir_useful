defmodule Statement do
    @moduledoc false

    case {1, 2, 3} do
        {4, 5, 6} ->
            IO.puts "do not match"
        {1, x, 3} when x < 0 ->
            IO.puts "match and bind x to 2"
            IO.puts x
        _ ->
            IO.puts "match any value"
    end


    cond do
        2 + 2 == 5 ->
            IO.puts "not true"
        2 * 2 == 3 ->
            IO.puts "nor this"
        1 + 1 == 2 ->
            IO.puts "will true"
    end

    if true, do: (
        a = 10
        IO.puts a
    )


end