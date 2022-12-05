class AddPizzas < ActiveRecord::Migration[7.0]
  def change
    Pizza.create ({
    :title => 'Летняя', 
    :description => 'Легкая и сытная пицца из свежих овощей с моцареллой',
    :price => 450,
    :size => 30,
    :is_spicy => false,
    :is_veg => true,
    :is_best_offer => false,
    :path_to_image => '/images/summer.jpg'
    })

    Pizza.create ({
    :title => 'Пепперони', 
    :description => 'Классика пиццы со вкуснейшей пепперони',
    :price => 550,
    :size => 30,
    :is_spicy => false,
    :is_veg => false,
    :is_best_offer => true,
    :path_to_image => '/images/pepperoni.jpg'
    })

    Pizza.create ({
    :title => '4 сыра', 
    :description => 'В состав входит: моцарелла, пармезан, горгонзолла, скаморца', 
    :price => 650, 
    :size => 30, 
    :is_spicy => false,
    :is_veg => true, 
    :is_best_offer => false, 
    :path_to_image => '/images/4cheeses.jpg'
    })
    
    Pizza.create ({
    :title => 'Милаццо', 
    :description => 'По лучшим итальянским традициям', 
    :price => 550, 
    :size => 30, 
    :is_spicy => false,
    :is_veg => false, 
    :is_best_offer => true, 
    :path_to_image => '/images/milaco.jpg'
    })
  end
end
