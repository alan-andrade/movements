defmodule Movements do
  defmodule Vector do
    defstruct x: 0, y: 0

    def vec(x, y) do
      %Vector { x: x, y: y }
    end

    def add(a, b), do: vec(a.x + b.x, a.y + b.y)
    def sub(a, b), do: vec(a.x - b.x, a.y - b.y)
    def mul(a, n) when is_number(n), do: vec(a.x * n, a.y * n)
    def divv(a, n) when is_number(n), do: vec(a.x / n, a.y / n)
    def mag(a), do: :math.sqrt(a.x * a.x + a.y * a.y)
  end
end
