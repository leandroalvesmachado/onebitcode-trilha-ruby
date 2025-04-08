class Calculator
  # Método para adição
  def add(a, b)
    a + b
  end

  # Método para subtração
  def subtract(a, b)
    a - b
  end

  # Método para multiplicação
  def multiply(a, b)
    a * b
  end

  # Método para divisão
  def divide(a, b)
    # Tratamento para evitar divisão por zero
    # raise ArgumentError, "Divisão por zero não é permitida." if b == 0
    a.to_f / b
  end
end
