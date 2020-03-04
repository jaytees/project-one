class SessionController < ApplicationController



  def new
  end

  def create #login

    user = User.find_by email: params[:email]

    if user.present? && user.authenticate(params[:password])

      session[:user_id] = user.id

      redirect_to user_path(user.id)
    else

      flash[:error] = 'Invalid email or password'
      redirect_to login_path
    end

  end

  def destroy  #log out
    session[:user_id] = nil

    redirect_to root_path
  end


end
