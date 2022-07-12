FactoryBot.define do
  factory :article_type do
    name { "Generals" }
    description { "General articles" }
  end

  factory :tutorial_article_type, class: "ArticleType" do
    name { "Tutorials" }
    description { "Top quality tech tutorials" }
  end

  factory :blog_article_type, class: "ArticleType" do
    name { "Blog" }
    description { "Blogs about tech" }
  end
end
