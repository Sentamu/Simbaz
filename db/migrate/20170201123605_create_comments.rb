class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :listing_id
      t.text :body

      t.timestamps null: false
    end
    add_index :comments, :listing_id
  end
end
