class Review
  attr_accessor :review_me

  def initialize(review_me)
    @review_me = review_me
  end

  def self.get_burger(review_params)
    @response = HTTParty.get('https://pdx-burger-week-api.herokuapp.com/burger/' + review_params + '')
    JSON.parse(@response.body)
  end

end
