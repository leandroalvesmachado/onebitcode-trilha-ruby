require 'pg'

# 01 - Configurações de conexão do BD
conn = PG.connect(
  dbname: 'fliperama',
  user: 'postgres',
  password: '1q2w3e4r',
  host: 'localhost',
  port: 5432
)

id_registro = 1

# 01 - Novos valores para o jogo
new_name = 'Mortal Kombat 1'
new_year = 2025
new_score = 9.6

# 02 - Criar a instrução SQL de atualização
update_query = "UPDATE jogo set name = '#{new_name}', year = #{new_year}, score = #{new_score} WHERE id = #{id_registro}"

# Executa a instrução SQL de atualização
conn.query(update_query)

puts "Registro atualizado com sucesso!"

# Fecha a conexão com o banco de dados
conn.close