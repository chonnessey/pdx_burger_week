class Burger
  attr_accessor :burger_me

  def initialize(burger_me)
    @burger_me = burger_me
  end

  def self.get_burger
    response = HTTParty.get('https://pdx-burger-week-api.herokuapp.com/burgers')
    JSON.parse(response.body)
  end

end