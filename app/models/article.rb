class Article < ApplicationRecord
  belongs_to :article_type

  validates :title, :body, presence: true
  validates :title, uniqueness: {case_sensitive: false}

  default_scope -> { order(:updated_at).reverse_order }
end
