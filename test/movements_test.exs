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

  test "multi" do
    a = vec(2, 2)
    b = vec(1, 3)
    assert multi(a, b) == vec(2, 6)
  end
end
