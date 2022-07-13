require 'rails_helper'

RSpec.describe "articles/index", type: :view do
  before(:each) do
    assign(:articles, build_list(:article, 2))
  end

  it "renders a list of articles" do
    render
    assert_select "p>strong", text: "Title:", count: 2
    assert_select "p", text: /General Article/, count: 2
    assert_select "p", text: /Here is a general article about stuff/, count: 2
  end
end
