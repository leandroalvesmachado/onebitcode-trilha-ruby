movie = {:name => "Super Mario", :year => 2023}

# 1 - Métodos úteis
puts "1 - Métodos úteis"
puts movie.size      # => 2 (Número de pares chave-valor)
puts movie.length    # => 2 (Equivalente a size)
puts movie.to_a      # => [[:name, "Super Mario"], [:year, 2023]], Converte o hash em um array de pares
puts movie.min       # => [:name, "Super Mario"] (Menor chave em ordem alfabética), Retorna o menor par chave-valor baseado na ordem das chaves
puts movie.max       # => [:year, 2023] (Maior chave em ordem alfabética), Retorna o maior par chave-valor baseado na ordem das chaves
puts movie.fetch(:name) # => "Super Mario" (Obtém o valor da chave :name)

# 2 - Adiciona novo item
puts "\n"
puts "2 - Adiciona novo item"
movie.store(:genre, "Aventura")
movie.store(:rating, 5.9)

puts movie # {:name=>"Super Mario", :year=>2023, :genre=>"Aventura", :rating=>5.9}

# 3 - Exclui uma chave
puts "\n"
puts "3 - Exclui uma chave"
movie.delete(:rating)

puts movie # {:name=>"Super Mario", :year=>2023, :genre=>"Aventura"}

# 4 - Limpar itens do Hash
puts "\n"
puts "4 - Limpar itens do Hash"
movie.clear()

puts movie # {}