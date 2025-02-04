puts 'Digite o número 1:'
num1 = gets.chomp.to_f

puts 'Digite o número 2:'
num2 = gets.chomp.to_f

puts 'Digite a operação a ser realizada (+ - * /)'
operation = gets.chomp

if operation == '+'
  result = num1 + num2
elsif operation == '-'
  result = num1 - num2
elsif operation == '*'
  result = num1 * num2
elsif operation == '/'
  result = num1 / num2
else
  puts 'Operação inválida'
  result = 0
end

puts "Resultado é #{result}"

# Formatar casas decimais
# Ex: 6.00
puts "Resultado é #{'%.2f' % result}"