class AddDefaultToTop < ActiveRecord::Migration[5.2]
  def up
    change_column :information, :top, :boolean, default: false
  end
  
  def down
    change_column :information, :top, :boolean, default: nil
  end
end
