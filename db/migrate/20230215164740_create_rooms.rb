class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.numeric :price
      t.integer :beds
      t.integer :bathrooms
      t.boolean :garage, default: false
      t.boolean :breackfast, default: true
      t.boolean :pets_welcome, default: false
      t.text :images
      t.references :rentals, null: false, foreign_key: true

      t.timestamps
    end
  end
end
