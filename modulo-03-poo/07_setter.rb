# Getters e Setters usando attr_accessor
# attr_accessor :name, :genre, :multiplayer, :price

class Game
  puts "Novo objeto de jogo foi criado #{self}"

  def initialize
    # Variável de Instância
    @name = "Pes"
    @genre = "Esporte"
    @multiplayer = true
    @versions = [2018, 2019, 2020]
    @price = 100
  end

  def to_s
    "#{@name}-#{@genre}-#{@multiplayer}-#{@versions}"
  end

  # getter
  def name
    @name
  end

  # getter
  def genre
    @genre
  end

  # getter
  def multiplayer
    @multiplayer
  end

  # getter
  def price
    @price
  end

  # setter
  def name=(new_name)
    @name = new_name
  end

  # setter
  def genre=(new_genre)
    @genre = new_genre
  end

  # setter
  def multiplayer=(new_multiplayer)
    @multiplayer = new_multiplayer
  end

  # setter
  def price=(new_price)
    @price = new_price
  end
end

game = Game.new
puts game.name
game.name="Fifa"
puts game.name
game.price=60
puts game.price