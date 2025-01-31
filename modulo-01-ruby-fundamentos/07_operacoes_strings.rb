name = "De Dolta para o Futuro"

description1 = "O filme trata de uma viagem no tempo"
description2 = <<Text
  O #{name} é simplesmente uma simulação de texto da indústria tipográfica e de
  impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma
  bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos.
Text

# 1 - Indexação
puts "1 - Indexação"
puts description1[0] # Retorna o primeiro caractere da string
puts description1[-1] # Retorna o último caractere da string
puts description1[0, 4] # Retorna uma substring a partir do índice 0, com 4 caracteres 'O fi'
puts description1[0..4] # Retorna uma substring do índice 0 ao 4 (inclusive) 'O fil'
puts description1.slice(0) # Retorna o caractere no índice 0
puts description1.slice(0, 4) # Retorna uma substring iniciando no índice 0 com 4 caracteres

# 2 - Quebrando uma string
puts "\n"
puts "2 - Quebrando uma string"
puts description1.split() # Divide a string em palavras (por padrão, usa espaços)
puts description1.split("uma") # Divide a string usando "uma" como delimitador

# 3 - Quebrando em caracteres
puts "\n"
puts "3 - Quebrando em caracteres"
string1 = "Ruby"
puts string1.chars # ["R", "u", "b", "y"]

# 4 - Conta ocorrência de caracteres
puts "\n"
puts "4 - Conta ocorrência de caracteres"
puts description1.count("a") # Conta todas as ocorrências da letra "a"

# 5 - Maiúsculas e Minúsculas
puts "\n"
puts "5 - Maiúsculas e Minúsculas"
string2 = "Ruby on Rails"
puts string2.upcase     # Converte tudo para maiúsculas - RUBY ON RAILS
puts string2.downcase   # Converte tudo para minúsculas - ruby on rails
puts string2.capitalize # Apenas a primeira letra maiúscula, o restante minúsculas - Ruby on rails
puts string2.swapcase   # Inverte maiúsculas e minúsculas - rUBY ON rAILS
puts string2.chop # Remove o último caractere da string - Ruby On Rail

# 6 - Verifica o índice
puts "\n"
puts "6 - Verifica o índice"
# Se a substring não for encontrada, o método retorna nil
puts description1.index("filme") # retorna a posição (índice) da primeira ocorrência da substring dentro da string principal

# 7 - Alterar palavras
puts "\n"
puts "7 - Alterar palavras"
puts name.gsub("Futuro", "Passado") # O método .gsub em Ruby substitui todas as ocorrências de uma substring - De Dolta para o Passado

# 8 - Outras operações
puts "\n"
puts "8 - Outras operações"

# O método .center(n, pad_string) em Ruby alinha o texto no centro de uma string, preenchendo o espaço restante
# com a string de preenchimento (pad_string) até atingir o comprimento total especificado (n)
puts "Ruby".center(10, "-") # ---Ruby---

puts "=" * 5 # =====
puts "ABC" * 3  # ABCABCABC

# O método .include?("filme") verifica se a palavra "filme" está presente dentro da string
puts description1.include?("filme") # true

puts "    Ruby".lstrip   # Remove os espaços à esquerda - "Ruby"
puts "Ruby    ".rstrip  # Remove os espaços à direita - "Ruby"
puts "    Ruby    ".strip   # Remove os espaços à esquerda e à direita - "Ruby"
