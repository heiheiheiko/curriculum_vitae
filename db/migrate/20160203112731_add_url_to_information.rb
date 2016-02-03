class AddUrlToInformation < ActiveRecord::Migration
  def change
    add_column :information, :url, :string
  end
end
