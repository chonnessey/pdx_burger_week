require 'rails_helper'

RSpec.describe "reviews/new", type: :view do
  before(:each) do
    assign(:review, Review.new(
      author: "MyString",
      rating: 1,
      content: "MyString",
      burger_id: "MyString"
    ))
  end

  it "renders new review form" do
    render

    assert_select "form[action=?][method=?]", reviews_path, "post" do

      assert_select "input[name=?]", "review[author]"

      assert_select "input[name=?]", "review[rating]"

      assert_select "input[name=?]", "review[content]"

      assert_select "input[name=?]", "review[burger_id]"
    end
  end
end
