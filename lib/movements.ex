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
    def normalize(a) do
      if mag(a) != 0, do: divv(a, mag(a))
    end
  end

  defmodule Object do
    import Vector

    defstruct location: vec(0, 0),
              velocity: vec(0, 0),
              acceleration: vec(0, 0)

    def obj(location, velocity, acc) do
      %Object { location: location,
                velocity: velocity,
                acceleration: acc }
    end

    def obj(location, velocity) do
      %Object { location: location,
                velocity: velocity,
                acceleration: vec(0, 0)}
    end

    def move(obj) do
      add(obj.location,
          add(obj.velocity,
              obj.acceleration))
    end
  end
end
