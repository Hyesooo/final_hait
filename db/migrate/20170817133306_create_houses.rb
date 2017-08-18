class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      
      t.string :house_name
      t.integer :post_code
      t.string :address
      t.string :detail_address
      t.integer :phone_number
      t.string :x_location
      t.string :y_location
      
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
