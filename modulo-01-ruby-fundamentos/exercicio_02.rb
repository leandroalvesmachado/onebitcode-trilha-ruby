=begin
  Exercício 02

  Gerador de E-mail

  Escreva um programa em Ruby que leia três variáveis: o primeiro nome (first name), o sobrenome (last name) e a empresa (company).
  Com base nesses valores, o programa deve gerar um endereço de e-mail concatenando as informações. A variável
  que contém o primeiro nome e o sobrenome deve ser separada por um ponto (.), enquanto o sobrenome
  e a empresa devem ser separados pelo símbolo '@'.
=end

puts 'Gerador de E-mail'
puts "\n"

puts 'Informe o nome:'
name = gets.chomp

puts 'Informe o sobrenome:'
lastname = gets.chomp

puts 'Informe a empresa:'
company = gets.chomp

puts "\n"
puts name, lastname, company
puts "\n"

email = ''
email << name.downcase.split.join('.')
email << '.'
email << lastname.downcase.split.join('.')
email << '@'
email << company.downcase.split.join('.')
email << '.com'

puts "\n"
puts email