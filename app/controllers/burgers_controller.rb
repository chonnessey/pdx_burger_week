class BurgersController < ApplicationController
  require 'burger'
  
  def index
    @response = Burger.get_burger('burgers')
    @burgers = @response.sort_by! {|hsh| hsh.fetch("name")}
    @burgers_top_five = Burger.get_burger('burgers/top_five').sort_by! {|hsh| hsh.fetch("name")}
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
      flash[:notice] = "#{JSON.parse(@response.body).fetch("name")} Burger was successfully created."
      redirect_to("/burgers/#{JSON.parse(@response.body).fetch("id").to_s}")
    else
      flash[:alert] = @response.fetch("message")
      render :new
    end
  end

  def destroy
    @response = Burger.destroy_burger(params)
    if @response.code === 200
      flash[:notice] = @response.fetch("message")
      redirect_to ('/')
    else
      render :show
    end
  end

  def edit
    find_me = params[:id]
    @burger = Burger.get_burger("burgers/#{find_me}")
    render :edit
  end

  def update 
    @response = Burger.update_burger(params)
    if @response.code === 200
      flash[:notice] = @response.fetch("message")
      redirect_to ('/')
    else
      render :show
    end
  end
end
