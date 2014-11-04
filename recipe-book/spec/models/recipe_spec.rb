require 'rails_helper'

describe "Recipe" do
  it "can create a recipe that has a title and description" do
    recipe = Recipe.new(
               name: "New Recipe", 
               description: "Description goes here",
             )

    expect(recipe.title).to eq "New Recipe by Kerri"
    expect(recipe.description).to eq "Description goes here"
  end
end
