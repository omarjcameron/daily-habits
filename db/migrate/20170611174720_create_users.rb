class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :phone_number, null: false
      t.string :email, null: false
      t.string :password_digest, null: false
      t.attachment :avatar
      t.string :access_token, index: true, unique: true

      t.timestamps null: false
    end
  end
end
