class DropsController < ApplicationController

  before_action :check_if_logged_in, except: [:index, :show, :create]


  def new
    @drop = Drop.new

  end

  def create


    if @current_user.present?


        @drop = Drop.create drop_params

        if @drop.persisted?

          flash[:message] = 'Drop successfully created'

          redirect_to user_path(params[:drop][:owner_id])

        else

          render :new

        end

      else

        flash[:message] = 'Please sign-up to create a drop'

        redirect_to new_user_path


    end #current user present?


  end


  def index
    @drops = Drop.all
    @drop = Drop.new
    @line_item_new = LineItem.new

    if @current_user.present?
      @local_collections = Drop.near([@current_user.latitude, @current_user.longitude], 10, unit: :km)
    end

  end



  def show
    #shows Individual drop

    @drop = Drop.find params[:id]

    @line_item_new = LineItem.new




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
