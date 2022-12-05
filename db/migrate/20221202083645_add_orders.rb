class AddOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :client_name
      t.string :client_phone_number
      t.string :client_adress
      t.integer :total_price
      t.string :order

      t.timestamps
    end
    
  end
end
