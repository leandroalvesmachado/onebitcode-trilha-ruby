i = 0

while i < 5
  puts i
  i += 1
end

puts 'Digite o nome do filme:'
movie_name = gets.chomp
qtd_rating = 0
total_rating = 0
rating = 0
average = 0

while rating != -1
  puts 'Informa a nota do filme:'
  rating = gets.chomp.to_f

  if rating != -1
    total_rating += rating
    qtd_rating += 1
    average = total_rating / qtd_rating
  end
end

puts "Média das avaliações do filme #{movie_name} é %.2f" %average