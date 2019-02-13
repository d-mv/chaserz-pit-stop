class CreateCocktails < ActiveRecord::Migration[5.2]
  def change
    create_table :cocktails do |t|
      t.text :name, unique: true, null: false
      t.text :photo, unique: true

      t.timestamps
    end
  end
end
