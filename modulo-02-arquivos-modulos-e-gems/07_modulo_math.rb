# Module
puts Math.class

# Lista todos os métodos disponíveis no módulo Math, ordenados alfabeticamente.
puts Math.methods.sort

# Listar apenas os métodos matemáticos do módulo Math
puts Math.singleton_methods.sort

# o método sqrt do módulo Math, que calcula a raiz quadrada de um número
puts Math.sqrt(4) # 2.0

# calcula o seno de um ângulo x, mas o valor precisa estar em radianos
puts Math.sin(90) # 0.8939966636005579

# Se você quiser calcular o seno de 90 graus, deve converter graus para radianos usando Math::PI
puts Math.sin(90 * Math::PI / 180) # 1.0

# Math::PI é uma constante definida no módulo Math, que representa o valor de π (pi)
puts Math::PI

# 1 - Cálculo área de um círculo
def calcular_area(raio)
  return Math::PI * raio**2
end

# 2 - Cálculo perímetro de um círculo
def calcular_perimetro(raio)
  return 2 * Math::PI * raio
end

# 3 - Entrada de Dados
puts "Digite o raio do círculo:"
raio = gets.chomp.to_f

# 4 - Executar a função
area = calcular_area(raio)
perimetro = calcular_perimetro(raio)

# 5 - Exibindo os resultados
puts "Área do círculo com raio #{raio} é #{area.round(2)}" # Área do círculo com raio 2.0 é 12.57
puts "Perímetro do círculo com raio #{raio} é #{perimetro.round(2)}" # Perímetro do círculo com raio 2.0 é 12.57