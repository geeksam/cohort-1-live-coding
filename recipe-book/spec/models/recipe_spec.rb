require 'rails_helper'

describe "Recipe" do
  specify "I can search for a recipe by its ingredients" do
    tofu = Ingredient.create(name: "Tofu")
    pb = Ingredient.create(name: "Peanut Butter") # TODO: drop this later
    stir_fry = Recipe.create(title: "Stir fry")
    stir_fry.add_ingredient(tofu, { unit: "cup", amount: 1 })
    pbj = Recipe.create(title: "PB&J") # TODO: drop this later

    search_results = Recipe.with_ingredient_named("Tofu")

    expect( search_results ).to include( stir_fry )
    expect( search_results ).to_not include( pbj )
  end
end
