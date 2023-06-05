defmodule ControlFlow do
  defmacro unless(express, do: block) do
    quote do
      if !unquote(express), do: unquote(block)
    end
  end
end
