class CreateRoomTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :room_types do |t|
      t.string :type  # type of room
      t.integer :sleeps # how many people can sleep in the room
      t.float :base_rate # base rate of the room
      t.integer :hotel_id # hotel id
      t.float :rate # todays rate of the room
      t.integer :total_inventory # total number of rooms of this type
      t.integer :total_reserved  # total number of rooms reserved of this type
      t.string :description # description of the room type
      t.string :amenities, array: true, default: []   # amenities of the room
      t.timestamps
    end
  end
end
