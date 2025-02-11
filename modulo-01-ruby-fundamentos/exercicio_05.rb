=begin
  Exercício 05

  Frequência de Letra

  Escreva um programa que calcula a frequência de uma letra dado uma determinada palavra ou texto que o usuário 
  vier a digitar nesse programa. Você deve utilizar a estrutura Hash para armazenar os itens (chave e valor), onde a 
  chave represente o caractere e o valor representa a frequência de ocorrência daquele caractere na palavra ou texto.
=end

puts "Frequência de Letra"

def letter_frequency(text)
  chars = ('a'..'z').to_a + ('A'..'Z').to_a
  frequency = {}
  
  text.each_char do |char|
    if chars.include?(char)
      unless frequency.key?(char)
        frequency[char] = 1
      else
        frequency[char] += 1
      end
    end
  end

  return frequency
end

puts "Digite o texto:"
text = gets.chomp

puts letter_frequency(text)