require 'pg'

# 01 - Configurações de conexão do BD
conn = PG.connect(
  dbname: 'fliperama',
  user: 'postgres',
  password: '1q2w3e4r',
  host: 'localhost',
  port: 5432
)

# ID do registro que você deseja excluir
id_registro = 5

# Crie a instrução SQL de exclusão
delete_query = "DELETE FROM jogo WHERE id = #{id_registro}"

# Executa a instrução SQL de exclusão
conn.query(delete_query)

puts "Registro excluído com sucesso!"

# Fecha a conexão com o banco de dados
conn.close