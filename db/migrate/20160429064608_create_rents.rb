class CreateRents < ActiveRecord::Migration
  def change
    create_table :rents do |t|
      t.integer :books
      t.integer :totoal_price
      t.string :status

      t.timestamps null: false
    end
  end

  def change
    add_column :books, :returned, :boolean, default: false
  end
end
