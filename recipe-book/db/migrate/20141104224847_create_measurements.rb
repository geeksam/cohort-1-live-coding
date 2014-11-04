class CreateMeasurements < ActiveRecord::Migration
  def change
    create_table :measurements do |t|
      t.string :unit
      t.integer :amount
      t.integer :recipe_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
