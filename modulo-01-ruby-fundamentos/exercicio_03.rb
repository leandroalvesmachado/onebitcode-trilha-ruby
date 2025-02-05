=begin
  Exercício 03

  Série de Fibonacci

  Escreva um programa que calcule a sequência de Fibonacci de um número. Você deve realizar a
  leitura de dados de uma variável number e depois utilizar uma lógica para conseguir a sequência de fibonacci
  do número.
=end

puts 'Série de Fibonacci'
puts "\n"

puts 'Digite o número:'
number = gets.chomp.to_i

fib = 1
fib_prev = 0

while fib <= number
  puts fib

  # temp = fib
  # fib += fib_prev
  # fib_prev = temp

  # outra forma de atribuir os valores (atribuição paralela)
  fib_prev, fib = fib, fib + fib_prev
end