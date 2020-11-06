class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name, null: false
      t.integer :category_id, null: false
      t.integer :cooking_method_id, null: false
      t.integer :season_id, null: false
      t.text :foodstuff, null: false
      t.text :process, null: false

      t.timestamps
    end
  end
end
