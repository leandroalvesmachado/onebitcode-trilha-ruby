require 'active_record'
require 'active_record/tasks/database_tasks'

# Configuração do banco de dados
db_config = {
  adapter: 'postgresql',
  host: 'localhost',
  username: 'postgres',
  password: '1q2w3e4r',
  database: 'estoque'
}

ActiveRecord::Base.establish_connection(db_config)

begin
  # Verifica se o banco já existe tentando uma conexão
  ActiveRecord::Base.connection.execute("SELECT 1")
  puts "Banco de dados já existe!"
rescue ActiveRecord::NoDatabaseError
  # Se não existir, cria o banco
  puts "Banco de dados não encontrado. Criando..."
  ActiveRecord::Tasks::DatabaseTasks.create(db_config)
  puts "Banco de dados criado com sucesso!"
end

# Definição do esquema do BD
ActiveRecord::Schema.define do
  create_table :categories do |t|
    t.string :name
  end

  create_table :products do |t|
    t.string :name
    t.integer :category_id
    t.integer :stock_quantity, default: 0
  end
end

# Definição dos Modelos
class Category < ActiveRecord::Base
  has_many :products
end

class Product < ActiveRecord::Base
  belongs_to :category

  def decrease_stock(amount)
    if self.stock_quantity >= amount
      self.stock_quantity -= amount
      self.save
    else
      puts "Não há estoque suficiente para realizar a operação"
    end
  end

  def increase_stock(amount)
    self.stock_quantity += amount
    self.save
  end
end

# Utilizando os Modelos
category = Category.create(name: 'Eletrônicos')

product1 = category.products.create(name: 'Smartphone', stock_quantity: 10)
product2 = category.products.create(name: 'Notebook', stock_quantity: 5)

product1.decrease_stock(3)
product2.increase_stock(5)

# Recuperação dos Dados
all_products = Product.all
all_products.each do |product|
  puts "Nome: #{product.name}, Categoria: #{product.category.name}, Estoque: #{product.stock_quantity}"
end
