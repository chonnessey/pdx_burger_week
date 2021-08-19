require 'rails_helper'

RSpec.describe "reviews/edit", type: :view do
  before(:each) do
    @review = assign(:review, Review.create!(
      author: "MyString",
      rating: 1,
      content: "MyString",
      burger_id: "MyString"
    ))
  end

  it "renders the edit review form" do
    render

    assert_select "form[action=?][method=?]", review_path(@review), "post" do

      assert_select "input[name=?]", "review[author]"

      assert_select "input[name=?]", "review[rating]"

      assert_select "input[name=?]", "review[content]"

      assert_select "input[name=?]", "review[burger_id]"
    end
  end
end
