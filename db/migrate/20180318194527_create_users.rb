class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :user_id
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :password_salt
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :crematory_name

      t.timestamps
    end
  end
end
