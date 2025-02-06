=begin
  Exercício 04

  Calculadora Matemática

  Desenvolva um programa que simule uma calculadora matemática possuindo as seguintes operações: soma, subtração, multiplicação e divisão.
    1. Os dois números que serão utilizados nas operações devem ser utilizados como entrada de dados no programa.
    2. As operações devem ser definidas utilizando função lambda.
    3. O programa deve ser executado a todo momento e só será fechado a menos que uma tecla específica seja pressionada.
=end

# Criando uma calculadora

sum = lambda do |num1, num2|
  num1 + num2
end

subt = lambda do |num1, num2|
  num1 - num2
end

mult = lambda do |num1, num2|
  num1 * num2
end

div = lambda do |num1, num2|
  num1 / num2
end

def operation(function)
  puts "Digite o número 1:"
  num1 = gets.chomp.to_i

  puts "Digite o número 2:"
  num2 = gets.chomp.to_i

  result = function.call(num1, num2)
  puts "Resultado = #{result}".center(50, "-")
end

begin
  puts "Calculadora"
  puts "a. Soma"
  puts "b. Subtração"
  puts "c. Multiplicação"
  puts "d. Divisão"
  puts "q. Fechar"
  choice = gets.chomp
  case choice
      when "a" then operation sum # operation sum igual a operation(sum)
      when "b" then operation subt
      when "c" then operation mult
      when "d" then operation div
  end
end while choice != "q"