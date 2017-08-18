class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      
      t.integer :price
      t.integer :room_number
      t.integer :floor
      t.integer :room_statement
      t.string :breakfast
      t.string :lunch
      t.string :dinner
      t.integer :cesco
      t.string :air_con
      t.string :fan
      t.float :toilet
      t.float :washing
      t.integer :woman_only
      
      
      t.integer :house_id

      t.timestamps null: false
    end
  end
end
