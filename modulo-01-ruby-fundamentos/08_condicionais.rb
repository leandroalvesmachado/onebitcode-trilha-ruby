a = 10
b = 20

if a > b
  puts 'a é maior que b'
else
  puts 'b é maior que a'
end

puts 'Digite o nome do filme:'
name = gets.chomp

puts 'Digite o ano de lançamento do filme:'
year = gets.chomp.to_i

puts 'Digite a nota de classificação do filme:'
classification = gets.chomp.to_f

if classification > 8.0 and year > 2015
  puts "o filme #{name} é bom. Recomendo assisti-lo."
else
  puts "O filme #{name} ainda não atingiu uma boa nota."
end