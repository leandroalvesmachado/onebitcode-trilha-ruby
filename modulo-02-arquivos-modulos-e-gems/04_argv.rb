# 1-Utilizando argumentos
# Passando argumentos
# Ex: ruby 04_argv.rb teste
ARGV.each {|arg| puts arg}
ARGV.each {|arg| puts arg.class}

# 2-Potência de um número
# Passando argumentos
# Ex: ruby 04_argv.rb 2
ARGV.each do |arg|
    square = arg.to_i ** 2
    puts "Raiz quadrada de #{arg} é #{square}"
end

# 3-Salvando conteúdo de argumento em arquivo
# Passando argumentos
# Ex: ruby 04_argv.rb SuperMario
File.open("data/games.txt", "a") do |file|
  ARGV.each do |game|
      file.puts game
  end
end