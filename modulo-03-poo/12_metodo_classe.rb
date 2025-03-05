class Game
  attr_accessor :name, :genre, :price # Leitura e Escrita
  attr_reader :multiplayer, :versions

  def initialize(name, genre, multiplayer, versions, price)
    # Variável de Instância
    @name = name
    @genre = genre
    @multiplayer = multiplayer
    @versions = versions
    @price = price
  end

  def to_s
    "#{@name}-#{@genre}-#{@multiplayer}-#{@versions}"
  end

  def technical_sheet
    puts "##Dados do Jogo##"
    puts "Nome do Jogo: #{@name}"
    puts "Gênero do Jogo: #{@genre}"
    puts "Preço do Jogo: #{@price}"
  end

  # Método de classe para calcular o preço com desconto
  def self.discounted_price(price, discounted_percentage)
    price -= (price * (discounted_percentage.to_f / 100))
  end
end

game3 = Game.new("A Way Out", "Ação", false, [], 30)
puts game3
puts game3.technical_sheet

# Erro, pois o método só pode ser chamado a partir da classe
# puts game3.discounted_price(game3.price, 20)

# chamando o método de classe, só funciona quando chama o nome classe.metodo
# Games.discounted_price = self.discounted_price
puts Game.discounted_price(game3.price, 20)