class CreateHotels < ActiveRecord::Migration[7.0]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :location
      t.string :amenities
      t.integer :room_count
      t.float :rating

      t.timestamps
    end
  end
end
