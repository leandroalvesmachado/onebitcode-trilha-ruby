class Product < ApplicationRecord
  validates :name, presence: true # Garante que o campo name não esteja vazio ou nulo
  validates_uniqueness_of :name # Garante que o name seja único no banco de dados
  validates_length_of :name, maximum: 255 # Garante que o name tenha no máximo 255 caracteres
end
