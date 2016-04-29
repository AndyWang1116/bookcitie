class RenameEditorToAuthorOnBook < ActiveRecord::Migration
  def change
    rename_column :books, :editor, :author
  end
end
