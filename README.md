##Pizza Restaurants API
This is a Rails API backend for tracking pizza restaurants. It allows you to manage restaurants, pizzas, and their associations.

###Requirements
Ruby 
Rails 
SQLite3
###Getting Started
Clone the repository:

shell
git clone git@github.com:Kipkemden/Phase-4-Week-1-Code-Challenge.git
Change into the project directory:

shell
cd pizza_restaurants_api
Install dependencies:

shell
bundle install
Create the database and run the migrations:

shell
rails db:create
rails db:migrate
(Optional) Seed the database with sample data:

shell
rails db:seed
Start the Rails server:

shell
rails server
The API will be accessible at http://localhost:3000.

###API Endpoints
The following endpoints are available:

GET /restaurants: Retrieves a collection of all restaurants.
GET /restaurants/:id: Retrieves a specific restaurant along with its associated pizzas.
DELETE /restaurants/:id: Deletes a specific restaurant and its associated RestaurantPizza records.
GET /pizzas: Retrieves a collection of all pizzas.
POST /restaurant_pizzas: Creates a new RestaurantPizza record associated with an existing Pizza and Restaurant.
###JSON Response Formats
The API returns JSON data in the following formats:

Restaurant:

json
{
  "id": 1,
  "name": "Sottocasa NYC",
  "address": "298 Atlantic Ave, Brooklyn, NY 11201"
}
Pizza:

json
{
  "id": 1,
  "name": "Cheese",
  "ingredients": "Dough, Tomato Sauce, Cheese"
}
Restaurant with Pizzas:

json
{
  "id": 1,
  "name": "Sottocasa NYC",
  "address": "298 Atlantic Ave, Brooklyn, NY 11201",
  "pizzas": [
    {
      "id": 1,
      "name": "Cheese",
      "ingredients": "Dough, Tomato Sauce, Cheese"
    },
    {
      "id": 2,
      "name": "Pepperoni",
      "ingredients": "Dough, Tomato Sauce, Cheese, Pepperoni"
    }
  ]
}
Restaurant Pizza:

json
{
  "id": 1,
  "price": 5,
  "restaurant_id": 1,
  "pizza_id": 1
}
###Validations
The RestaurantPizza model has the following validation:

price must be between 1 and 30.
###Contributing

Fork the repository.
Create your feature branch (git checkout -b feature/my-feature).
Commit your changes (git commit -am 'Add my feature').
Push to the branch (git push origin feature/my-feature).
Create a new Pull Request.
License
This project is licensed under the MIT License.