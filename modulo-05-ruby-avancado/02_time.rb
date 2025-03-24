puts Time.new         # Retorna a data e hora atual
puts Time.now         # Equivalente a Time.new

# Criando objetos de tempo com diferentes níveis de especificidade
puts Time.new(2023)               # Apenas o ano
puts Time.new(2023, 5)            # Ano e mês
puts Time.new(2023, 5, 12)        # Ano, mês e dia
puts Time.new(2023, 5, 12, 18)    # Inclui hora
puts Time.new(2023, 5, 12, 18, 43) # Inclui minutos
puts Time.new(2023, 5, 12, 18, 43, 51) # Inclui segundos

puts "\nDetalhes de uma data específica:"
some_time = Time.new(2023, 5, 12, 18, 43, 51)
puts "Ano: #{some_time.year}"
puts "Mês: #{some_time.month}"
puts "Dia: #{some_time.day}"
puts "Hora: #{some_time.hour}"
puts "Minuto: #{some_time.min}"
puts "Segundo: #{some_time.sec}"
puts "Dia do mês: #{some_time.mday}" # Igual a some_time.day
puts "Dia do ano: #{some_time.yday}" # Dia do ano (1 a 365 ou 366)
puts "Dia da semana (0=Domingo): #{some_time.wday}"
puts "É segunda-feira? #{some_time.monday?}"
puts "É sexta-feira? #{some_time.friday?}"

# Adição e Subtração de Tempo
puts "\nManipulação de Datas:"
start_of_year = Time.new(2024, 1, 1)
puts "Início do ano: #{start_of_year}"

# Adicionando tempo (60 segundos * 60 minutos * 24 horas * X dias)
puts "Após 30 dias: #{start_of_year + (60 * 60 * 24 * 30)}"
puts "Após 45 dias: #{start_of_year + (60 * 60 * 24 * 45)}"
