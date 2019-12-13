class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :description
      t.string :thumb
      t.boolean :pantry
      t.boolean :fresh

      t.timestamps
    end
  end
end
