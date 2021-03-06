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

    @drop = Drop.new

    @line_item_new = LineItem.new
  end

  def edit
    @user = User.find params[:id]
    @drops = Drop.all

    #donate or request for each drop
    @line_item_new = LineItem.new

    #create new drop
    @drop = Drop.new
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
