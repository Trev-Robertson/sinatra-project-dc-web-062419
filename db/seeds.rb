a = User.create(name: "John")
r = Restaurant.create(name: "Jacks")

a.restaurants << r