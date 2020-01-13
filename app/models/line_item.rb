class LineItem < ApplicationRecord

  belongs_to :drop

  belongs_to :recipient, :class_name => 'User', optional: true

  belongs_to :donor, :class_name => 'User', optional: true

  belongs_to :product

  validates :drop_id, :recipient_id, :quantity, :presence => true


  validates :donor_id, presence: true, unless: :recipient_id
  validates :recipient_id, presence: true, unless: :donor_id




end
