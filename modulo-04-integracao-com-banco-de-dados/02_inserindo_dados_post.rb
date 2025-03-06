require 'pg'

# 01 - Configurações de conexão do BD
conn = PG.connect(
  dbname: 'fliperama',
  user: 'postgres',
  password: '1q2w3e4r',
  host: 'localhost',
  port: 5432
)

# Array de registros que você deseja inserir na tabela
registros = [
  { name: 'Resident Evil 4', year: 2023, score: 9.5 },
  { name: 'Spider Man 2', year: 2023, score: 9.0 }
]

# Itera sobre o array de registros e insere cada um na tabela 'jogo'
registros.each do |registro|
  name = registro[:name]
  year = registro[:year]
  score = registro[:score]

  # Cria a instrução SQL de inserção
  insert_query = "INSERT INTO jogo (name, year, score) VALUES ('#{name}', #{year}, #{score})"
  # Executa a instrução SQL de inserção
  conn.query(insert_query)
end

puts "Registros inseridos com sucesso!"

# Fecha a conexão com o banco de dados
conn.close