defmodule Base do
    @moduledoc false
    IO.puts "hello"
    IO.puts 10 / 2 #5.0
    IO.puts div 10,2 #5
    IO.puts rem 10,3 #1
    IO.puts 0b1010 #10
    IO.puts 0o777 #511
    IO.puts 0x1F #31

    IO.puts is_boolean(true)
    IO.puts true == :true  #true
    IO.puts is_atom(false) #true
    IO.puts "hello \n #{:world}"
    IO.puts IO.puts 1 #ok
    IO.puts String.length("hello")

    IO.puts "********************* "
    IO.puts "function "
    add = fn a,b -> a + b end
    IO.puts is_function(add)
    IO.puts is_function(add, 2)
    IO.puts add.(1, 2)
    IO.puts length [1, 2, 3]
    IO.puts hd([1, 2])

    IO.puts "********************* "
    IO.puts "tuple "
    tuple = {:ok, "hello", "tuple"}
    IO.puts elem(tuple, 1)
    IO.puts tuple_size(tuple)
    tuple2 = put_elem(tuple, 1, "world")
    IO.puts elem(tuple, 1)
    IO.puts elem(tuple2, 1)

    IO.puts "********************* "
    IO.puts "operator "
    IO.puts "hello" <> " world"
    IO.puts true and 1
    IO.puts false or 2
    IO.puts false and 2

end