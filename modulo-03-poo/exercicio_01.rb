=begin
  Mapeamento de Projeto

    Defina uma classe Projeto com informações a seguir:

    A instanciação deve definir 3 variáveis de instância:
    1-name="Automação Web"
    2-budget=10000
    3-members=["Fulano", "Sicrano"]

    Defina 3 métodos getter (name, budget, members) para retornar
    o valor das respectivas variáveis de instância

    Defina 1 método setter (budget=) para atualizar o valor
    da variável de instância @budget

    A classe também deve ter o método to_s para retornar o valor das variáveis de instância
=end

class Project
  def initialize
    @name = "Automação Web"
    @budget = 10000
    @members = ["Fulano", "Sicrano"]
  end

  def name
    @name
  end

  def budget
    @budget
  end

  def members
    @members
  end

  def budget=(new_budget)
    @budget = new_budget
  end

  def to_s
    "#{@name}-#{@budget}-#{@members}"
  end
end

project = Project.new

# Automação Web-10000-["Fulano", "Sicrano"]
puts project

p project.name # "Automação Web"
p project.budget # 10000

project.budget = 25000

p project.budget # 25000