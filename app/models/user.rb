class User < ApplicationRecord

  has_many :drops, :foreign_key => 'owner_id'

  has_secure_password
end
