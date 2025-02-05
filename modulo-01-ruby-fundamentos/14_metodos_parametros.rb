# 1 - Método que recebe dois parâmetros
def full_name(fname, lname)
  puts "Nome completo: #{fname} #{lname}"
end

full_name("Rodrigo", "Macedo")

# 2 - Método que soma dois números
def sum(a, b)
  return a + b
end

puts sum(10, 20)

# 3 - Argumentos default num método
def address(country="Brasil")
  puts "Eu moro no #{country}"
end

address()
address("Portugal")

# 4 - Avaliação do Filme
def rating_movie(qtd_rating)
  puts "Informe o nome do filme:"
  movie_name = gets.chomp
  sum = 0
  for i in 1..qtdRating
      puts "Digite a nota para o filme:"
      note = gets.chomp.to_f
      sum += note
  end
  puts "Média de avaliação do filme #{movie_name} é: #{sum / qtdRating}"
end

puts "Deseja fazer quantas avaliações:"
rating = gets.chomp.to_i

rating_movie(rating)