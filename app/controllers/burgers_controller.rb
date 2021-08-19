class BurgersController < ApplicationController
  require 'burger'
  
  def index
    @burgers = Burger.get_burger('burgers')
    @burgers_top_five = Burger.get_burger('burgers/top_five')
    render :index
  end

  def show
    find_me = params[:id]
    @burger = Burger.get_burger("burgers/#{find_me}")
    @burger_reviews = Burger.get_burger_reviews(find_me)
    render :show
  end

  def create
    @response = Burger.post_burger(params)
    if @response.response.code === '201'
      flash[:notice] = "Burger was successfully created."
      # @burger = Burger.get_burger("burgers/#{JSON.parse(@response.body).fetch("id").to_s}")
      redirect_to("/burgers/#{JSON.parse(@response.body).fetch("id").to_s}")
    else
      render :new
    end
  end

end
