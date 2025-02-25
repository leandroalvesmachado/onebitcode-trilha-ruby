# Uso de attr_reader → Evita a necessidade de escrever getters manualmente.

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
end

game = Game.new

# 
puts game.genre, game.multiplayer, game.name