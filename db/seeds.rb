User.destroy_all

puts "Creating users"

  u1 = User.create! name: 'Jordan Trickett', email: 'j@t.com', location: 'Bondi', password: 'chicken'

  u2 = User.create! name: 'Gemma Carmichael', email: 'g@c.com', location: 'Bondi', password: 'chicken'

  u3 = User.create! name: 'Tom Psycs', email: 't@p.com', location: 'Fitzroy', password: 'chicken'

  u4 = User.create! name: 'Aimee Wooton', email: 'e@w.com', location: 'Balaclava', password: 'chicken'

  u5 = User.create! name: 'Dave Dave', email: 'd@d.com', location: 'Bowser', password: 'chicken'

  u6 = User.create! name: 'Grace Grace', email: 'g@g.com', location: 'Penrose', password: 'chicken'

  u7  = User.create! name: 'Sarah Sarah', email:
  's@s.com', location: 'Mount Buffalo', password: 'chicken'

  u8 = User.create! name: 'Mike Mike', email:
  'm@m.com', location: 'Wandsworth', password: 'chicken'


puts "Created #{User.count} users"


Drop.destroy_all

puts "Creating Drops"

  d1 = Drop.create! collection_date: '17/01/2020',  collection_location: 'Bondi', delivery_date: '21/01/2020', delivery_location: 'Penrose', owner: u1

  d2 = Drop.create! collection_date: '14/01/2020',  collection_location: 'Fitzroy', delivery_date: '18/01/2020', delivery_location: 'Bowser', owner: u4

puts "Created #{Drop.count} drops"

Product.destroy_all

puts "Creating products"

  p1 = Product.create! name: 'Nappies'
  p2 = Product.create! name: 'Toilet Paper'
  p3 = Product.create! name: 'Toothpaste'
  p4 = Product.create! name: 'Shampoo'
  p5 = Product.create! name: 'Tinned food'
  p6 = Product.create! name: 'T-shirts'
  p7 = Product.create! name: 'Body wash'

puts "Created #{Product.count} proucts"

LineItem.destroy_all

puts "Creating Line Items"

#drop 1
  l1 = LineItem.create! drop: d1, recipient: u8, product: p1,  quantity: 10
  l2 = LineItem.create! drop: d1, donor: u4, product: p2, quantity: 5
  l3 = LineItem.create! drop: d1, recipient: u5, donor: u4, product: p3, quantity: 8

#drop 2
  l4 = LineItem.create! drop: d2, recipient: u8, product: p1,  quantity: 7
  l5 = LineItem.create! drop: d2, donor: u2, product: p7, quantity: 20
  l6 = LineItem.create! drop: d2, recipient: u7, donor: u3, product: p6, quantity: 13

  # # line item 1
  # p1.line_items << l1
  # l1.update recipient: u8
  #
  # # line item 2
  # p2.line_items << l2
  # l2.update donor: u4
  #
  # #line item 3
  # p3.line_items << l3
  # l3.update recipient: u5
  # l3.update donor: u4


puts "Line Items #{LineItem.count} created"
