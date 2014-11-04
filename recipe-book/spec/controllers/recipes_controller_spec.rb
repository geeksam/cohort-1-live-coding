require 'rails_helper'

describe RecipesController do
  render_views

  it "allows us to search for recipes by name" do
    tofu = Ingredient.create(name: "Tofu")
    stir_fry = Recipe.create(title: "Stir fry")
    stir_fry.add_ingredient(tofu, { unit: "cup", amount: 1 })

    post :search, ingredient_name: 'Tofu'
    
    expect( response.body ).to match /Stir fry/
  end
end
