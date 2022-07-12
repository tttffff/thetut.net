FactoryBot.define do
  factory :article do
    sequence(:title) { |n| "General Article #{n}" }
    body { "Here is a general article about stuff." }
    association :article_type
  end

  factory :tutorial_article, class: "Article" do
    sequence(:title) { |n| "Tutorial Article #{n}" }
    body { "This is a tutorial about stuff." }
    association :article_type, factory: :tutorial_article_type
  end

  factory :blog_article, class: "Article" do
    sequence(:title) { |n| "Blog Article #{n}" }
    body { "Read this blog about stuff." }
    association :article_type, factory: :blog_article_type
  end
end
