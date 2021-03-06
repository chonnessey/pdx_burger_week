class UsersController < ApplicationController


  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You've successfully signed up!"
      session[:user_id] = @user.id
      redirect_to '/'
    else
      flash[:alert] = "There was a problem signing up."
      redirect_to '/signup'
    end
  end
  
  def show
    render :show
  end
  
  def admin
      @users = User.all
      render :admin_user
  end
  
  def edit
    @user = User.find(params[:id])
    render :edit
  end
  
  def destroy
    @users = User.all
    if User.find(session[:user_id]) == User.find(params[:id])
      flash[:notice] = "You cannot destroy your own account"
      render :admin_user
    else
      @user = User.find(params[:id])
      @user.destroy
      render :admin_user
    end
  end
  
    private
      def user_params
        params.require(:user).permit(:email, :password, :password_confirmation, :admin)
      end
  end  