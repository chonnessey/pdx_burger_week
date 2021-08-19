class Burger
  attr_accessor :burger_me

  def initialize(burger_me)
    @burger_me = burger_me
  end

  def self.get_burger(burger_params)
    @response = HTTParty.get('https://pdx-burger-week-api.herokuapp.com/' + burger_params + '')
    JSON.parse(@response.body)
  end

  def self.get_burger_reviews(burger_params)
    @response = HTTParty.get("https://pdx-burger-week-api.herokuapp.com/burgers/#{burger_params}/reviews")
    JSON.parse(@response.body)
  end

end
