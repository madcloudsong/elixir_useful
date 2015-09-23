defmodule Proc do
  @moduledoc false

end


pid = spawn fn -> 1+2 end

Process.alive?(pid)

Process.alive?(self())


send self(), {:hello, self()}

receive do
  {:hello, pid} -> IO.puts "got hello from #{inspect pid}"
  {:world, msg} -> IO.puts "wont match #{msg}"
after
  1_000 -> IO.puts "nothing after 1s"
end


#spawn_link fn -> raise "oops" end

#receive do
#  :hello -> "let's wait until the process fails"
#end


