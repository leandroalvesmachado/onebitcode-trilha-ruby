# Blocks (Blocos) são trechos anônimos de código que aceitam
# entradas de argumentos e retornam um determinado valor

# Um Block em Ruby é um trecho de código que pode ser passado para um método e executado dentro dele.
# Ele pode ser definido usando do...end ou chaves {}.

def hello
  yield # block (bloco)
end

hello { puts "Bloco" }

def one_two_three
  yield 1
  yield 2
  yield 3
end

# 10
# 20
# 30
one_two_three { |number| puts number * 10}

# Uma Lambda é um objeto da classe Proc, que representa uma função anônima e pode ser armazenada em variáveis.

# 2 - Função de potência de um número
power = lambda { |num| num ** 2}
puts power.call(4)

# 3 - Função que verifica se o número é par
pair = lambda { |x| x % 2 == 0}
puts pair.call(5)

# 4 - Função que divide um número por outro
div_num = lambda { |x, y| x / y}
puts div_num.call(10, 5)