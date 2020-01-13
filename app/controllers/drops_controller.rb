class DropsController < ApplicationController

  def new
    @drop = Drop.new

  end

  def create
    @drop = Drop.create drop_params

  #end checks no-one is hacking
    if @drop.persisted? #&& @drop.owner == @current_user.id

      flash[:message] = 'Drop successfully created'

      redirect_to user_path(params[:drop][:owner_id])
      # render :new
    else

      # stop error redirecting from page, has to do with below
      render :new
    end


  end

  def index
    @drops = Drop.all
    @line_item = LineItem.new


  end

  def show
    @drop = Drop.find params[:id]
    @line_item = LineItem.new

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def drop_params
    params.require(:drop).permit(:owner_id, :collection_location, :collection_date, :delivery_location, :delivery_date)
  end
end
