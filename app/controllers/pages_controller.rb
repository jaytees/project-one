class PagesController < ApplicationController

  def homepage
    @user = User.new
    @drops = Drop.all
    #donate or request for each drop
    @line_item_new = LineItem.new
  end

end
