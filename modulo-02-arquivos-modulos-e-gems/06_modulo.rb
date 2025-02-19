=begin
  São arquivos em ruby que podem conter funções, classes e variáveis

  Módulos podem ser importados usando a palavra reservada "require"

  Os módulos também permitem a reutilização de código

  Decompor uma tarefa complexa em tarefas menores e de fácil solução

  Fazer uso da técnica "dividir para conquistar"

  Evita repetição de código
=end

# Módulo Conversão de Comprimento
# Milhas para Pés
# Milhas para Polegada
# Milhas para Centímetros

module LengthConversions
  def self.miles_to_feet(miles)
    miles * 5280
  end

  def self.miles_to_inches(miles)
    feet = miles_to_feet(miles)
    feet * 12
  end

  def self.miles_to_centimeters(miles)
    inches = miles_to_inches(miles)
    inches * 2.54
  end
end

puts LengthConversions.miles_to_feet(10) # 52800
puts LengthConversions.miles_to_inches(20) # 1267200
puts LengthConversions.miles_to_centimeters(30) # 4828032.0