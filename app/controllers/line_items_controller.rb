class LineItemsController < ApplicationController


  def new

    @line_item_new = LineItem.new

  end

  def create


    if @current_user.present?

      if params[:user] == 'request'
        #push id into recipient_id
        params[:line_item][:recipient_id] = @current_user.id
      else
        params[:line_item][:donor_id] = @current_user.id
      end


      @line_item_new = LineItem.create! line_params


      if @line_item_new.persisted?

        flash[:message] = 'Added to drop'

        redirect_to drop_path(params[:line_item][:drop_id])
      else

        render :new
      end

    else

      flash[:message] = 'Please sign in'

    end



  end





  def index


  end

  def show


  end

  def edit

    @line_item = LineItem.find params[:id]

  end



  def update

    @line_item = LineItem.find params[:id]


    #if i want to allow request for donated items
    #maybe turn into a model function / change logic
    # if params[:user] == 'request'
    #   #push id into recipient_id
    #   params[:line_item][:recipient_id] = @current_user.id
    #
    # else
    #   params[:line_item][:donor_id] = @current_user.id
    #   puts "================== id: #{@line_item.id} ============= donor_id #{params[:line_item][:donor_id]}"
    # end
    # puts "========================== PARAMS", params

    if @current_user.present?

        @line_item.update donor_id: @current_user.id

        redirect_to drop_path(@line_item.drop_id)

    else

      flash[:message] = 'Please sign in to donate'

    end



  end

  def destroy
  end

  private
  def line_params
    params.require(:line_item).permit( :drop_id, :product_id, :quantity, :recipient_id, :donor_id )

  end

end
