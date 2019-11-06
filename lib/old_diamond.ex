defmodule OldDiamond do
# def forma(letter) do 
#   primeira(letter)
# end
# def primeira(0, letter, forma), do: forma
# def primeira(letter), do: primeira(letter-?A, letter, "")
# def primeira(x, letter, forma) do
#   inicio_linha = linha_comeco(letter-?A, letter)
#   linha  = linha_final(letter-?A, inicio_linha, letter)
#   forma = linha<>"\n"
#   primeira(x-1, letter-1, forma)
# end

# def linha_comeco(0, linha, _), do: linha
# def linha_comeco(x, letter), do: linha_comeco(x, <<letter>>, letter)
# def linha_comeco(x, linha, letter) do
#   linha = " "<>linha<>"_"
#   linha_comeco(x-1, linha, letter)
# end

# def linha_final(0, final, letter), do: final<><<letter>>
# def linha_final(y, final, letter), do: linha_final(y-1, final<>"_", letter)



# def letra(letter) do
#   matriz = construir_coluna(letter-?A)
#   v = letter-?A
#   x = v+1
#   y = v*2
    
#    desenhar(x,y,matriz)
# end
# def  desenhar(_, 1, matriz), do: matriz
# def  desenhar(x,y, matriz) do
#   matriz = put_in matriz[x][y], <<32>>
#   desenhar(x,y-1, matriz )
# end
# def construir_coluna(x), do: construir_coluna(x*2+1, x*2+1, forma=%{})
# def construir_coluna(x, 0, forma), do: forma

# def construir_coluna(x, y, forma) do
#   forma = put_in forma[y], construir_linha(x)
#   construir_coluna(x, y-1, forma)
# end 

# def construir_linha(x), do: construir_linha(x, %{})
# def construir_linha(0, linha), do: linha
# def construir_linha(x, linha) do
#   linha = put_in linha[x],"_"
#   construir_linha(x-1, linha)
# end 


  


  # def sum([], total),              do: total
  # def sum([ head | tail ], total) do
    
  #   Logger.debug("\s #{total} \s") 
  #   Logger.debug("\s#{total} #{total}\s")
  #   Logger.debug("\s #{total} \s") 

  #   sum(tail, headtotal)
  # end

  # def build_shape(1.0, letter), do: Logger.debug("\s #{<<letter>>} \s")
  # def build_shape(2.0, letter) do 
  #   build_shape(1.0, letter-1)
  #   Logger.debug("\s#{<<letter>>} #{<<letter>>}\s")
  #   build_shape(1.0, letter-1)
  # end

  # def sum([], total),              do: total
  # def sum([ head | tail ], total) do
    
  #   Logger.debug("\s #{total} \s") 
  #   Logger.debug("\s#{total} #{total}\s")
  #   Logger.debug("\s #{total} \s") 

  #   sum(tail, headtotal)
  # end
  # def build_shape(?B) do
  #   # formula (2^L)+1
  #   shape =
  #   """
  #    A\s
  #   B B
  #    A\s
  #   """
  #   Logger.debug("\n#{shape}")
  #   shape
  # end
  # def build_shape(?C) do
  #   shape =
  #   """
  #   \s A \s
  #   \sB B\s
  #   C   C
  #   \sB B\s
  #   \s A \s
  #   """
  #   Logger.debug("\n#{shape}")
  #   shape    
  # end
  # def build_shape(?J) do
  #   shape =
  #   """
  #   \s        A        \s
  #   \s       B B       \s
  #   \s      C   C      \s
  #   \s     D     D     \s
  #   \s    E       E    \s
  #   \s   F         F   \s
  #   \s  G           G  \s
  #   \s H             H \s
  #   \sI               I\s
  #   J                 J
  #   \sI               I\s
  #   \s H             H \s
  #   \s  G           G  \s
  #   \s   F         F   \s
  #   \s    E       E    \s
  #   \s     D     D     \s
  #   \s      C   C      \s
  #   \s       B B       \s
  #   \s        A        \s
  #   """  
  #   Logger.debug("\n#{shape}")
  #   shape
  # end
  # def build_shape(_), do: "not valid"
  



end