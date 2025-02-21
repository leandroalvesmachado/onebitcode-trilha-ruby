require "faker" # Importa a biblioteca faker.

puts Faker.class # Mostra a classe do módulo Faker (provavelmente Module).
puts Faker::Name.class # Mostra a classe do Faker::Name (provavelmente Module).
puts Faker::Name.name # Gera um nome completo aleatório.
puts Faker::Name.first_name # Gera um primeiro nome aleatório.
puts Faker::Name.last_name # Gera um sobrenome aleatório.
puts Faker::Music.instrument # Gera o nome de um instrumento musical aleatório.
puts Faker::Sports::Football.player # Gera o nome de um jogador de futebol aleatório.