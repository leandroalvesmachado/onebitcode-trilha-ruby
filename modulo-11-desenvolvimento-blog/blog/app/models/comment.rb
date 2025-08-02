class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  # habilita rich text (texto rico) no Rails usando o Action Text, um recurso introduzido no Rails 6
  has_rich_text :body
end
