class GetBurgersController < ApplicationController
  


  def index
    @burgers = session[:user_id]
    
    render :index
  end

  def search
    art_object = Art.new(params[:search])
    @photo = art_object.get_art
  end

end