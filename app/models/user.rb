class User < ApplicationRecord

  has_many :drops, :foreign_key => 'owner_id'

  has_many :donated_items, :class_name => 'LineItem', :foreign_key => 'donor_id'

  has_many :requested_items, :class_name => 'LineItem', :foreign_key => 'recipient_id'

  has_many :products, :through => 'LineItem'

  has_secure_password
end
