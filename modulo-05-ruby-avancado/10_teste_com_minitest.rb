# Importa a biblioteca de testes Minitest
require "minitest/autorun"

# Define a função sum que será testada
# Essa função recebe dois parâmetros e retorna sua soma
def sum(a, b)
  a + b
end

def palindromo?(palavra)
  palavra.downcase == palavra.downcase.reverse
end

# Define uma classe de teste que herda de Minitest::Test
# Isso permite que possamos escrever métodos de teste dentro dela
class TestMathematics < Minitest::Test

  # Define um método de teste.
  # Métodos de teste devem obrigatoriamente começar com "test_"
  def test_sum_method
    # Verifica se a função 'sum' retorna 5 quando recebe os argumentos 3 e 2
    # assert_equal espera dois argumentos: o esperado e o valor real
    assert_equal(5, sum(3, 2))
  end

  # Outro método de teste para a função 'sum'
  def test_sum_method_again
    # Verifica se a soma de 4 e 2 é igual a 7 (isso está errado: 4 + 2 = 6)
    # Este teste deve falhar, a não ser que a função 'sum' esteja com um erro
    assert_equal(7, sum(4, 2))
  end
end

# Define uma classe de teste que herda de Minitest::Test
class TestPalindromo < Minitest::Test

  # Método de teste para verificar a função 'palindromo?'
  # O nome do método deve começar com "test_" para o Minitest reconhecê-lo como teste
  def test_palindromo
    # Verifica se a string 'ovo' é reconhecida como palíndromo (deve retornar true)
    assert_equal(true, palindromo?('ovo'))

    # Verifica se a string 'Ame a ema' (com letras maiúsculas e espaço) é reconhecida como palíndromo
    # Isso exige que a função 'palindromo?' trate maiúsculas/minúsculas e espaços
    assert_equal(true, palindromo?('Ame a ema'))

    # Verifica se a string 'ola' NÃO é um palíndromo (deve retornar false)
    assert_equal(false, palindromo?('ola'))
  end
end


