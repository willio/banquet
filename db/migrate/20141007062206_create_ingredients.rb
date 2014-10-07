class CreateIngredients < ActiveRecord::Migration
  def change
  	create_table :ingredients do |t|
  		t.string :name
  		t.float :price
  		t.integer :item_id

  		t.timestamp
  end
end
