class Article < ApplicationRecord
  belongs_to :article_type

  validates :title, :body, presence: true
  validates :title, uniqueness: {case_sensitive: false}
end
