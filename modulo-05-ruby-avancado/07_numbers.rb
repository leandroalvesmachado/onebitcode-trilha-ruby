# 1: /\d+/: Esta expressão regular corresponde a um ou mais dígitos numéricos de 0 a 9.
# Ela encontra qualquer sequência contínua de números inteiros positivos.

# 2: /-?\d+/: Esta expressão regular corresponde a um sinal de menos opcional
# seguido por um ou mais dígitos numéricos — útil para capturar números inteiros negativos também.

# ----------------------------------------------------------------------

# 1 - Extraindo números inteiros e decimais de uma string usando o método scan.
string = "A temperatura é 25 graus Celsius e o preço é R$ 19.99."

# Captura inteiros (positivos ou negativos, se houver)
numeros_inteiros = string.scan(/-?\d+/)

# Captura números decimais (com ponto)
numeros_decimais = string.scan(/-?\d+\.\d+/)

# Mostra os números encontrados
puts "Números inteiros encontrados: #{numeros_inteiros.join(', ')}"
# Saída esperada: Números inteiros encontrados: 25, 19, 99

puts "Números decimais encontrados: #{numeros_decimais.join(', ')}"
# Saída esperada: Números decimais encontrados: 19.99

# ----------------------------------------------------------------------

# 2 - Extraindo e somando todos os números inteiros de uma string usando o método scan.
string = "Eu tenho 3 maçãs, 2 laranjas e 5 bananas em minha cesta."

# Extrai os números como strings e converte cada um para inteiro com map(&:to_i)
numeros = string.scan(/\d+/).map(&:to_i)

# Soma todos os números extraídos
soma = numeros.sum

# Mostra os resultados
puts "Os números encontrados são: #{numeros.join(', ')}"
# Saída esperada: Os números encontrados são: 3, 2, 5

puts "A soma de todos os números é: #{soma}"
# Saída esperada: A soma de todos os números é: 10
