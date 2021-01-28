class CreateWarehouseRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :warehouse_records do |t|
      t.integer :cantidad
      t.integer :user_id
      t.references :suppliers, null: false, foreign_key: true
      t.references :products, null: false, foreign_key: true

      t.timestamps
    end
  end
end
