require 'minitest/autorun'

class Pessoa
  attr_accessor :nome, :idade  # Cria os métodos getter e setter para os atributos

  def initialize(nome, idade)  # Construtor que recebe nome e idade
    @nome = nome
    @idade = idade
  end

  def apresentar  # Método que retorna uma string de apresentação
    ano = @idade == 1 ? "ano" : "anos"
    "Olá, sou #{@nome} e tenho #{@idade} #{ano}"
  end
end

class TestPessoa < Minitest::Test
  # O método setup é um método especial em testes unitários
  # que é executado antes de cada caso de teste em uma classe de teste.
  def setup
    @p1 = Pessoa.new("João", 30)
  end
  
  def test_initialize
    assert_equal("João", @p1.nome)
    assert_equal(30, @p1.idade)
  end

  def test_apresentar
    assert_equal("Olá, sou João e tenho 30 anos", @p1.apresentar)
  end
end