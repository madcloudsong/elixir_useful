defmodule Compre do
  @moduledoc false
  
end


r =  for n <- [1, 2, 3, 4], do: n*n
IO.inspect r

values = [good: 1, good: 2, bad: 3, good: 4]
s = for {:good, n} <- values, do: n * n
IO.inspect s

t = for n <- 1..4, rem(n, 2) == 0, do: n * n
IO.inspect t

u = for n <- 1..5, m <- 1..5, rem(m, 2)==0, do: m * n
IO.inspect u

pixels = <<213, 45, 132, 64, 76, 32, 76, 0, 0, 234, 32, 15>>
v = for <<r::8, g::8, b::8 <- pixels>>, do: {r, g, b}
IO.inspect v

w = for <<c <- " hello world ">>, c != ?\s, into: "", do: <<c>>
IO.inspect w









