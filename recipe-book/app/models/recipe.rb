class Recipe < ActiveRecord::Base
  has_many :measurements
  has_many :ingredients, through: :measurements

  def self.with_ingredient_named(ingredient_name)
    all
  end

  def add_ingredient(ingredient, attributes)
  end
end
