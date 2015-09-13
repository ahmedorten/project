class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.float :price
      t.string :status
      t.string :description
      t.integer :category_id 
      t.integer :user_id

      t.timestamps null: false
    end
    add_index("books", "category_id")
    add_index("books", "user_id")
  end
end
