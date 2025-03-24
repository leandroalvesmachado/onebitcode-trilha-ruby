=begin
  Exercício 1 - Cálculo Data Entrega

  Você foi contratado por uma empresa de logística para ajudar a calcular o tempo estimado de entrega de pacotes.
  A empresa deseja uma função que receba a data de envio e o tempo estimado de entrega em dias úteis e retorne a data estimada de entrega,
  levando em consideração apenas os dias úteis (segunda a sexta-feira).

  Escreva uma função chamada calcular_data_entrega que recebe dois parâmetros: 
  data_envio (no formato "YYYY-MM-DD") e tempo_entrega_dias (um inteiro representando os dias úteis necessários para a entrega).
  A função deve retornar a data estimada de entrega no formato "YYYY-MM-DD", levando em consideração os dias úteis.
=end

require 'date'

def calcular_data_entrega(data_envio, tempo_entrega_dias)
  data = Date.parse(data_envio) # converte para um objeto Date
  dias_uteis = 0

  # data.wday
  # 0: Domingo
  # 1: Segunda-feira
  # 2: Terça-feira
  # 3: Quarta-feira
  # 4: Quinta-feira
  # 5: Sexta-feira
  # 6: Sábado

  while dias_uteis < tempo_entrega_dias
    data += 1
    dias_uteis += 1 unless [0, 6].include?(data.wday) # se n for sábado ou domingo, incrementa
  end

  data.to_s
end

# Exemplo de uso da função
data_envio = "2023-11-01"
tempo_entrega_dias = 7
data_estimada_entrega = calcular_data_entrega(data_envio, tempo_entrega_dias)
puts "A data estimada de entrega é: #{data_estimada_entrega}" # A data estimada de entrega é: 2023-11-10