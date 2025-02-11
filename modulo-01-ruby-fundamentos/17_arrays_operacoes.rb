movies = ["Homem Aranha", "Super Mario", "O Máscara"]

# 1 - Indexação e Atribuição
puts "1 - Indexação e Atribuição"
puts movies[0] # Homem Aranha (retorna o primeiro filme)
puts movies[-1] # O Máscara (retorna o último filme)
puts movies[1, 2] # retorna Super Mario e O Máscara

movies[2] = "Top Gun Maverick"
puts movies # movies = ["Homem Aranha", "Super Mario", "Top Gun Maverick"]

# adicionando valores para o array
movies << "Avatar"
puts movies # movies = ["Homem Aranha", "Super Mario", "Top Gun Maverick", "Avatar"]

# 2 - Métodos úteis
puts "\n"
puts "2 - Métodos úteis"
puts movies.length  # Exibe o número de elementos no array
puts movies.first # Exibe o primeiro elemento do array
puts movies.last  # Exibe o último elemento do array
movies.append("Procurando Nemo")  # Adiciona "Procurando Nemo" ao final do array
puts movies # Exibe o array atualizado
puts movies.sort()  # Exibe o array ordenado alfabeticamente
puts movies.shuffle() # Exibe o array com os elementos embaralhados

# Recuperando índice e valor
puts "\n"
puts "Recuperando índice e valor"
movies.each_with_index{|value, index| puts "#{index}-#{value}"}
