defmodule MovementsTest do
  use ExUnit.Case
  doctest Movements

  alias Movements.Vector
  import Vector, only: :functions

  test "Vectors can be added" do

    position = vec(1, 1)
    speed = vec(5, 3)

    result = add(position, speed)

    assert result == vec(6, 4)
  end
end
