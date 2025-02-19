=begin
  Cálculo Área

  Escreva um programa Ruby calcula a área de um quadrado e um retângulo. Em cada um dos casos, deve ser criado um módulo a parte,
  para que este seja executado de forma independente de outro, ainda que ambos estejam no mesmo arquivo.
=end

module Square
  def self.area(side)
    side * side
  end
end

module Rectangle
  def self.area(base, width)
    base * width
  end
end

puts Square.area(10) # 100
puts Rectangle.area(20, 20) # 200
