class CreateWishlists < ActiveRecord::Migration[7.0]
  def change
    create_table :wishlists do |t|
      t.string :name, null: false
      t.string :path, null: false, unique: true
      t.references :user
      t.timestamps
    end

    create_table :wishes do |t|
      t.string :name, null: false
      t.string :sender_name
      t.text :description
      t.references :wishlist
      t.timestamps
    end
  end
end
