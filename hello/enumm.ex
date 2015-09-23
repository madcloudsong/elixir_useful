defmodule Enumm do
  @moduledoc false

end

Enum.map([1, 2, 3], fn x -> x * 2 end)#[2, 4, 6]

Enum.map(%{1 => 2, 3 => 4}, fn {k, v} -> k * v end)#[2, 12]

Enum.map(1..3, fn x -> x * 2 end)#[2, 4, 6]

Enum.reduce(1..3, 0, &+/2)#6

odd? = &(rem(&1, 2) != 0)

1..100_000 |> Enum.map(&(&1 * 3)) |> Enum.filter(odd?) |> Enum.sum

1..100_000 |> Stream.map(&(&1 * 3)) |> Stream.filter(odd?) |> Enum.sum

stream = Stream.cycle([1, 2, 3])

Enum.take(stream, 10)#[1, 2, 3, 1, 2, 3, 1, 2, 3, 1]

stream = Stream.unfold("hełło", &String.next_codepoint/1)

Enum.take(stream, 3)#["h", "e", "ł"]

stream = File.stream!("func.ex")

IO.puts Enum.take(stream, 5)









