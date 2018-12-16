class RenameImportantIntoTop < ActiveRecord::Migration[5.2]
  def change
    rename_column :chronicle_items, :important, :top
  end
end
