class CreateWorkOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :work_orders do |t|
      t.datetime :time
      t.integer :duration
      t.float :price

      t.references :location, index: true, foreign_key: true
      t.references :technician, index: true, foreign_key: true

      t.timestamps
    end
  end
end
