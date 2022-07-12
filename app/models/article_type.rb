class ArticleType < ApplicationRecord
    has_many :articles

    validates :name, :description, presence: true
    validates :name, :description, uniqueness: {case_sensitive: false}
end
