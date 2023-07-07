# Create Restaurants
restaurant1 = Restaurant.create(name: "Sottocasa NYC", address: "298 Atlantic Ave, Brooklyn, NY 11201")
restaurant2 = Restaurant.create(name: "PizzArte", address: "69 W 55th St, New York, NY 10019")

# Create Pizzas
pizza1 = Pizza.create(name: "Cheese", ingredients: "Dough, Tomato Sauce, Cheese")
pizza2 = Pizza.create(name: "Pepperoni", ingredients: "Dough, Tomato Sauce, Cheese, Pepperoni")

# Create RestaurantPizzas
restaurant_pizza1= RestaurantPizza.create(price: 10, restaurant: restaurant1, pizza: pizza1)
restaurant_pizza2= RestaurantPizza.create(price: 12, restaurant: restaurant1, pizza: pizza2)
restaurant_pizza3= RestaurantPizza.create(price: 8, restaurant: restaurant2, pizza: pizza1)

puts "Seeding completed successfully."
