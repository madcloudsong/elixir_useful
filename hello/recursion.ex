defmodule Recursion do
  @moduledoc false
  def print_multiple_times(msg, n) when n <= 1 do
    IO.puts msg
  end

  def print_multiple_times(msg, n) do
    IO.puts msg
    print_multiple_times(msg, n-1)
  end

  def sum_list([head|tail], accumulator) do
    IO.puts accumulator
      sum_list(tail, head + accumulator)
  end

  def sum_list([], accumulator) do
      accumulator
  end

  def double_each([head|tail]) do
      [head * 2| double_each(tail)]
    end

    def double_each([]) do
      []
    end
end


#Recursion.print_multiple_times("Hello!", 3)

#x = Recursion.sum_list([1, 2, 3, 4], 0) #=> 6
#IO.puts x

x = Recursion.double_each([1, 2, 3])


