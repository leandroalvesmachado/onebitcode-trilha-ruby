# Alternativa 1 - for
puts 'Alternativa 1 - for'
for i in 1..5
  puts i
end

# Alternativa 2 - each
puts "\n"
puts 'Alternativa 2 - each'
(1..5).each do |i|
  puts i
end

# Iterando valores de um Array
puts "\n"
puts 'Iterando valores de um Array'
movies_list = ['O Máscara', 'Batman', 'Super Mario Bros']

movies_list.each do |movie|
  puts movie
end

# Utilizando o break
puts "\n"
puts 'Utilizando o break'

movies_list.each do |movie|
  break if movie == 'Batman'
  puts movie
end

# Utilizando o next
puts "\n"
puts 'Utilizando o next'

movies_list.each do |movie|
  # pula para a próxima iteração, descartando o valor do O Máscara
  next if movie == 'O Máscara'
  puts movie
end

# 4 - Avaliação do Filme
puts "\n"
puts 'Avaliação do Filme'
puts "Digite o nome do filme"
movieName = gets.chomp

puts "Digite quantas avaliações deseja fazer no filme"
movieRating = gets.chomp.to_i

sum = 0
movieRating.times do
  puts "Digite a nota para o filme"
  note = gets.chomp.to_f
  sum += note
end

average = sum / movieRating
puts "Média de avaliação do filme #{movieName} é %.2f" % average


