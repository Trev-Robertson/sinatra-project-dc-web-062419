# frozen_string_literal: true

10.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    rating: Faker::Number.between(1, 5)
  )
end

10.times do
  User.create(name: Faker::Name.name)
end
