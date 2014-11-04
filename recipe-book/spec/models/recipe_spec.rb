require 'rails_helper'

describe "Recipe" do
  specify "I can search for a recipe by its ingredients" do
    tofu = Ingredient.create(name: "Tofu")
    stir_fry = Recipe.create(title: "Stir fry")
    stir_fry.add_ingredient(tofu, { unit: "cup", amount: 1 })

    search_results = Recipe.with_ingredient_named("Tofu")

    expect( search_results ).to include( stir_fry )
  end
end
