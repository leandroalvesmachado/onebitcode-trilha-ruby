# Diferença do "w" (que executa uma vez e sobescreve)
# e do "a" (que vai adicionando os conteúdos abaixo)

# Alternativa 1
# puts "Alternativa 1"
# w (write) = zera o arquivo e escreve
File.open("data/courses.txt", "w") do |file|
  file.puts "Criando arquivo de texto"
  file.write "Hello World" # não tem quebra de linha o write (\n)
  file.puts "Olá mundo"
end

# Alternativa 2
# puts "Alternativa 2"
# a (append) = vai adicionando o texto no final do arquivo
File.open("data/courses.txt", "a") do |file|
  puts "Qual curso você deseja fazer?"
  course = gets.chomp
  file.puts course
end