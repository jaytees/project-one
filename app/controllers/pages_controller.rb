class PagesController < ApplicationController

  def homepage
    @user = User.new
  end

end
