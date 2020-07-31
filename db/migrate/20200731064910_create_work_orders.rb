class CreateWorkOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :work_orders do |t|
      t.integer :technician_id
      t.integer :location_id
      t.datetime :time
      t.time :duration
      t.float :price

      t.references :location, index: true, foreign_key: true
      t.references :technician, index: true, foreign_key: true

      t.timestamps
    end

    add_index :work_orders, :technician_id
    add_index :work_orders, :location_id
  end
end
