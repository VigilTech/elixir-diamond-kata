defmodule Diamond do
  require Logger
  def build_shape(?A), do: "A\n" 
  def build_shape(?B) do
    shape =
    """
     A\s
    B B
     A\s
    """
    Logger.debug("\n#{shape}")
    shape
  end
  def build_shape(?C) do
    shape =
    """
    \s A \s
    \sB B\s
    C   C
    \sB B\s
    \s A \s
    """
    Logger.debug("\n#{shape}")
    shape    
  end
  def build_shape(?J) do
    shape =
    """
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
    Logger.debug("\n#{shape}")
    shape
  end
  def build_shape(_), do: "not valid"
end