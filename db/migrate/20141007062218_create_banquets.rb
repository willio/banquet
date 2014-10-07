class CreateBanquets < ActiveRecord::Migration
  def change
    create_table :banquets do |t|
      t.string :name
      t.string :date
      t.string :status
    end
  end
end
