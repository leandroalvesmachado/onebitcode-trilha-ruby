# Nessa aula vamos aprender a realizar comparações de tempo na linguagem Ruby.

birthday = Time.new(2005, 1, 18) # 18 de janeiro de 2005
summer = Time.new(2020, 5, 21) # 21 de maio de 2020
winter = Time.new(2022, 3, 10) # 10 de março de 2022
independence_day = Time.new(1822, 9, 7) # 7 de setembro de 1822

# Comparações de tempo
puts birthday > independence_day # true (2005 é depois de 1822)
puts summer >= winter # false (2020 não é maior ou igual a 2022)
puts independence_day > winter #false (1822 não é depois de 2022)
puts birthday == winter # false (2005 não é igual a 2022)

# está entre (birthday e winter)
# Verificando se uma data está dentro de um intervalo
puts summer.between?(birthday, winter) # true (2020 está entre 2005 e 2022)

# Notas importantes
# A classe Time em Ruby permite comparar datas naturalmente com operadores (>, <, >=, <=, ==).
# O método .between?(inicio, fim) verifica se o tempo está entre os valores fornecidos.