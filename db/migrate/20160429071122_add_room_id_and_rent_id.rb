class AddRoomIdAndRentId < ActiveRecord::Migration
  def change
    create_table :rents do |t|
      t.integer :books
      t.integer :totoal_price
      t.string :status

      t.timestamps null: false
    end
    add_column :books, :rent_id, :integer
    add_column :rents, :user_id, :integer
  end
end
