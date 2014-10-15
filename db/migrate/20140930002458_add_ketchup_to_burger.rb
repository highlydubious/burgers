class AddKetchupToBurger < ActiveRecord::Migration
  def change
    add_column :burgers, :ketchup, :boolean
  end
end
