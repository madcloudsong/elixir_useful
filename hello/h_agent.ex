defmodule HAgent do
  @moduledoc false
  
end

{:ok, agent} = Agent.start_link fn -> [] end

IO.inspect Agent.update(agent, &(["eggs"|&1]))

IO.inspect Agent.get(agent, &(&1))




Agent.stop(agent)
