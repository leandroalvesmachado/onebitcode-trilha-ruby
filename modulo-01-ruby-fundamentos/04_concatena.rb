puts 'Informe o nome do filme:'
name = gets.chomp

puts 'Informe o ano do filme:'
year_launch = gets.chomp.to_i

puts 'Informe o preço do filme:'
price = gets.chomp.to_f

puts "\n"

# 1-Concatenação e exibição dos valores
puts '1 - Concatenação e exibição dos valores'
puts 'Nome do filme: ' + name
puts 'Ano de lançamento: ' + year_launch.to_s
puts 'Preço do filme: ' + price.to_s
puts "\n\n"

# 2-Utilizando #{}
puts '2 - Utilizando #{}'
puts "Nome do filme: #{name}"
puts "Ano de lançamento: #{year_launch}"
puts "Preço do filme: #{price}"
puts "\n\n"

# 3-Utilizando um único puts
puts '3 - Utilizando um único puts'
puts "Nome do filme: #{name}, Ano de lançamento: #{year_launch}, Preço do filme: #{price}"
puts "Nome do filme: #{name}\nAno de lançamento: #{year_launch}\nPreço do filme: #{price}"
puts "\n\n"

# 4-String Multilinha
puts '4 - String Multilinha'
puts <<~MULTILINE_STRING
  Nome do filme: #{name}
  Ano de lançamento: #{year_launch}
  Preço do filme: #{price}
MULTILINE_STRING