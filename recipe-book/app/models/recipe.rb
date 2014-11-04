class Recipe < ActiveRecord::Base
  has_many :measurements
  has_many :ingredients, through: :measurements

  def self.with_ingredient_named(ingredient_name)
    Recipe.joins({:measurements => :ingredient})\
      .where("'ingredients'.'name' = ?", ingredient_name)
  end

  def add_ingredient(ingredient, measurement_attributes)
    measurements.create(measurement_attributes) do |measurement|
      measurement.ingredient = ingredient
    end
  end
end
