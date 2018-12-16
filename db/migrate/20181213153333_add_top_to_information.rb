class AddTopToInformation < ActiveRecord::Migration[5.2]
  def change
    add_column :information, :top, :boolean
  end
end
