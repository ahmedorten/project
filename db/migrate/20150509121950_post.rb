class Post < ActiveRecord::Migration
  def change
  	 create_table :post do |t|
      t.string :name
      t.float :price
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
