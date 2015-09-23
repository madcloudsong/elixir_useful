defmodule PrintTri do
  @moduledoc false
  def fun1(x) when x > 1 do
    IO.write "*"
    fun1(x - 1)
  end

  def fun1(x) when x <= 1 do
    IO.puts "*"
  end

end

1..10 |> Enum.each &(PrintTri.fun1 &1)

for n <- 1..10, do: PrintTri.fun1 n

for i <- 1..10, j <- 1..10, j <= i, do: (if j != i, do: (IO.write "*"),else: (IO.puts "*"))








