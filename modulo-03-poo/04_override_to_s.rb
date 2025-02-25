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

  # Método de instância
  def information
    puts "O jogo é do gênero #{@genre} e as versões: #{@versions}"
  end

  # Método de instância
  def techinal_sheet
      puts "##Dados do Jogo##"
      puts "Nome do Jogo: #{@name}"
      puts "Gênero do Jogo: #{@genre}"
      puts "Preço do Jogo: #{@price}"
  end

  # sobescrever o método to_s para melhorar a mensagem que é retornada quando uma instância de uma classe é criada
  def to_s
    "#{@name}-#{@genre}-#{@multiplayer}-#{@versions}"
  end
end

game = Game.new

# Novo objeto de jogo foi criado
# Pes-Esporte-true-[2018, 2019, 2020]
puts game