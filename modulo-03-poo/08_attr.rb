# Em Ruby, attr_reader, attr_writer e attr_accessor são métodos usados para criar automaticamente getters e setters
# para variáveis de instância em uma classe. Vamos entender cada um:

# attr_reader (Somente Leitura - Getter), Cria um getter para um atributo, permitindo a leitura do valor, mas não a modificação.
# attr_writer (Somente Escrita - Setter), Cria um setter, permitindo modificar o valor de um atributo, mas não lê-lo diretamente.
# attr_accessor (Leitura e Escrita - Getter e Setter), Cria getter e setter ao mesmo tempo, permitindo leitura e modificação do atributo.

class Game
  # attr_reader :name, :genre, :price # Apenas leitura
  # attr_writer :name, :genre, :price # Apenas escrita
  # attr_accessor :name, :genre, :price # Leitura e Escrita

  attr_accessor :name, :genre, :price, :multiplayer, :versions

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
end

game = Game.new

# o name é Pes
puts game.name

# alterou o name para Fifa
game.name="Fifa"
puts game.name

# alterou o price
game.price=60
puts game.price