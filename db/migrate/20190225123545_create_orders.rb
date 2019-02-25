class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :address
      t.integer :phone
      t.boolean :status

      t.timestamps
    end

    create_table :gears_orders do |t|
      t.belongs_to :gear, index: true
      t.belongs_to :order, index: true
      t.integer :line
    end
  end
end
