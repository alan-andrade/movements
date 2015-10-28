defmodule Movements do
  defmodule Vector do
    defstruct x: 0, y: 0

    def vec(x, y) do
      %Vector { x: x, y: y }
    end

    def add(a, b) do
      %Vector {
        x: a.x + b.x,
        y: a.y + b.y
      }
    end

    def sub(a, b) do
      %Vector {
        x: a.x - b.x,
        y: a.y - b.y
      }
    end

    def multi(a, b) do
      %Vector {
        x: a.x * b.x,
        y: a.y * b.y
      }
    end

  end
end
