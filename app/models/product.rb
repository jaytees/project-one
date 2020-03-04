class Product < ApplicationRecord

  has_many :line_items

  has_many :users, :through => 'LineItem'

end
