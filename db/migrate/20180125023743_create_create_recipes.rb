class CreateCreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :create_recipes do |t|

      t.timestamps
    end
  end
end
