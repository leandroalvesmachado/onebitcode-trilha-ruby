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
end

# Herança
# Sua classe DownloadableGame está herdando de Game corretamente e adicionando um novo atributo download_size
class DownloadableGame < Game
  attr_accessor :download_size

  def initialize(name, genre, multiplayer, versions, price, download_size)
    # O método super chama o initialize da classe pai (Game) para evitar repetição de código
    super(name, genre, multiplayer, versions, price)
    @download_size = download_size
  end
end

game1 = Game.new("Fifa", "Esporte", true, [2018, 2019, 2020], 100)
puts game1
puts game1.technical_sheet

game2 = DownloadableGame.new("Call of Duty", "Ação", true, ["Black Ops"], 100, 60)
puts game2
puts game2.technical_sheet