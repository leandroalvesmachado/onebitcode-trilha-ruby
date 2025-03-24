require 'date'

puts Date.new(1994) # 1994-01-01 (ano)

puts Date.new(1994, 2) # 1994-02-01 (ano, mês)

puts Date.new(1994, 1, 18) # 1994-01-18 (ano, mês, dia)

birthday = Date.new(1994, 1, 29)
puts birthday.class # Date
puts birthday.year # retorna o ano 1994
puts birthday.month # retorna o mês 1
puts birthday.day # retorna o dia 29

# retorna o dia da semana
puts birthday.wday # retornou 6 (Sábado)
# data.wday
# 0: Domingo
# 1: Segunda-feira
# 2: Terça-feira
# 3: Quarta-feira
# 4: Quinta-feira
# 5: Sexta-feira
# 6: Sábado

puts birthday.monday? # false
puts birthday.tuesday? # false
puts birthday.wednesday? # false
puts birthday.thursday? # false
puts birthday.friday? # false
puts birthday.saturday? # true