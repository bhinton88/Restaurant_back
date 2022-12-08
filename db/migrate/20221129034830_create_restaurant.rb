class CreateRestaurant < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :food_type
      t.integer :phone_number
      t.string :website
      t.string :online_ordering
      t.string :image
      t.timestamp :created_at
    end
  end
end
