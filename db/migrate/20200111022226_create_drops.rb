class CreateDrops < ActiveRecord::Migration[5.2]
  def change
    create_table :drops do |t|
      t.date :collection_date
      t.text :collection_location
      t.date :delivery_date
      t.text :delivery_location
      t.integer :owner_id

      t.timestamps
    end
  end
end
