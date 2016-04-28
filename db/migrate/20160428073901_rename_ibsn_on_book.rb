class RenameIbsnOnBook < ActiveRecord::Migration
  def change
    rename_column :books, :ibsn, :isbn
  end
end
