# Verificação de string que começa com 'Olá' e termina com 'mundo' usando âncoras.
# \A representa o início da string, e \z representa o final da string.
# .* permite qualquer conteúdo entre "Olá" e "mundo"

strings = ["Olá, mundo!", "Olá, OBC!", "Ruby é divertido, Olá, mundo!"]

strings.each do |string|
  if string =~ /\AOlá.*mundo\z/
    puts "#{string} corresponde ao padrão."
  else
    puts "#{string} não corresponde ao padrão."
  end
end

# Saída esperada:
# Olá, mundo! corresponde ao padrão.
# Olá, OBC! não corresponde ao padrão.
# Ruby é divertido, Olá, mundo! não corresponde ao padrão.

# ---------------------------------------------------------

# Verificação de string que começa com 'Ruby' e termina com '3.2' usando âncoras.
# ^ representa o início da string e $ representa o final da string.
# .* permite qualquer conteúdo entre "Ruby" e "3.2"

strings = ["Ruby-3.2", "Ruby-2.0", "Ruby-3.0 é poderoso"]

strings.each do |string|
  if string =~ /^Ruby.*3\.2$/
    puts "#{string} corresponde ao padrão."
  else
    puts "#{string} não corresponde ao padrão."
  end
end

# Saída esperada:
# Ruby-3.2 corresponde ao padrão.
# Ruby-2.0 não corresponde ao padrão.
# Ruby-3.0 é poderoso não corresponde ao padrão.
