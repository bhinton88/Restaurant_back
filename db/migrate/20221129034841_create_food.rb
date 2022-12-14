class CreateFood < ActiveRecord::Migration[6.1]
  def change
    create_table :dishes do |t|
      t.string :dish_name
      t.integer :restaurant_id
      t.integer :price
      t.string :description
      t.string :image
      t.timestamp :created_at
    end
  end
end
