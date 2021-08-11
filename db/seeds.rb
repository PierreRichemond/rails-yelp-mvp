puts "cleaning the db..."
Restaurant.destroy_all

puts "creating restaurants"

5.times do
  @restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: Restaurant::CATEGORIES.sample
  )
  puts "restaurant with #{@restaurant.id} is created"
end
 puts "done"
