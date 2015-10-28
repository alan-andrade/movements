defmodule Movements do
  defmodule Vector do
    defstruct x: 0, y: 0

    def vec(x, y) do
      %Vector { x: x, y: y }
    end

    def add(a, b), do: vec(a.x + b.x, a.y + b.y)
    def sub(a, b), do: vec(a.x - b.x, a.y - b.y)
    def mul(a, b), do: vec(a.x * b.x, a.y * b.y)
  end
end
