# Método protegido:
# Os métodos podem ser chamados a partir de instâncias da mesma classe onde foram definidos.
# Ou em suas subclasses.

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

  def techinal_sheet
      puts "##Dados do Jogo##"
      puts "Nome do Jogo: #{@name}"
      puts "Gênero do Jogo: #{@genre}"
      puts "Preço do Jogo: #{@price}"
  end

  protected

  # Método Protegido
  def discounted_price(discount_percentage)
      @price -= (@price * (discount_percentage.to_f / 100))
  end
end

game1 = Game.new("Fifa", "Esporte", true, [2018, 2019, 2020], 100)
puts game1
puts game1.techinal_sheet

# usa o método send para chamar um método privado ou protegido chamado discounted_price no objeto game1, passando 20 como argumento
game1.send(:discounted_price, 20)
puts game1.techinal_sheet

game2 = Game.new("Alan Wake", "Suspense", false, [], 200)
puts game2
puts game2.techinal_sheet

usa o método send para chamar um método privado ou protegido chamado discounted_price no objeto game1, passando 10 como argumento
game2.send(:discounted_price, 10)
puts game2.techinal_sheet

# Métodos privados/protegidos → Normalmente, métodos privados/protegidos não podem ser chamados
# diretamente de fora da classe, mas send permite isso.