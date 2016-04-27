class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.integer :quantity
      t.integer :price
      t.integer :ibsn
      t.date :published_date
      t.string :editor
      t.integer :views_count, default: 0

      t.timestamps null: false
    end
  end
end
