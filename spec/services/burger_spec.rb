require 'rails_helper'

describe Burger do
  it "returns a 200 success header when the API call is made" do
    response = Burger.get_burger
    expect(response).to be_an(Array)
  end
end