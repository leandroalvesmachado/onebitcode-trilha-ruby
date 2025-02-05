# 1 - Método para imprimir Hello World
def hello
  puts "Hello World"
end

hello()

# 2 - Método para somar dois números
def sum()
  puts 5 + 4
end

sum()

# 3 - Método para Cadastrar Filme
def create_movie
  puts "Digite o nome do filme:"
  name = gets.chomp

  puts "Digite o ano de lançamento do filme:"
  year_launch = gets.chomp.to_i

  puts "Digite o preço do filme:"
  price = gets.chomp.to_f

  puts "#{name} - #{year_launch} - R$ #{price}"
end

create_movie()
