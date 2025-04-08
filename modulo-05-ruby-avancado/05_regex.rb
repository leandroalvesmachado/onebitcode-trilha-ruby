# \d: Corresponde a qualquer dígito de 0 a 9.
# \D: Corresponde a qualquer caractere que não seja um dígito.
# \w: Corresponde a qualquer caractere alfanumérico (letras, dígitos e sublinhados).
# \W: Corresponde a qualquer caractere que não seja alfanumérico.
# \s: Corresponde a qualquer caractere de espaço em branco, como espaço, tabulação, nova linha, entre outros.
# \S: Corresponde a qualquer caractere que não seja espaço em branco.
# \b: Corresponde a uma fronteira de palavra.
# \B: Corresponde a qualquer posição que não seja uma fronteira de palavra.
# \A: Corresponde ao início da string.
# \Z: Corresponde ao final da string, ou ao final da linha se a opção multiline estiver habilitada.

# Utilizando Regexp
p /T/.class # Regexp

# Busca padrão em texto
phrase = "A linguagem Ruby é divertida!"

p phrase.include?("leg") # Verifica se a string "leg" está contida dentro de phrase. (false)
p phrase.start_with?("A") # Verifica se a string começa com "A". (true)
p phrase.end_with?("divertida!") # Verifica se a string termina com "divertida!". (true)

# O operador =~ retorna o índice da primeira ocorrência do padrão na string,
# ou `nil` se o padrão não for encontrado.

# Exemplo 1: Procura a letra "R" maiúscula
# Se a string não contiver "R", o retorno será nil
p phrase =~ /R/  # => nil (se "R" maiúsculo não estiver presente)

# Exemplo 2: Procura a primeira ocorrência da letra "a" minúscula
# Retorna o índice da primeira vez que "a" aparece na string
p phrase =~ /a/  # => ex: 3

# Exemplo 3: Procura o caractere de exclamação "!"
# Retorna o índice onde "!" aparece, geralmente no final da frase
p phrase =~ /!/  # => ex: 42

# Exemplo 4: Procura a substring "gua"
# Se encontrada, retorna o índice do início da substring
# Caso contrário, retorna nil
p phrase =~ /gua/  # => nil ou índice, dependendo do conteúdo de `phrase`

# Exemplo com condicional usando expressão regular
string = "Olá, world!"
pattern = /mundo/

# Verifica se o padrão "mundo" está presente na string
# Como "mundo" não está em "Olá, world!", a condição será falsa
if string =~ pattern
  puts "A string contém 'mundo'."
else
  puts "A string não contém 'mundo'."  # => Este será o output
end