# Dados do Filme
name1 = "De Dolta para o Futuro"
name2 = "de voltara para o futuro"

# Ruby é case sensitive
puts name1 == name2 # false

# String multilinha
puts "\n"
description1 = "O filme trata de uma viagem no tempo"
description2 = <<Text
  O #{name1} é simplesmente uma simulação de texto da indústria tipográfica e de
  impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma
  bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos.
Text

puts description2

# Tamanho da String
puts "\n"
puts description2.length # 269
puts description2.size # 269