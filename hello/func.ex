defmodule Func do
  @moduledoc false
  def sum(a, b) do
    do_sum(a, b)
  end

  defp do_sum(a, b) do
    a + b
  end

end

IO.puts Func.sum(1, 2)
#IO.puts Func.do_sum(1, 2)
fun = &Func.sum/2
IO.puts is_function fun

IO.puts fun.(1, 2)

fun = &(&1 + 1)
IO.puts fun.(1)



