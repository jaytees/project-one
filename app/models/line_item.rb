class LineItem < ApplicationRecord

  belongs_to :drop

  belongs_to :recipient, :class_name => 'User', optional: true

  belongs_to :donor, :class_name => 'User', optional: true

  belongs_to :product

end
