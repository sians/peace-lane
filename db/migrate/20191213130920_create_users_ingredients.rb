class CreateUsersIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :users_ingredients do |t|
      t.references :ingredient, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
