class Game
  def initialize
    puts "Novo objeto de jogo foi criado"

    # Variável de Instância, utiliza o @
    @name = "Pes"
    @genre = "Esporte"
    @multiplayer = true
    @versions = [2018, 2019, 2020]
    @price = 100
  end
end

game1 = Game.new
puts game1 # <Game:0x00007f69af7641f0>
p game1 # <Game:0x00007f69af7641f0 @name="Pes", @genre="Esporte", @multiplayer=true, @versions=[2018, 2019, 2020], @price=100>