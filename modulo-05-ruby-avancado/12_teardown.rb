require 'minitest/autorun'

class ShoppingCart
  def initialize
    @items = {}
  end

  def add_item(product, quantity)
    @items[product] = quantity
  end

  def remove_item(product)
    @items.delete(product)
  end

  def item_count
    @items.values.sum
  end

  def total_price
    product_prices = {'Headphones' => 30, 'Book' => 10}
    @items.sum {|product, quantity| quantity * product_prices[product]}
  end

  def clear
    @items = {}
  end
end


# Esta é uma classe de teste usando o framework Minitest
# Ela testa funcionalidades da classe ShoppingCart
class TestShoppingCart < Minitest::Test
  
  # O método setup é executado antes de cada teste individual.
  # Ele prepara o ambiente necessário para os testes.
  def setup
    # Aqui, estamos criando uma nova instância de ShoppingCart
    # e atribuindo à variável de instância @cart, que será usada nos testes.
    @cart = ShoppingCart.new
  end

  # O método teardown é executado depois de cada teste.
  # Ele serve para limpar ou desfazer o que foi configurado no setup,
  # garantindo que um teste não interfira no outro.
  def teardown
    # Estamos limpando o carrinho após cada teste,
    # presumindo que a classe ShoppingCart tem um método `clear` que remove todos os itens.
    @cart.clear
  end

  # Aqui normalmente viriam os métodos de teste, começando com `test_`,
  
  def test_add_item
    @cart.add_item('Laptop', 1)
    assert_equal(1, @cart.item_count, "Falha ao adicionar item ao carrinho")
  end

  def test_remove_item
    @cart.add_item('Mouse', 2)
    @cart.remove_item('Mouse')
    assert_equal(0, @cart.item_count, "Falha ao remover item do carrinho")
  end

  def test_total_price
    @cart.add_item('Headphones', 1)
    @cart.add_item('Book', 2)
    # 1*30 + 2*10 = 50
    assert_equal(50, @cart.total_price, "Cálculo incorreto do preço total")
  end
end