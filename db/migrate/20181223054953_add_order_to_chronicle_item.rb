class AddOrderToChronicleItem < ActiveRecord::Migration[5.2]
  def change
    add_column :chronicle_items, :order, :integer
  end
end
