# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(name: "Johnny Doey")

Recipe.create(
  name: "Classic Spaghetti Bolognese",
  preparation_time: "15 minutes",
  cooking_time: "1 hour",
  description: "A delicious and hearty pasta dish with rich tomato sauce and ground beef.",
  user_id: 1
)

# Create Recipe 2
Recipe.create(
  name: "Lemon Garlic Roasted Chicken",
  preparation_time: "10 minutes",
  cooking_time: "45 minutes",
  description: "Juicy and flavorful roasted chicken with a tangy lemon and garlic marinade.",
  user_id: 1
  public: true,
)

# Create Recipe 3
Recipe.create(
  name: "Vegetable Stir-Fry",
  preparation_time: "20 minutes",
  cooking_time: "15 minutes",
  description: "A quick and healthy stir-fry packed with colorful vegetables and savory sauce.",
  user_id: 1
  public: true,
)

# Create Recipe 4
Recipe.create(
  name: "Chocolate Chip Cookies",
  preparation_time: "15 minutes",
  cooking_time: "12 minutes",
  description: "Classic homemade chocolate chip cookies with a soft and chewy texture.",
  user_id: 1
  public: true,
)