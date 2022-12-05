class CreatePizzas < ActiveRecord::Migration[7.0]
  def change
    create_table :pizzas do |t|
      t.string  :title
      t.text    :description
      t.decimal :price
      t.integer :size
      t.boolean :is_spicy
      t.boolean :is_veg
      t.boolean :is_best_offer
      t.string  :path_to_image
      
    
      t.timestamps
    end
    
  end
end
