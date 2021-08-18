class Burger
  attr_accessor :burger_me

  def initialize(burger_me)
    @burger_me = burger_me
  end

  def self.get_burger(burger_params)
    @response = HTTParty.get('https://pdx-burger-week-api.herokuapp.com/' + burger_params + '')
    JSON.parse(@response.body)
  end

end

# class Art
#   attr_accessor :art_me

#   def initialize(art_me)
#     @art_me = art_me
#   end

#   def get_art
#     response = HTTParty.get('https://api.artic.edu/api/v1/artworks/search?q=' + @art_me + '')
#     # response["data"][0]["thumbnail"]["lqip"]
#     JSON.parse(response.body)["data"][0]["thumbnail"]["lqip"]
#   end

# end
