defmodule MovementsTest do
  use ExUnit.Case
  doctest Movements

  alias Movements.Vector

  test "Vectors can be added" do
    import Vector, only: :functions

    position = vec(1, 1)
    speed = vec(5, 3)

    result = add(position, speed)

    assert result == vec(6, 4)
  end
end
