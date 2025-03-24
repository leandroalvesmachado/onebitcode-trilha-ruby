require 'active_record'

# 01 - Configuração do BD

ActiveRecord::Base.establish_connection(
    adapter: 'postgresql',
    host: 'localhost',
    username: 'postgres',
    password: '1q2w3e4r',
    database: 'fliperama'
)

# 02 - Criação de uma tabela
ActiveRecord::Schema.define do
    create_table :users do |t|
        t.string :nome
        t.string :email
    end
end

# 03 - Definição de um Modelo
class User < ActiveRecord::Base
end

user = User.new(nome: 'Fulano', email: 'fulano@email.com')
user.save

# 04 - Recuperando os dados
users = User.all # select * from users
users.each do |user|
    puts "Nome: #{user.nome}, E-mail: #{user.email}"
end