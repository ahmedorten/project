class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :gender
      t.string :password
      t.string :email
      t.string :username
      t.integer :user_type_id

      t.timestamps null: false
    end
  end
end
