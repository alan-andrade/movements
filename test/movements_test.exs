defmodule MovementsTest do
  use ExUnit.Case
  doctest Movements

  alias Movements.Vector
  import Vector, only: :functions

  test "add" do
    position = vec(1, 1)
    speed = vec(5, 3)
    assert add(position, speed) == vec(6, 4)
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

  test "div" do
    a = vec(2, 4)
    n = 2
    assert divv(a, n) == vec(1, 2)
  end

  test "mag" do
    a = vec(3, 2)
    assert mag(a) == :math.sqrt 9 + 4
  end

end
