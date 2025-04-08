# Uso do método scan para encontrar todas as ocorrências de um padrão em uma string.
string = "A linguagem Ruby é poderosa e versátil. Ruby é divertida de aprender."

# Define o padrão a ser procurado, no caso, a palavra "Ruby"
padrao = /Ruby/

# O método scan retorna todas as ocorrências do padrão dentro da string como um array
resultados = string.scan(padrao)

# Exibe a quantidade de vezes que "Ruby" aparece na string
puts "O padrão 'Ruby' foi encontrado #{resultados.length} vezes na string." # O padrão 'Ruby' foi encontrado 2 vezes na string.

# Exibe todas as ocorrências encontradas, separadas por vírgula
puts "As ocorrências encontradas foram: #{resultados.join(', ')}" # As ocorrências encontradas foram: Ruby, Ruby

# --------------------------------------------

# Extraindo todos os números inteiros de uma string usando o método scan.
string = "A OpenAI lançou o GPT-3 em 2020 e o GPT-4 em 2022."

# O padrão /\d+/ busca por um ou mais dígitos (números inteiros)
numeros = string.scan(/\d+/) # Obs: aqui não precisa escapar a barra invertida com `\\`, apenas `/\d+/` já funciona

# Exibe todos os números encontrados, separados por vírgula
puts "Os números inteiros encontrados na string são: #{numeros.join(', ')}" # Os números inteiros encontrados na string são: 3, 2020, 4, 2022
