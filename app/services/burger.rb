class Burger
  attr_accessor :burger_me
  
  def new
    @burger = Burger.new
    render :new
  end

  def self.get_burger(burger_params)
    @response = HTTParty.get('https://pdx-burger-week-api.herokuapp.com/' + burger_params + '')
    JSON.parse(@response.body)
  end

  def self.get_burger_reviews(burger_params)
    @response = HTTParty.get("https://pdx-burger-week-api.herokuapp.com/burgers/#{burger_params}/reviews")
    JSON.parse(@response.body)
  end
  
  def self.post_burger(params)
    HTTParty.post("https://pdx-burger-week-api.herokuapp.com/burgers", 
        :body => params.to_json,
        :headers => { 'Content-Type' => 'application/json' }
    )
  end

  def self.destroy_burger(params)
    HTTParty.delete("https://pdx-burger-week-api.herokuapp.com/burgers/#{params[:id]}")
  end

  def self.update_burger(params)
    HTTParty.put("https://pdx-burger-week-api.herokuapp.com/burgers/#{params[:id]}", 
        :body => params.to_json,
        :headers => { 'Content-Type' => 'application/json' }
    )
  end
end