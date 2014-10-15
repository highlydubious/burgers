class CreateBurgers < ActiveRecord::Migration
  def change
    create_table :burgers do |t|
      t.string :bun
      t.string :wellness
      t.boolean :mustard
      t.boolean :pickles

      t.timestamps
    end
  end
end
