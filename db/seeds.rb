User.destroy_all

puts "Creating users"

  u1 = User.create! name: 'Jordan Trickett', email: 'j@t.com', location: 'Bondi', password: 'chicken'

  u2 = User.create! name: 'Gemma Carmichael', email: 'g@c.com', location: 'Bondi', password: 'chicken'

  u3 = User.create! name: 'Tom Psycs', email: 't@p.com', location: 'Fitzroy', password: 'chicken'


puts "Created #{User.count} users"


Drop.destroy_all

puts "Creating Drops"

  d1 = Drop.create! collection_date: '17/01/19',  collection_location: 'Bondi', delivery_date: '21/01/19', delivery_location: 'Penrose', owner: u1

  d2 = Drop.create! collection_date: '14/01/19',  collection_location: 'Fitzroy', delivery_date: '18/01/19', delivery_location: 'Bowser', owner: u2

puts "Created #{Drop.count} drops"

# u1.drops << d1
# u3.drops << d2
# #
# puts "User #{u1.name}, has #{User.first.drops} drops"
