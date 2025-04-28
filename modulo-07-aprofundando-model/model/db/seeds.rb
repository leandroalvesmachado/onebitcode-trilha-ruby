# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'

# Esse código cria 10 registros de Product, com o nome variando de "Produto 1" a "Produto 10"
# 10.times do |i|
#   Product.create(name: "Produto #{i + 1}")
# end

# Criação de 10 produtos de exemplo com valores aleatórios
10.times do
  Product.create(
    name: Faker::Commerce.product_name, # Utiliza a gem Faker para gerar um nome aleatório de produto no estilo de comércio (ex: "Amazing Wooden Chair")
    # Adicione outros atributos aleatórios, se necessário
  )
end

s1 = Student.create(name: "Fulano")
t1 = Teacher.create(name: "Sicrano")

# Criar alguns usuários
user1 = User.create(username: 'user1', email: 'user1@example.com')
user2 = User.create(username: 'user2', email: 'user2@example.com')

# Criar um artigo
article = user1.articles.create(title: 'Meu primeiro artigo', content: 'Conteúdo do artigo.', category: 'Tecnologia')

# Comentários no artigo
comment1 = article.comments.create(user: user2, content: 'Ótimo artigo!')
comment2 = article.comments.create(user: user1, content: 'Gostei do conteúdo.')