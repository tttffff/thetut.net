# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

include FactoryBot::Syntax::Methods

Article.delete_all
ArticleType.delete_all

general_article_type = create(:article_type)
tutorial_article_type = create(:tutorial_article_type)
blog_article_type = create(:blog_article_type)

create_list(:article, rand(2..16), article_type: general_article_type)
create_list(:tutorial_article, rand(2..16), article_type: tutorial_article_type)
create_list(:blog_article, rand(2..16), article_type: blog_article_type)