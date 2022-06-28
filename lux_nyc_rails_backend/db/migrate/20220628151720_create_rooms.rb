class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.integer :hotel_id
      t.integer :room_type_id
      t.boolean :is_available

      t.timestamps
    end
  end
end
