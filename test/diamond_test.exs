defmodule DiamondTest do
  use ExUnit.Case

  # @tag :pending
  test "letter A" do
    shape = Diamond.build_shape(?A)
    assert shape == "A\n"
  end

  @tag :pending
  test "letter B" do
    shape = Diamond.build_shape(?B)

    assert shape == """
            A\s
           B B
            A\s
           """
  end


  @tag :pending
  test "letter C" do
    shape = Diamond.build_shape(?C)

    assert shape == """
           \s A \s
           \sB B\s
           C   C
           \sB B\s
           \s A \s
           """
  end

  @tag :pending
  test "letter J" do
    shape = Diamond.build_shape(?J)

    assert shape == """
           \s        A        \s
           \s       B B       \s
           \s      C   C      \s
           \s     D     D     \s
           \s    E       E    \s
           \s   F         F   \s
           \s  G           G  \s
           \s H             H \s
           \sI               I\s
           J                 J
           \sI               I\s
           \s H             H \s
           \s  G           G  \s
           \s   F         F   \s
           \s    E       E    \s
           \s     D     D     \s
           \s      C   C      \s
           \s       B B       \s
           \s        A        \s
           """
  end
end