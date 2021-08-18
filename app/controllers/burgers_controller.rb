class BurgersController < ApplicationController
  require 'burger'
  
  def index
    @burgers = Burger.get_burger('burgers')
    @burgers_top_five = Burger.get_burger('burgers/top_five')
    render :index
  end

  def show
    @burger = Burger.find(params[:id])
    render :show
  end

end