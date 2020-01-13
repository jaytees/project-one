class Drop < ApplicationRecord

#sorts drops by earliest date by default
  default_scope { order(collection_date: :asc) }

  belongs_to :owner, :class_name => 'User'

  has_many :line_items

#better way with loop
  validates_presence_of :owner_id, :collection_location, :collection_date, :delivery_location, :delivery_date

end
