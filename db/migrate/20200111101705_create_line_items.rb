class CreateLineItems < ActiveRecord::Migration[5.2]
  def change
    create_table :line_items do |t|
      t.integer :drop_id
      t.integer :recipient_id
      t.integer :donor_id
      t.integer :product_id
      t.integer :quantity

      t.timestamps
    end
  end
end
