class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :duration
      t.string :difficulty
      t.text :method
      t.integer :serves
      t.text :description
      t.string :meal_type
      t.string :diet

      t.timestamps
    end
  end
end
