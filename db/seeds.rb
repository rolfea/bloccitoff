10.times do
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
end
users = User.all

50.times do
  item = Item.create!(
    user: users.sample,
    name: Faker::Company.bs
  )
  # item.update_attributes(:created_at, rand(10.minutes..7.day).ago)
end
items = Item.all

puts "Seed Finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"
