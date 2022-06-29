class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :fullname # full name of the user
      t.string :username # username of the user
      t.string :email # email of the user
      t.string :password_digest # hased password  of the user
      t.string :gender # gender of the user
      t.integer :datetime # users date of birth
      t.integer :phone_number # users phone number
      t.string :address #users address


      t.timestamps 
    end
  end
end
