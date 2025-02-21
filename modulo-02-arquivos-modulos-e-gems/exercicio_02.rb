=begin
  Agenda de Contatos

  Escreva um programa Ruby para lê três variáveis: nome, idade e cidade. A despeito desses valores você deve utilizá-los
  para alimentar uma planilha de contatos e posteriormente, salvar o arquivo com o nome contatos.csv.
=end

require 'csv'

puts "Informe o nome:"
nome = gets.chomp

puts "Informe a idade:"
idade = gets.chomp.to_i

puts "Informe a cidade:"
cidade = gets.chomp

# 2 - Adicionando os dados ao arquivo CSV
CSV.open("data/exercicio02.csv", "a") do |csv|
  csv << [nome, idade, cidade]
end

# 3 - Lendo os dados do arquivo CSV
CSV.foreach("data/exercicio02.csv", headers: true) do |row|
  nome = row["Nome"]
  idade = row["Idade"]
  cidade = row["Cidade"]
  puts "Nome: #{nome}, Idade: #{idade}, Cidade: #{cidade}"
end
