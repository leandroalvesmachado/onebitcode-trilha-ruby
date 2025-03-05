class Game
  attr_accessor :name, :genre, :price # Leitura e Escrita
  attr_reader :multiplayer, :versions

  # Variável de classe para rastrear o número de jogos
  #  O símbolo @@ indica que num_jogos é uma variável de classe, ou seja, ela pertence à classe e é compartilhada entre todas as instâncias dessa classe.
  #  O valor da variável não é reiniciado a cada instância
  @@num_jogos = 0

  def initialize(name, genre, multiplayer, versions, price)
    # Variável de Instância
    @name = name
    @genre = genre
    @multiplayer = multiplayer
    @versions = versions
    @price = price

    # Incrementando o contador de jogos ao criar um novo objeto
    @@num_jogos += 1
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

  # Método de classe para obter o número total de jogos
  def self.total_games
    @@num_jogos
  end
end

game1 = Game.new("Fifa", "Esporte", true, [2018, 2019, 2020], 100)
puts game1
puts game1.technical_sheet

game2 = Game.new("Alan Wake", "Suspense", false, [], 200)
puts game2
puts game2.technical_sheet

game3 = Game.new("A Way Out", "Ação", false, [], 30)
puts game3
puts game3.technical_sheet

puts "Número total de jogos = #{Game.total_games}"