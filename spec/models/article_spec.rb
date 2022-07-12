require 'rails_helper'

RSpec.describe Article, type: :model do
  subject { FactoryBot.create(:article) } # For db constraints (empty object will fail validations)

  describe "associations" do
    it { should belong_to(:article_type) }
  end

  describe "validations" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:body) }
    it { should validate_uniqueness_of(:title).case_insensitive }
  end
end
