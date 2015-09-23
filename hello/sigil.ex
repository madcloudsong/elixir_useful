defmodule Sigil do
  @moduledoc false
  
end


regex = ~r/foo|bar/
IO.inspect "foo" =~ regex

IO.inspect  "HELLO" =~ ~r/hello/i

IO.inspect  ~s(this is a string with "quotes")

IO.inspect ~c(this is a string with "quotes")

IO.inspect ~w(foo bar bat)















