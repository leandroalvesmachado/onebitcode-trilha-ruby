# Na documentação oficial do Ruby, existe uma seção chamada Miscellaneous Methods — isso significa apenas 
# métodos variados que não se encaixam nas outras seções como leitura, escrita, etc.

# 1. Exemplo de exclusão de caracteres usando expressões regulares

## Lista de strings a serem avaliadas
strings = ["apple", "cd", "cherry", "dt", "grape", "fig"]

# Itera sobre cada string da lista
strings.each do |string|
  # Verifica se a string contém apenas consoantes usando expressão regular
  if string =~ /^[^aeiou]+$/
    # Se corresponder, imprime que a string contém apenas consoantes
    puts "#{string} contém apenas consoantes."
  else
    # Caso contrário, informa que contém vogais ou outros caracteres
    puts "#{string} contém vogais ou outros caracteres."
  end
end

# 2. Uso de sub e gsub para substituir partes de uma string

# String original com duas ocorrências da palavra "Ruby"
string = "A linguagem Ruby é fácil de aprender e Ruby é divertida."

# Usa 'sub' para substituir apenas a **primeira ocorrência** de "Ruby" por "Python"
novo_string_sub = string.sub(/Ruby/, 'Python')

# Usa 'gsub' para substituir **todas as ocorrências** de "Ruby" por "Python"
novo_string_gsub = string.gsub(/Ruby/, 'Python')

# Exibe os resultados
puts "Usando sub:"
puts "String original: #{string}"
puts "String modificada com sub: #{novo_string_sub}"

puts "\nUsando gsub:"
puts "String original: #{string}"
puts "String modificada com gsub: #{novo_string_gsub}"

# sub → substitui apenas a primeira ocorrência da expressão
# gsub → substitui todas as ocorrências


