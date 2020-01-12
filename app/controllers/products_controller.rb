class ProductsController < ApplicationController
  def new
  end

  def create
  end

  def index
    # most requested items
    # add sort by location facility

    @products = Product.all.sort_by { | product_count |  product_count.line_items.count }.reverse  #sorts by most appearances in line items

    # product.line_items.count 1 ?  'drop' : 'drops'

    # .each do | product |
    #  p product.name
    #    if product.line_items.present?
    #      # p product.line_items
    #      total_requested = 0
    #       product.line_items.each do | line |
    #         total_requested += line.quantity
    #       end
    #       p "Total requested #{total_requested}"
    #    end
    # end;

  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
