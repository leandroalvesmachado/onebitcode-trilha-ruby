# 1 - Alternativa 1
puts "1 - Alternativa 1"
movies = File.open("data/filmes.txt")

puts movies.class # File
puts movies # #<File:0x00007f5f7f4875e8>

movies.each { |line| puts line.strip }

# 2 - Alternativa 2
# Extrai apenas linhas não vazias
puts "\n"
puts "2 - Alternativa 2"

file_path = "data/filmes.txt"

# Lendo arquivo
File.open(file_path, "r") do |file|
    # Lê o arquivo linha por linha, remove linhas vazias e imprime as não vazias
    file.each_line { |line| puts line.strip unless line.strip.empty? }
end

