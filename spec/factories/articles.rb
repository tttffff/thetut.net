FactoryBot.define do
  factory :article do
    sequence(:title) { |n| "General Article #{n}" }
    body { "Here is a general article about stuff." }
    association :article_type
  end

  factory :tutorial_article, class: "Article" do
    sequence(:title) { |n| "#{Faker::Hacker.adjective} #{Faker::Hacker.abbreviation} (turorial #{n})" }
    body { Faker::Hacker.say_something_smart }
    association :article_type, factory: :tutorial_article_type
  end

  factory :blog_article, class: "Article" do
    sequence(:title) { |n| "#{Faker::Science.element_subcategory} (blog #{n})" }
    body { Faker::Lorem.sentence(word_count: 8, supplemental: true, random_words_to_add: 256) }
    association :article_type, factory: :blog_article_type
  end
end
