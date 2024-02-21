require 'faker'

puts "seeding started..."
Restaurant.destroy_all

5.times do
  name = Faker::Restaurant.name
  address = Faker::Address.full_address
  category = %w[chinese italian japanese french belgian].sample

  @restaurant = Restaurant.new(name: name, address: address, category: category)
  @restaurant.save

  rate = rand(0..5)
  content = Faker::Lorem.sentence

  @review = Review.new(rating: rate, content: content, restaurant_id: @restaurant.id)
  @review.save
end

puts "seeding finished..."
