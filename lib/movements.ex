defmodule Movements do
  defmodule Vector do
    defstruct x: 0, y: 0

    def vec(x, y) do
      %Vector { x: x, y: y }
    end

    def add(%Vector{ x: x1, y: y1 },
            %Vector{ x: x2, y: y2 }) do
      %Vector { x: x1 + x2, y: y2 + y1 }
    end

  end
end
