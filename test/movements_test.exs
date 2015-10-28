defmodule MovementsTest do
  use ExUnit.Case
  doctest Movements

  alias Movements.Vector
  import Vector, only: :functions

  test "add" do
    position = vec(1, 1)
    speed = vec(5, 3)

    result = add(position, speed)

    assert result == vec(6, 4)
  end

  test "sub" do
    a = vec(1, 1)
    b = vec(1, 1)
    assert sub(a, b) == vec(0, 0)
  end

  test "mul" do
    a = vec(2, 2)
    n = 3
    assert mul(a, n) == vec(6, 6)
  end
end
