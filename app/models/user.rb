class User < ApplicationRecord

  geocoded_by :location

  has_many :drops, :foreign_key => 'owner_id'

  has_many :donated_items, :class_name => 'LineItem', :foreign_key => 'donor_id'

  has_many :requested_items, :class_name => 'LineItem', :foreign_key => 'recipient_id'

  has_many :products, :through => 'LineItem'

  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates_presence_of :name, :location

  after_validation :geocode

end
