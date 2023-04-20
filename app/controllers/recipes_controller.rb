class RecipesController < ApplicationController
  def index
    @recipes = current_user.recipes
    # @recipes = Recipe.all
  end

  def show
    # @recipe = Recipe.find(params[:id])
    @recipe = current_user.recipes.find(params[:id])
  end
end

# Create 8 recipes and assign them to the users
# Recipe.create(name: "Spaghetti Carbonara", preparation_time: "20 mins", cooking_time: "20 mins", description: "1. Cook spaghetti according to package directions. 2. Cook bacon in a large skillet until crisp. 3. In a bowl, whisk together eggs, Parmesan cheese, salt, and pepper. 4. Drain spaghetti and add it to the skillet with the bacon. 5. Remove from heat and stir in egg mixture. Serve immediately.", user_id: 1)
# Recipe.create(name: "Chicken Parmesan", preparation_time: "10 mins", cooking_time: "30 mins", description: "1. Preheat oven to 375°F. 2. Combine breadcrumbs, Parmesan cheese, and Italian seasoning in a shallow dish. 3. Dip chicken in egg, then coat in breadcrumb mixture. 4. Place chicken on a baking sheet and bake for 25-30 minutes, or until cooked through. 5. Serve with your favorite pasta sauce and spaghetti.", user_id: 2)
# Recipe.create(name: "Beef Stroganoff", preparation_time: "15 mins", cooking_time: "30 mins", description: "1. Cook egg noodles according to package directions. 2. In a large skillet, cook beef over medium heat until browned. 3. Add onion and mushrooms; cook until tender. 4. Stir in flour, salt, and pepper until blended. 5. Gradually add beef broth and bring to a boil; cook and stir for 2 minutes or until thickened. 6. Reduce heat; stir in sour cream until blended. 7. Drain noodles and serve with beef mixture.", user_id: 2)
# Recipe.create(name: "Vegetable Fried Rice", preparation_time: "10 mins", cooking_time: "20 mins", description: "1. Cook rice according to package directions. 2. Heat oil in a large skillet or wok over medium heat. 3. Add garlic, ginger, and vegetables; cook for 2-3 minutes. 4. Push vegetables to the side of the pan and add eggs to the other side. 5. Scramble eggs, then stir into the vegetables. 6. Add cooked rice, soy sauce, and sesame oil. 7. Stir-fry for 2-3 minutes or until heated through.", user_id: 2)
# Recipe.create(name: "Beef Tacos", preparation_time: "10 mins", cooking_time: "20 mins", description: "1. Heat oil in a large skillet over medium heat. 2. Add ground beef and cook until browned. 3. Add taco seasoning and water; bring to a boil. 4. Reduce heat and simmer for 5-7 minutes. 5. Serve beef mixture in taco shells with your favorite toppings.", user_id: 1)
# Recipe.create(name: "Creamy Tomato Soup", preparation_time: "10 mins", cooking_time: "25 mins", description: "1. Heat butter in a large pot over medium heat. 2. Add onion and garlic; cook until softened. 3. Add canned tomatoes, chicken broth, sugar, salt, and pepper. 4. Bring to a boil; reduce heat and simmer for 10 minutes.",user_id: 1)
