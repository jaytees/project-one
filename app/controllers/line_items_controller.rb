class LineItemsController < ApplicationController
  def new
    # raise 'hell'

    #attempt 1
    # @line_item = LineItem.new
    # @products = Product.all
    #
    # @user = @current_user.id

    #attempt 2
    @line_item_new = LineItem.new
    # @products = Product.all
    # @drop = Drop.find params[:drop_id]
    # raise 'hell'
  end

  def create

    # raise 'hell'
    #attempt 2

    if params[:user] == 'request'
      #push id into recipient_id
      params[:line_item][:recipient_id] = @current_user.id
    else
      params[:line_item][:donor_id] = @current_user.id
    end

    puts "========================== PARAMS", params

    @line_item_new = LineItem.create! line_params


    if @line_item_new.persisted?

      flash[:message] = 'Added to drop'

      redirect_to drop_path(params[:line_item][:drop_id])
    else

#below doesnt seem to be necessary becuase  we only add from drop form and redirects to the drop, never create line item otherwise

      # @drop = Drop.find params[:line_item][:drop_id]

      # @products = Product.all
      render :new
    end
  end

  def index
  # #works on index page
  #   @drops = Drop.all  #for the index
  #   # @drop = Drop.find 112
  #   @line_item = LineItem.find 67
  #
  #   @drop_items = LineItem.all.where ('drop_id = 112')

  end

  def show
    # @artist = Artist.find params[:id]

  end

  def edit
    # @artist = Artist.find params[:id]
    @drops = Drop.all  #for the index
    # @drop = Drop.find 112



    @line_item = LineItem.find params[:id]

    # @drop = Drop.find params[:id]
    # @drop_items = LineItem.all.where ('drop_id = 113')  #just so it works for test version


    puts "=======================", params

  end



  def update

    # artist = Artist.find params[:id]
    @line_item = LineItem.find params[:id]

    puts "====================", params

    # raise 'hell'

    #maybe turn into a model function / change logic
    if params[:user] == 'request'
      #push id into recipient_id
      params[:line_item][:recipient_id] = @current_user.id

    else
      params[:line_item][:donor_id] = @current_user.id
      puts "================== id: #{@line_item.id} ============= donor_id #{params[:line_item][:donor_id]}"
    end
    puts "========================== PARAMS", params



    #artist.update artist_params
    @line_item.update donor_id: params[:line_item][:donor_id]

    puts "================== id: #{@line_item.id} ============= donor_id #{@line_item.donor_id} ========== drop #{params[:line_item][:drop_id]}"

    # raise 'hell'
    # @article.update(title: 'A new title')

    redirect_to drop_path(params[:line_item][:drop_id])
  end

  def destroy
  end

  private
  def line_params
    params.require(:line_item).permit( :drop_id, :product_id, :quantity, :recipient_id, :donor_id )

  end

end
# <% drop.line_items.each do | item |%>
#
#     <!-- if item.recipient.present? -->
#       <p>item id:<%= item.id %></p>
#         <ul>
#           <li>
#             <%= item.product.name %> x<%= item.quantity %>
#           </li>
#           <li>
#             <strong>Donor Assigned:</strong>
#             <%= item.donor.present? ? 'Yes' : 'No' %>
#           </li>
#         </ul>
#
#     <!-- end -->  <!-- if -->
#
# <% end %>  <!-- drop loop-->
