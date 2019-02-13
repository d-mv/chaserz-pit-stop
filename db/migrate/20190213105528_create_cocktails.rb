class CreateCocktails < ActiveRecord::Migration[5.2]
  def change
    create_table :cocktails do |t|
      t.string :name, unique: true, null: false
      t.string :photo, unique: true

      t.timestamps
    end
  end
end
