class Post < ApplicationRecord
  belongs_to :user

  # quando o post for excluído, os comentários tbm serão
  has_many :comments, dependent: :destroy 
end
