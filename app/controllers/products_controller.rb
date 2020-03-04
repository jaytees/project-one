class ProductsController < ApplicationController
  def new
  end

  def create
  end

  def index
    # most requested items - not quantity
    # add sort by location facility
    @products = Product.all.sort_by { | product_count |  product_count.line_items.count }.reverse

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
