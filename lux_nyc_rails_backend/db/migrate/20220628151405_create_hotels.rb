class CreateHotels < ActiveRecord::Migration[7.0]
  def change
    create_table :hotels do |t|
      t.string :name # hotel name
      t.string :location # e.g. "New York, NY"
      t.string :description # description of the hotel
      t.string :amenities, array: true, default: []   # amenities of the hotel
      t.integer :rooms_available # number of rooms available
      t.float :rating # average rating of the hotel
      t.string :images, array: true, default: []  # images of the hotel
      t.timestamps
    end
  end
end
