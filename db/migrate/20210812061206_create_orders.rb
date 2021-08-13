class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :control_number
      t.string :state

      t.timestamps
    end
  end
end
