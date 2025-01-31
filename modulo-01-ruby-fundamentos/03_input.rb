puts 'Informe o nome do filme:'
name = gets.chomp # ler uma entrada do usuário e retorna sempre uma string (String)
puts name.class # String
print "\n"

puts 'Informe o ano do filme:'
year_launch = gets.chomp.to_i # ler uma entrada do usuário, remover quebras de linha e converter o valor para um número inteiro (Integer)
puts year_launch.class # Integer
print "\n"

puts 'Informe o preço do filme:'
price = gets.chomp.to_f # ler uma entrada do usuário, remover a quebra de linha e convertê-la para um número decimal (Float)
puts price.class # Float