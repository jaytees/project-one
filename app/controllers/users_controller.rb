class UsersController < ApplicationController

  before_action :check_if_logged_in, only: [:show, :edit, :update, :destroy]

  def new
    @user = User.new
  end


  def create
    @user = User.create user_params

    if @user.persisted?

      session[:user_id] = @user.id

      redirect_to edit_user_path(session[:user_id]) #after inttial sign up, redirected to edit page to add more details too account
    else

      render :new   #renders filled form instead of redirecting
    end
  end


  def show
    @user = User.find params[:id]
    @drops = @user.drops
    @drop = Drop.new
    @products = Product.all
  end

  def edit
    @user = User.find params[:id]
    @drops = Drop.all.sort_by { | collection |  collection.collection_date }
    @drop = Drop.new
    @products = Product.all
  end

  def update
  end

  def destroy
  end


  private
  def user_params
    params.required(:user).permit(:name, :email, :location, :password, :password_confirmation)

  end

end
