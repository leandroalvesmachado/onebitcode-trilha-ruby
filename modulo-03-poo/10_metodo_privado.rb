# Método Privado
# Só podem ser chamados a partir da mesma classe onde foram definidos

class Game
  attr_accessor :name, :genre, :price # Leitura e Escrita - Getter e Setter
  attr_reader :multiplayer, :versions # Somente Leitura - Getter

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

  # Método Privado
  private

  # Só podem ser chamados a partir da mesma classe onde foram definidos
  def apply_discount(discount_percentage)
      @price -= (@price * discount_percentage / 100)
  end

  # Método Público que chama o método privado
  public

  def apply_20_percent_discount
      # chamando método privado na mesma classe
      apply_discount(20)
  end
end

game = Game.new("Alan Wake", "Suspense", false, [], 150)
puts game
puts game.price

# não consegue chamar diretamente, pois é um método privado
# game.apply_discount

game.apply_20_percent_discount
puts game.price