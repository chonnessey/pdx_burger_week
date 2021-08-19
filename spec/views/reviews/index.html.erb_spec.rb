require 'rails_helper'

RSpec.describe "reviews/index", type: :view do
  before(:each) do
    assign(:reviews, [
      Review.create!(
        author: "Author",
        rating: 2,
        content: "Content",
        burger_id: "Burger"
      ),
      Review.create!(
        author: "Author",
        rating: 2,
        content: "Content",
        burger_id: "Burger"
      )
    ])
  end

  it "renders a list of reviews" do
    render
    assert_select "tr>td", text: "Author".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Content".to_s, count: 2
    assert_select "tr>td", text: "Burger".to_s, count: 2
  end
end
