class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :chef
      t.string :ingredients
      t.string :directions
      t.string :string
      t.string :image_url
      t.integer :prep_time

      t.timestamps
    end
  end
end


Recipe.new(title: "Cookies", chef: "cookie monster", ingredients: "flour, milk, eggs, sugar, butter",  directions: "throw out ingredients and use tollhouse pre-made cokies")