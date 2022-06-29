class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.integer :hotel_id # hotel id
      t.integer :room_type_id # room type id
      t.boolean :is_available, default: true   # is the room available?

      t.timestamps
    end
  end
end
