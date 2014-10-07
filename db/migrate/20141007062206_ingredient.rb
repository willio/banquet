class CreateIngredients < ActiveRecord::Migration
  def change
  	create_table :ingredient |t|
  		t.string :name
  		t.float :price
  		t.integer :item_id

  		t.timestamp
  end
end
