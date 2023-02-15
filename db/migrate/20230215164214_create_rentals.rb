class CreateRentals < ActiveRecord::Migration[7.0]
  def change
    create_table :rentals do |t|
      t.text :adress
      t.date :check_in
      t.date :check_out
      t.integer :adults
      t.integer :kids
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
