require 'rails_helper'

RSpec.describe "reviews/show", type: :view do
  before(:each) do
    @review = assign(:review, Review.create!(
      author: "Author",
      rating: 2,
      content: "Content",
      burger_id: "Burger"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Content/)
    expect(rendered).to match(/Burger/)
  end
end
