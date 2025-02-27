=begin
  Mapeamento de Transação Financeira

  Defina uma classe FinancialTransaction com as caracterícas abaixo:

  A instanciação deve definir 4 variáveis de instância:

  1- @to
  2- @from
  3- @amount
  4- @completed

  Defina métodos getter para @to, @from e @amount
  Defina métodos getter + setter para @completed

  Obs: Utilizar o attr.
=end

class FinancialTransaction
  attr_reader :to, :from, :amount # Apenas leitura
  attr_accessor :completed # Leitura e Escrita

  def initialize(to, from, amount, completed)
    @to = to
    @from = from
    @amount = amount
    @completed = completed
  end
end

trans = FinancialTransaction.new("Fulano", "Sicrano", 1000, false)

# #<FinancialTransaction:0x00007f5973784168 @to="Fulano", @from="Sicrano", @amount=1000, @completed=false>
p trans

p trans.to
p trans.from
p trans.amount
p trans.completed
trans.completed = true
p trans.completed