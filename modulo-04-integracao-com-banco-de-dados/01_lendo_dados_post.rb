require 'pg'

# 01 - Configurações de conexão do BD
conn = PG.connect(
  dbname: 'fliperama',
  user: 'postgres',
  password: '1q2w3e4r',
  host: 'localhost',
  port: 5432
)

# 02 - Consulta SQL
query = 'SELECT * FROM jogo'

begin
  result = conn.exec(query)

  # Itera as linhas do resultado
  result.each do |row|
    puts "ID: #{row['id']} - Nome: #{row['name']} - Ano: #{row['year']} - Score: #{row['score']}"
  end
ensure
  # Fecha a conexão com o banco de dados
  conn.close if conn
end
