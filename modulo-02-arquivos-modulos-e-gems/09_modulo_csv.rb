require 'csv'

# O operador << no Ruby é chamado de operador de deslocamento à esquerda (left shift)

# 1 - Escrevendo dados em CSV
CSV.open("data/example.csv", "w") do |csv|
  # adicionando texto ao csv
  csv << ["Nome", "Idade", "Cidade"]
  csv << ["Alice", 25, "São Paulo"]
  csv << ["Bob", 30, "Rio de Janeiro"]
  csv << ["Carol", 28, "Belo Horizonte"]

  # Saída
  # Nome,Idade,Cidade
  # Alice,25,São Paulo
  # Bob,30,Rio de Janeiro
  # Carol,28,Belo Horizonte
end

# 2  - Lendo dados em CSV
CSV.foreach("data/example.csv", headers: true) do |row|
  nome = row["Nome"]
  idade = row["Idade"]
  cidade = row["Cidade"]
  puts "Nome: #{nome}, Idade: #{idade}, Cidade: #{cidade}"

  # Saída
  # Nome: Alice, Idade: 25, Cidade: São Paulo
  # Nome: Bob, Idade: 30, Cidade: Rio de Janeiro
  # Nome: Carol, Idade: 28, Cidade: Belo Horizonte
end