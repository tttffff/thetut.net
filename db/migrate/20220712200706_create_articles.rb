class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.belongs_to :article_type, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
