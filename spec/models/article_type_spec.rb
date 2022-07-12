require 'rails_helper'

RSpec.describe ArticleType, type: :model do
  subject { FactoryBot.create(:article_type) }  # For db constraints (empty object will fail validations)

  describe "associations" do
    it { should have_many(:articles) }
  end

  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:description) }
    it { should validate_uniqueness_of(:name).case_insensitive }
    it { should validate_uniqueness_of(:description).case_insensitive }
  end
end
