class FixRentTables < ActiveRecord::Migration
  def change
    rename_column :rents, :totoal_price, :total_price
    remove_column :rents, :books
  end
end
