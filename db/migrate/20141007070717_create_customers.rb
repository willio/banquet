class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.datetime :date
      t.string :status
    end
  end
end
