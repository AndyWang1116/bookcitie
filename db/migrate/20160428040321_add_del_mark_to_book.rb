class AddDelMarkToBook < ActiveRecord::Migration
  def change
    add_column :books, :del_mark, :boolean, default: false
  end
end
