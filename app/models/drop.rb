class Drop < ApplicationRecord

  belongs_to :owner, :class_name => 'User'

  has_many :line_items

end
