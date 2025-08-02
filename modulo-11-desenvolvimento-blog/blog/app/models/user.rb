class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # dependent: :destroy  = quando o usuário for excluído, os comentários e posts tbm serão
  has_many :posts, dependent: :destroy 
  has_many :comments, dependent: :destroy 
end
